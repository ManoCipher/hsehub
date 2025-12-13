import { useState } from "react";
import { MoreVertical, Edit, Copy, Trash2, Maximize2, Download, GripVertical } from "lucide-react";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import {
  PieChart as RechartsPie,
  Pie,
  Cell,
  BarChart,
  Bar,
  LineChart,
  Line,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  ResponsiveContainer,
  Legend,
} from "recharts";
import { ReportConfig } from "./ReportBuilder";

interface ReportWidgetProps {
  config: ReportConfig;
  data?: any[];
  onEdit: (config: ReportConfig) => void;
  onDuplicate: (config: ReportConfig) => void;
  onDelete: (id: string) => void;
  onExport: (config: ReportConfig) => void;
}

const COLORS = ['#0088FE', '#00C49F', '#FFBB28', '#FF8042', '#8884D8', '#82ca9d'];

export default function ReportWidget({
  config,
  data = [],
  onEdit,
  onDuplicate,
  onDelete,
  onExport,
}: ReportWidgetProps) {
  const [isFullscreen, setIsFullscreen] = useState(false);

  // Generate sample/mock data if none provided
  const chartData = data.length > 0 ? data : [
    { name: 'Category A', value: 12 },
    { name: 'Category B', value: 19 },
    { name: 'Category C', value: 8 },
    { name: 'Category D', value: 15 },
    { name: 'Category E', value: 6 },
  ];

  const renderChart = () => {
    const height = isFullscreen ? 500 : 250;

    switch (config.chartType) {
      case 'pie':
        return (
          <ResponsiveContainer width="100%" height={height}>
            <RechartsPie>
              <Pie
                data={chartData}
                cx="50%"
                cy="50%"
                labelLine={false}
                label={({ name, value }) => `${name}: ${value}`}
                outerRadius={isFullscreen ? 180 : 80}
                fill="#8884d8"
                dataKey="value"
              >
                {chartData.map((entry, index) => (
                  <Cell key={`cell-${index}`} fill={COLORS[index % COLORS.length]} />
                ))}
              </Pie>
              <Tooltip />
              <Legend />
            </RechartsPie>
          </ResponsiveContainer>
        );
      
      case 'bar':
        return (
          <ResponsiveContainer width="100%" height={height}>
            <BarChart data={chartData}>
              <CartesianGrid strokeDasharray="3 3" />
              <XAxis dataKey="name" />
              <YAxis />
              <Tooltip />
              <Legend />
              <Bar dataKey="value" fill="#0088FE" />
            </BarChart>
          </ResponsiveContainer>
        );
      
      case 'line':
        return (
          <ResponsiveContainer width="100%" height={height}>
            <LineChart data={chartData}>
              <CartesianGrid strokeDasharray="3 3" />
              <XAxis dataKey="name" />
              <YAxis />
              <Tooltip />
              <Legend />
              <Line type="monotone" dataKey="value" stroke="#8884d8" strokeWidth={2} />
            </LineChart>
          </ResponsiveContainer>
        );
    }
  };

  const toggleFullscreen = () => {
    setIsFullscreen(!isFullscreen);
  };

  if (isFullscreen) {
    return (
      <div className="fixed inset-0 bg-white z-50 p-6">
        <div className="flex items-center justify-between mb-6">
          <h2 className="text-2xl font-bold">{config.title}</h2>
          <div className="flex gap-2">
            <Button variant="outline" size="sm" onClick={() => onExport(config)}>
              <Download className="w-4 h-4 mr-2" />
              Export
            </Button>
            <Button variant="outline" size="sm" onClick={toggleFullscreen}>
              Close Fullscreen
            </Button>
          </div>
        </div>
        <div className="h-[calc(100vh-120px)]">
          {renderChart()}
        </div>
      </div>
    );
  }

  return (
    <Card className="dashboard-grid-card hover:shadow-lg transition-shadow h-full flex flex-col">
      <div className="drag-handle border-b cursor-move hover:bg-muted transition-colors p-2 flex items-center justify-center">
        <GripVertical className="w-4 h-4 text-muted-foreground" />
      </div>
      <CardHeader className="pb-3 flex-shrink-0">
        <div className="flex items-start justify-between">
          <div>
            <CardTitle className="text-base">{config.title}</CardTitle>
            <p className="text-xs text-muted-foreground mt-1">
              {config.groupBy.charAt(0).toUpperCase() + config.groupBy.slice(1)} •{" "}
              {config.dateRange.type.replace(/_/g, ' ')}
            </p>
          </div>
          <Button
            variant="ghost"
            size="icon"
            className="h-8 w-8 text-muted-foreground hover:text-destructive"
            onClick={() => onDelete(config.id)}
            title="Delete report"
          >
            <Trash2 className="w-4 h-4" />
          </Button>
        </div>
      </CardHeader>
      <CardContent className="flex-1 flex flex-col">
        {renderChart()}
        <div className="mt-3 text-xs text-muted-foreground">
          Total: {chartData.reduce((sum, d) => sum + d.value, 0)} items
        </div>
      </CardContent>
    </Card>
  );
}
