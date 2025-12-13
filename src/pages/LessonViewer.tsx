import { useEffect, useState } from "react";
import { useAuth } from "@/contexts/AuthContext";
import { useLanguage } from "@/contexts/LanguageContext";
import { useNavigate, useParams } from "react-router-dom";
import { useToast } from "@/hooks/use-toast";
import { supabase } from "@/integrations/supabase/client";
import {
  ArrowLeft,
  ChevronRight,
  Video,
  FileText,
  Type,
  Code,
  FolderOpen,
} from "lucide-react";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";

interface Lesson {
  id: string;
  course_id: string;
  name: string;
  type: "subchapter" | "video_audio" | "pdf" | "text" | "iframe";
  content_url: string | null;
  content_data: any;
  order_index: number;
  status: "draft" | "published";
}

interface Course {
  id: string;
  name: string;
}

export default function LessonViewer() {
  const { courseId, lessonId } = useParams<{ courseId: string; lessonId: string }>();
  const { user, loading, companyId } = useAuth();
  const { t } = useLanguage();
  const navigate = useNavigate();
  const { toast } = useToast();

  const [course, setCourse] = useState<Course | null>(null);
  const [lesson, setLesson] = useState<Lesson | null>(null);
  const [isLoading, setIsLoading] = useState(true);

  useEffect(() => {
    if (!loading && !user) {
      navigate("/auth");
    }
    if (user && companyId && courseId && lessonId) {
      fetchCourse();
      fetchLesson();
    }
  }, [user, loading, navigate, companyId, courseId, lessonId]);

  const fetchCourse = async () => {
    if (!courseId || !companyId) return;

    try {
      const { data, error } = await supabase
        .from("courses")
        .select("id, name")
        .eq("id", courseId)
        .eq("company_id", companyId)
        .single();

      if (error) throw error;
      setCourse(data);
    } catch (err: any) {
      toast({
        title: "Error loading course",
        description: err.message,
        variant: "destructive",
      });
      navigate("/training");
    }
  };

  const fetchLesson = async () => {
    if (!lessonId || !courseId) return;

    try {
      const { data, error } = await supabase
        .from("course_lessons")
        .select("*")
        .eq("id", lessonId)
        .eq("course_id", courseId)
        .single();

      if (error) throw error;
      setLesson(data);
    } catch (err: any) {
      toast({
        title: "Error loading lesson",
        description: err.message,
        variant: "destructive",
      });
      navigate("/training");
    } finally {
      setIsLoading(false);
    }
  };

  const getTypeIcon = (type: string) => {
    switch (type) {
      case "video_audio":
        return <Video className="w-6 h-6" />;
      case "pdf":
        return <FileText className="w-6 h-6" />;
      case "text":
        return <Type className="w-6 h-6" />;
      case "iframe":
        return <Code className="w-6 h-6" />;
      case "subchapter":
        return <FolderOpen className="w-6 h-6" />;
      default:
        return <FileText className="w-6 h-6" />;
    }
  };

  const getTypeLabel = (type: string) => {
    switch (type) {
      case "video_audio":
        return "Video/Audio";
      case "pdf":
        return "PDF";
      case "text":
        return "Text";
      case "iframe":
        return "iFrame";
      case "subchapter":
        return "Subchapter";
      default:
        return type;
    }
  };

  if (loading || isLoading) {
    return (
      <div className="min-h-screen bg-background flex items-center justify-center">
        <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-primary"></div>
      </div>
    );
  }

  if (!lesson) {
    return (
      <div className="min-h-screen bg-background flex items-center justify-center">
        <p className="text-muted-foreground">Lesson not found</p>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gradient-to-br from-background via-background to-primary/5">
      {/* Header with Breadcrumb */}
      <header className="border-b bg-card/50 backdrop-blur-sm sticky top-0 z-10">
        <div className="container mx-auto px-4 py-4">
          <div className="flex items-center gap-3">
            <Button
              variant="ghost"
              size="icon"
              onClick={() => navigate("/training")}
            >
              <ArrowLeft className="w-5 h-5" />
            </Button>
            <div className="flex items-center gap-2 text-sm text-muted-foreground">
              <span
                className="hover:text-foreground cursor-pointer"
                onClick={() => navigate("/training")}
              >
                {course?.name || "Course"}
              </span>
              <ChevronRight className="w-4 h-4" />
              <span className="text-foreground font-medium">
                {lesson.name}
              </span>
            </div>
          </div>
        </div>
      </header>

      <main className="container mx-auto px-4 py-8">
        {/* Lesson Info */}
        <Card className="mb-6">
          <CardHeader>
            <div className="flex items-center gap-4">
              <div className="w-14 h-14 rounded-xl bg-gradient-to-br from-purple-500 to-pink-600 flex items-center justify-center text-white">
                {getTypeIcon(lesson.type)}
              </div>
              <div>
                <CardTitle className="text-2xl">{lesson.name}</CardTitle>
                <div className="flex items-center gap-2 mt-2">
                  <Badge variant="outline">{getTypeLabel(lesson.type)}</Badge>
                  <Badge variant={lesson.status === "published" ? "default" : "secondary"}>
                    {lesson.status === "published" ? "Published" : "Draft"}
                  </Badge>
                </div>
              </div>
            </div>
          </CardHeader>
          {lesson.content_data?.description && (
            <CardContent>
              <p className="text-muted-foreground">{lesson.content_data.description}</p>
            </CardContent>
          )}
        </Card>

        {/* Tags */}
        {lesson.content_data?.tags && Array.isArray(lesson.content_data.tags) && lesson.content_data.tags.length > 0 && (
          <Card className="mb-6">
            <CardHeader>
              <CardTitle className="text-lg">Tags</CardTitle>
            </CardHeader>
            <CardContent>
              <div className="flex flex-wrap gap-2">
                {lesson.content_data.tags.map((tag: string, index: number) => (
                  <Badge key={index} variant="secondary" className="px-3 py-1">
                    {tag}
                  </Badge>
                ))}
              </div>
            </CardContent>
          </Card>
        )}


        {/* Content Display */}
        <Card>
          <CardHeader>
            <CardTitle className="text-lg">Content</CardTitle>
          </CardHeader>
          <CardContent>
            {/* Video/Audio Content */}
            {lesson.type === "video_audio" && lesson.content_url && (
              <div className="aspect-video bg-black rounded-lg overflow-hidden">
                <video
                  src={lesson.content_url}
                  controls
                  className="w-full h-full"
                >
                  Your browser does not support the video tag.
                </video>
              </div>
            )}

            {/* PDF Content */}
            {lesson.type === "pdf" && lesson.content_url && (
              <div className="flex flex-col items-center justify-center py-12 px-6">
                {/* PDF Icon and File Info */}
                <div className="w-24 h-24 rounded-2xl bg-gradient-to-br from-red-500 to-red-600 flex items-center justify-center text-white mb-6 shadow-lg">
                  <FileText className="w-12 h-12" />
                </div>
                
                <h3 className="text-xl font-semibold mb-2">
                  {lesson.content_url.split('/').pop()?.replace(/%20/g, ' ') || 'Document.pdf'}
                </h3>
                
                <p className="text-muted-foreground text-center mb-8 max-w-md">
                  This lesson contains a PDF document. Click the button below to view or download the file.
                </p>
                
                {/* Action Buttons */}
                <div className="flex flex-col sm:flex-row gap-4">
                  <Button
                    size="lg"
                    className="min-w-[200px]"
                    onClick={() => window.open(lesson.content_url!, '_blank')}
                  >
                    <FileText className="w-5 h-5 mr-2" />
                    View PDF
                  </Button>
                  <Button
                    variant="outline"
                    size="lg"
                    className="min-w-[200px]"
                    asChild
                  >
                    <a href={lesson.content_url} download target="_blank" rel="noopener noreferrer">
                      Download PDF
                    </a>
                  </Button>
                </div>
                
                {/* Alternative: Try embedded viewer */}
                <div className="mt-8 w-full">
                  <p className="text-sm text-muted-foreground text-center mb-4">
                    Or try the embedded preview below:
                  </p>
                  <div className="w-full bg-white rounded-lg overflow-hidden border" style={{ height: '60vh', minHeight: '400px' }}>
                    <iframe
                      src={lesson.content_url}
                      className="w-full h-full"
                      title="PDF Preview"
                    />
                  </div>
                </div>
              </div>
            )}

            {/* Text Content */}
            {lesson.type === "text" && lesson.content_data?.text_content && (
              <div className="prose prose-sm max-w-none">
                <p className="whitespace-pre-wrap">{lesson.content_data.text_content}</p>
              </div>
            )}

            {/* iFrame Content */}
            {lesson.type === "iframe" && lesson.content_url && (
              <div className="aspect-video bg-muted rounded-lg overflow-hidden">
                <iframe
                  src={lesson.content_url}
                  className="w-full h-full"
                  title="Embedded Content"
                  allowFullScreen
                />
              </div>
            )}

            {/* No content available */}
            {!lesson.content_url && !lesson.content_data?.text_content && (
              <div className="text-center py-12 text-muted-foreground">
                <FileText className="w-16 h-16 mx-auto mb-4 opacity-20" />
                <p>No content available for this lesson.</p>
              </div>
            )}
          </CardContent>
        </Card>

        {/* Back Button */}
        <div className="flex justify-start mt-6">
          <Button variant="outline" onClick={() => navigate("/training")}>
            <ArrowLeft className="w-4 h-4 mr-2" />
            Back to Course
          </Button>
        </div>
      </main>
    </div>
  );
}
