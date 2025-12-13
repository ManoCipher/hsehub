-- Comprehensive German translation update script
-- This script updates questions by matching on subsection_id from iso_criteria_subsections
-- Run this in Supabase SQL Editor

-- First, let's update all ISO 14001 questions with German translations
-- We'll use a CTE to join questions with their subsections and update based on position

-- Step 1: Update Section 1.1 questions
WITH s1_1 AS (
    SELECT q.id, q.question_text, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '1.1'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s1_1 WHERE rn = 1) THEN 'Welche internen Faktoren (Struktur, Kultur, Technologien, Ressourcen) beeinflussen das UMS?'
    WHEN id = (SELECT id FROM s1_1 WHERE rn = 2) THEN 'Welche externen Faktoren (Gesetze, Markt, gesellschaftliche Erwartungen) beeinflussen das UMS?'
    WHEN id = (SELECT id FROM s1_1 WHERE rn = 3) THEN 'Wie wird der Klimawandel als externer Faktor berücksichtigt (Risiken + Chancen)?'
    WHEN id = (SELECT id FROM s1_1 WHERE rn = 4) THEN 'Werden diese Themen regelmäßig überwacht und aktualisiert (z.B. SWOT, Risikoanalyse)?'
    WHEN id = (SELECT id FROM s1_1 WHERE rn = 5) THEN 'Werden alle klimarelevanten Prozesse berücksichtigt (z.B. Rohstoffe, Lieferkette)?'
    WHEN id = (SELECT id FROM s1_1 WHERE rn = 6) THEN 'Welche regionalen Entsorgungsinfrastrukturen beeinflussen das UMS?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s1_1);

-- Step 2: Update Section 1.2 questions  
WITH s1_2 AS (
    SELECT q.id, q.question_text, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '1.2'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s1_2 WHERE rn = 1) THEN 'Wie werden die Auswirkungen des Klimawandels in die Umwelt- und Klimastrategie integriert?'
    WHEN id = (SELECT id FROM s1_2 WHERE rn = 2) THEN 'Gibt es Prozesse zur Ableitung von Maßnahmen aus Chancen und Risiken?'
    WHEN id = (SELECT id FROM s1_2 WHERE rn = 3) THEN 'Sind diese Faktoren dokumentiert und werden regelmäßig überprüft?'
    WHEN id = (SELECT id FROM s1_2 WHERE rn = 4) THEN 'Wie fließen Klimafaktoren in strategische Entscheidungen ein?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s1_2);

-- Step 3: Update Section 1.3 questions
WITH s1_3 AS (
    SELECT q.id, q.question_text, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '1.3'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s1_3 WHERE rn = 1) THEN 'Welche internen und externen Stakeholder sind relevant?'
    WHEN id = (SELECT id FROM s1_3 WHERE rn = 2) THEN 'Welche Umwelt- und Klimaanforderungen haben sie?'
    WHEN id = (SELECT id FROM s1_3 WHERE rn = 3) THEN 'Wie werden Klimaschutzanforderungen (z.B. SBT, CSRD) erfasst und priorisiert?'
    WHEN id = (SELECT id FROM s1_3 WHERE rn = 4) THEN 'Gibt es Routinen zur Identifizierung geänderter Anforderungen (Umfragen, Bewertungen)?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s1_3);

-- Step 4: Update Section 1.4 questions
WITH s1_4 AS (
    SELECT q.id, q.question_text, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '1.4'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s1_4 WHERE rn = 1) THEN 'Welche Standorte, Aktivitäten, Produkte sind im UMS enthalten?'
    WHEN id = (SELECT id FROM s1_4 WHERE rn = 2) THEN 'Sind alle klimarelevanten Prozesse einbezogen?'
    WHEN id = (SELECT id FROM s1_4 WHERE rn = 3) THEN 'Sind Ausschlüsse begründet und dokumentiert?'
    WHEN id = (SELECT id FROM s1_4 WHERE rn = 4) THEN 'Wird der Anwendungsbereich intern und extern kommuniziert?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s1_4);

-- Step 5: Update Section 1.5 questions
WITH s1_5 AS (
    SELECT q.id, q.question_text, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '1.5'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s1_5 WHERE rn = 1) THEN 'Wie werden Überschneidungen mit ISO 9001/50001 etc. gehandhabt?'
    WHEN id = (SELECT id FROM s1_5 WHERE rn = 2) THEN 'Sind Ausnahmen transparent begründet?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s1_5);

-- Step 6: Update Section 1.6 questions
WITH s1_6 AS (
    SELECT q.id, q.question_text, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '1.6'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s1_6 WHERE rn = 1) THEN 'Existiert eine Prozesslandschaft einschließlich umwelt- und klimarelevanter Prozesse?'
    WHEN id = (SELECT id FROM s1_6 WHERE rn = 2) THEN 'Wer sind die Prozessverantwortlichen?'
    WHEN id = (SELECT id FROM s1_6 WHERE rn = 3) THEN 'Gibt es KPIs für ökologische Aspekte (CO₂, Abfall, Energie)?'
    WHEN id = (SELECT id FROM s1_6 WHERE rn = 4) THEN 'Sind Schnittstellen zwischen Prozessen identifiziert und optimiert?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s1_6);

-- Section 2
WITH s2_1 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '2.1'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s2_1 WHERE rn = 1) THEN 'Wie zeigt die oberste Leitung ihre Unterstützung für das UMS und den Klimaschutz?'
    WHEN id = (SELECT id FROM s2_1 WHERE rn = 2) THEN 'Gibt es verabschiedete Klima- und Umweltziele?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s2_1);

WITH s2_2 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '2.2'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s2_2 WHERE rn = 1) THEN 'Enthält die Umweltpolitik Aussagen zum Klimaschutz und zur Emissionsreduzierung?'
    WHEN id = (SELECT id FROM s2_2 WHERE rn = 2) THEN 'Ist sie mit der strategischen Ausrichtung verknüpft?'
    WHEN id = (SELECT id FROM s2_2 WHERE rn = 3) THEN 'Enthält sie eine Verpflichtung zur kontinuierlichen Verbesserung und Erfüllung von Anforderungen?'
    WHEN id = (SELECT id FROM s2_2 WHERE rn = 4) THEN 'Wird sie regelmäßig aktualisiert?'
    WHEN id = (SELECT id FROM s2_2 WHERE rn = 5) THEN 'Enthält sie Verpflichtungen zu Abfallvermeidung, Recycling, nachhaltiger Beschaffung?'
    WHEN id = (SELECT id FROM s2_2 WHERE rn = 6) THEN 'Unterstützt die Leitung aktiv Klimaschutzprojekte?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s2_2);

WITH s2_3 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '2.3'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s2_3 WHERE rn = 1) THEN 'Sind Umweltrollen klar definiert?'
    WHEN id = (SELECT id FROM s2_3 WHERE rn = 2) THEN 'Haben die Verantwortlichen die Befugnis, Klimaschutzmaßnahmen umzusetzen?'
    WHEN id = (SELECT id FROM s2_3 WHERE rn = 3) THEN 'Gibt es Vertretungsregelungen?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s2_3);

WITH s2_4 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '2.4'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s2_4 WHERE rn = 1) THEN 'Wie werden Mitarbeiter eingebunden (Schulungen, Workshops, Ideenmanagement)?'
    WHEN id = (SELECT id FROM s2_4 WHERE rn = 2) THEN 'Welche Kommunikationskanäle existieren?'
    WHEN id = (SELECT id FROM s2_4 WHERE rn = 3) THEN 'Gibt es Feedbackmöglichkeiten?'
    WHEN id = (SELECT id FROM s2_4 WHERE rn = 4) THEN 'Wie werden Informationen zu Umweltthemen kommuniziert?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s2_4);

-- Section 3
WITH s3_1 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '3.1'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s3_1 WHERE rn = 1) THEN 'Werden Umwelt- und Klimarisiken identifiziert und bewertet?'
    WHEN id = (SELECT id FROM s3_1 WHERE rn = 2) THEN 'Wie werden Chancen genutzt (Förderprogramme, grüne Märkte)?'
    WHEN id = (SELECT id FROM s3_1 WHERE rn = 3) THEN 'Gibt es eine Priorisierung der Maßnahmen?'
    WHEN id = (SELECT id FROM s3_1 WHERE rn = 4) THEN 'Gibt es Verantwortlichkeiten und Zeitpläne?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s3_1);

WITH s3_2 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '3.2'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s3_2 WHERE rn = 1) THEN 'Existiert ein Rechtskataster für Umwelt/Klima?'
    WHEN id = (SELECT id FROM s3_2 WHERE rn = 2) THEN 'Wie werden Rechtsänderungen identifiziert und umgesetzt?'
    WHEN id = (SELECT id FROM s3_2 WHERE rn = 3) THEN 'Gibt es freiwillige Klimaziele (SBT, Net-Zero)?'
    WHEN id = (SELECT id FROM s3_2 WHERE rn = 4) THEN 'Sind Verpflichtungen dokumentiert und werden verfolgt?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s3_2);

WITH s3_3 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '3.3'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s3_3 WHERE rn = 1) THEN 'Sind die Ziele SMART formuliert?'
    WHEN id = (SELECT id FROM s3_3 WHERE rn = 2) THEN 'Welche KPIs werden verwendet (CO₂, Energie, Abfall)?'
    WHEN id = (SELECT id FROM s3_3 WHERE rn = 3) THEN 'Sind Maßnahmen, Ressourcen, Verantwortliche definiert?'
    WHEN id = (SELECT id FROM s3_3 WHERE rn = 4) THEN 'Wird über den Fortschritt berichtet?'
    WHEN id = (SELECT id FROM s3_3 WHERE rn = 5) THEN 'Gibt es konkrete Emissionsreduktions- und Abfallziele?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s3_3);

-- Verify update worked
SELECT 
    sub.subsection_number,
    q.question_text,
    q.question_text_en
FROM iso_criteria_questions q
JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
JOIN iso_criteria_sections sec ON sub.section_id = sec.id
WHERE sec.iso_code = 'ISO_14001' AND sub.subsection_number = '1.1'
ORDER BY q.sort_order, q.id
LIMIT 10;
