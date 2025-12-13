-- Complete German translations for ISO 9001
-- Run this in Supabase SQL Editor

-- Section 1: Kontext der Organisation
WITH s1_1 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '1.1'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s1_1 WHERE rn = 1) THEN 'Welche Organisationsstrukturen (Abteilungen, Führungsebenen, Ressourcen) beeinflussen das Qualitätsmanagement?'
    WHEN id = (SELECT id FROM s1_1 WHERE rn = 2) THEN 'Wie wird die Unternehmensstrategie in Bezug auf Qualität berücksichtigt?'
    WHEN id = (SELECT id FROM s1_1 WHERE rn = 3) THEN 'Werden Stärken und Schwächen identifiziert und dokumentiert?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s1_1);

WITH s1_2 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '1.2'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s1_2 WHERE rn = 1) THEN 'Welche Marktbedingungen beeinflussen das QMS?'
    WHEN id = (SELECT id FROM s1_2 WHERE rn = 2) THEN 'Wie werden rechtliche oder regulatorische Anforderungen identifiziert und integriert?'
    WHEN id = (SELECT id FROM s1_2 WHERE rn = 3) THEN 'Gibt es technologische Entwicklungen, die das QM beeinflussen?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s1_2);

WITH s1_3 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '1.3'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s1_3 WHERE rn = 1) THEN 'Welche internen interessierten Parteien beeinflussen das QMS?'
    WHEN id = (SELECT id FROM s1_3 WHERE rn = 2) THEN 'Welche externen interessierten Parteien sind relevant?'
    WHEN id = (SELECT id FROM s1_3 WHERE rn = 3) THEN 'Welche Anforderungen haben diese Stakeholder?'
    WHEN id = (SELECT id FROM s1_3 WHERE rn = 4) THEN 'Wie werden Erwartungen erfasst und bewertet?'
    WHEN id = (SELECT id FROM s1_3 WHERE rn = 5) THEN 'Gibt es Feedbackprozesse für Stakeholder?'
    WHEN id = (SELECT id FROM s1_3 WHERE rn = 6) THEN 'Wird der Klimawandel berücksichtigt?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s1_3);

WITH s1_4 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '1.4'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s1_4 WHERE rn = 1) THEN 'Sind alle relevanten Standorte, Abteilungen und Prozesse einbezogen?'
    WHEN id = (SELECT id FROM s1_4 WHERE rn = 2) THEN 'Ist klar, welche Produkte/Dienstleistungen unter das QMS fallen?'
    WHEN id = (SELECT id FROM s1_4 WHERE rn = 3) THEN 'Sind Ausschlüsse begründet und dokumentiert?'
    WHEN id = (SELECT id FROM s1_4 WHERE rn = 4) THEN 'Wird der Anwendungsbereich des QMS intern und extern kommuniziert?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s1_4);

WITH s1_5 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '1.5'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s1_5 WHERE rn = 1) THEN 'Gibt es eine Beschreibung, wie das QMS integriert ist (Organigramm, Prozesslandschaft)?'
    WHEN id = (SELECT id FROM s1_5 WHERE rn = 2) THEN 'Wie sind Unternehmensziele mit Qualitätszielen verknüpft?'
    WHEN id = (SELECT id FROM s1_5 WHERE rn = 3) THEN 'Sind Prozesse und Wechselwirkungen dokumentiert?'
    WHEN id = (SELECT id FROM s1_5 WHERE rn = 4) THEN 'Wie werden Überschneidungen mit anderen Managementsystemen gehandhabt?'
    WHEN id = (SELECT id FROM s1_5 WHERE rn = 5) THEN 'Werden Prozesse mittels KPIs überwacht und gesteuert?'
    WHEN id = (SELECT id FROM s1_5 WHERE rn = 6) THEN 'Existiert Prozessverantwortung (Prozessverantwortliche)?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s1_5);

-- Section 2: Führung
WITH s2_1 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '2.1'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s2_1 WHERE rn = 1) THEN 'Wie zeigt die oberste Leitung ihr Engagement für Qualität?'
    WHEN id = (SELECT id FROM s2_1 WHERE rn = 2) THEN 'Wird Qualität als strategischer Erfolgsfaktor kommuniziert?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s2_1);

WITH s2_2 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '2.2'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s2_2 WHERE rn = 1) THEN 'Gibt es eine zugängliche Qualitätspolitik?'
    WHEN id = (SELECT id FROM s2_2 WHERE rn = 2) THEN 'Ist sie mit der strategischen Ausrichtung verknüpft?'
    WHEN id = (SELECT id FROM s2_2 WHERE rn = 3) THEN 'Enthält sie Aussagen zu Kundenorientierung, Verbesserung, Anforderungen?'
    WHEN id = (SELECT id FROM s2_2 WHERE rn = 4) THEN 'Wird sie regelmäßig überprüft?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s2_2);

WITH s2_3 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '2.3'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s2_3 WHERE rn = 1) THEN 'Sind Verantwortlichkeiten klar definiert?'
    WHEN id = (SELECT id FROM s2_3 WHERE rn = 2) THEN 'Können Verantwortliche über Maßnahmen entscheiden?'
    WHEN id = (SELECT id FROM s2_3 WHERE rn = 3) THEN 'Können Verantwortliche Produktion/Prozesse bei Fehlerrisiko stoppen?'
    WHEN id = (SELECT id FROM s2_3 WHERE rn = 4) THEN 'Gibt es Vertretungsregelungen?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s2_3);

WITH s2_4 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '2.4'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s2_4 WHERE rn = 1) THEN 'Gibt es Beauftragte (Compliance, Datenschutz usw.)?'
    WHEN id = (SELECT id FROM s2_4 WHERE rn = 2) THEN 'Wie arbeiten sie mit dem QMS zusammen?'
    WHEN id = (SELECT id FROM s2_4 WHERE rn = 3) THEN 'Werden Mitarbeiter in Entscheidungen einbezogen?'
    WHEN id = (SELECT id FROM s2_4 WHERE rn = 4) THEN 'Gibt es Feedback- und Ideenmechanismen?'
    WHEN id = (SELECT id FROM s2_4 WHERE rn = 5) THEN 'Wie werden Qualitätsthemen kommuniziert?'
    WHEN id = (SELECT id FROM s2_4 WHERE rn = 6) THEN 'Werden Leistungskennzahlen offen kommuniziert?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s2_4);

-- Section 3: Planung
WITH s3_1 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '3.1'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s3_1 WHERE rn = 1) THEN 'Werden Risiken/Chancen systematisch identifiziert, bewertet, dokumentiert?'
    WHEN id = (SELECT id FROM s3_1 WHERE rn = 2) THEN 'Gibt es Maßnahmen für priorisierte Risiken?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s3_1);

WITH s3_2 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '3.2'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s3_2 WHERE rn = 1) THEN 'Welche rechtlichen Anforderungen gelten?'
    WHEN id = (SELECT id FROM s3_2 WHERE rn = 2) THEN 'Wie wird sichergestellt, dass Änderungen identifiziert und umgesetzt werden?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s3_2);

WITH s3_3 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '3.3'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s3_3 WHERE rn = 1) THEN 'Sind Ziele SMART formuliert?'
    WHEN id = (SELECT id FROM s3_3 WHERE rn = 2) THEN 'Gibt es Zeitplanung und Priorisierung?'
    WHEN id = (SELECT id FROM s3_3 WHERE rn = 3) THEN 'Wie erfolgt die Nachverfolgung (Berichterstattung, KPIs)?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s3_3);

WITH s3_4 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '3.4'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s3_4 WHERE rn = 1) THEN 'Gibt es Notfall-/Krisenszenarien?'
    WHEN id = (SELECT id FROM s3_4 WHERE rn = 2) THEN 'Werden Rollen und Maßnahmen regelmäßig geübt?'
    WHEN id = (SELECT id FROM s3_4 WHERE rn = 3) THEN 'Gibt es Notfallpläne für Abwesenheiten?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s3_4);

-- Section 4: Unterstützung
WITH s4_1 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '4.1'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s4_1 WHERE rn = 1) THEN 'Stehen ausreichende Ressourcen zur Verfügung?'
    WHEN id = (SELECT id FROM s4_1 WHERE rn = 2) THEN 'Werden Arbeitsmittel/IT regelmäßig gewartet?'
    WHEN id = (SELECT id FROM s4_1 WHERE rn = 3) THEN 'Gibt es Pläne für präventive Wartung?'
    WHEN id = (SELECT id FROM s4_1 WHERE rn = 4) THEN 'Wie werden Intervalle und Dokumentation verwaltet?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s4_1);

WITH s4_2 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '4.2'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s4_2 WHERE rn = 1) THEN 'Wie werden Kompetenzbedarfe identifiziert?'
    WHEN id = (SELECT id FROM s4_2 WHERE rn = 2) THEN 'Gibt es eine systematische Schulungsplanung?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s4_2);

WITH s4_3 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '4.3'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s4_3 WHERE rn = 1) THEN 'Sind Kommunikationskanäle definiert?'
    WHEN id = (SELECT id FROM s4_3 WHERE rn = 2) THEN 'Werden Erfolge und Projekte kommuniziert?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s4_3);

WITH s4_4 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '4.4'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s4_4 WHERE rn = 1) THEN 'Wie werden Dokumente erstellt und versioniert?'
    WHEN id = (SELECT id FROM s4_4 WHERE rn = 2) THEN 'Wie werden Aufzeichnungen aufbewahrt?'
    WHEN id = (SELECT id FROM s4_4 WHERE rn = 3) THEN 'Gibt es ein System zur Verwaltung vertraulicher Daten?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s4_4);

WITH s4_5 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '4.5'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s4_5 WHERE rn = 1) THEN 'Wie wird Wissen identifiziert und geteilt?'
    WHEN id = (SELECT id FROM s4_5 WHERE rn = 2) THEN 'Gibt es Maßnahmen gegen Wissensverlust?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s4_5);

WITH s4_6 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '4.6'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s4_6 WHERE rn = 1) THEN 'Wie wird sichergestellt, dass Aktualisierungen zeitnah kommuniziert werden?'
    WHEN id = (SELECT id FROM s4_6 WHERE rn = 2) THEN 'Werden Kennzeichnungen regelmäßig geprüft?'
    WHEN id = (SELECT id FROM s4_6 WHERE rn = 3) THEN 'Gibt es eine Kommunikationsmatrix?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s4_6);

-- Section 5: Betrieb
WITH s5_1 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '5.1'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s5_1 WHERE rn = 1) THEN 'Sind betriebliche Prozesse dokumentiert?'
    WHEN id = (SELECT id FROM s5_1 WHERE rn = 2) THEN 'Gibt es Prozessziele und Bewertungen?'
    WHEN id = (SELECT id FROM s5_1 WHERE rn = 3) THEN 'Wie werden Kundenanforderungen erfüllt?'
    WHEN id = (SELECT id FROM s5_1 WHERE rn = 4) THEN 'Gibt es Qualitätsprüfungen und Freigaben?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s5_1);

WITH s5_2 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '5.2'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s5_2 WHERE rn = 1) THEN 'Werden Auswirkungen von Änderungen bewertet?'
    WHEN id = (SELECT id FROM s5_2 WHERE rn = 2) THEN 'Wie werden Mitarbeiter informiert?'
    WHEN id = (SELECT id FROM s5_2 WHERE rn = 3) THEN 'Gibt es Freigabeprozesse?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s5_2);

WITH s5_3 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '5.3'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s5_3 WHERE rn = 1) THEN 'Werden Lieferanten nach Kriterien bewertet?'
    WHEN id = (SELECT id FROM s5_3 WHERE rn = 2) THEN 'Wie werden Abweichungen behandelt?'
    WHEN id = (SELECT id FROM s5_3 WHERE rn = 3) THEN 'Werden ökologische/ethische Aspekte berücksichtigt?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s5_3);

WITH s5_4 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '5.4'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s5_4 WHERE rn = 1) THEN 'Sind Ersthelfer verfügbar und geschult?'
    WHEN id = (SELECT id FROM s5_4 WHERE rn = 2) THEN 'Gibt es Nachbereitungsprozesse für Notfälle?'
    WHEN id = (SELECT id FROM s5_4 WHERE rn = 3) THEN 'Gibt es einen Alarmplan?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s5_4);

WITH s5_5 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '5.5'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s5_5 WHERE rn = 1) THEN 'Gibt es präventive Wartungspläne?'
    WHEN id = (SELECT id FROM s5_5 WHERE rn = 2) THEN 'Wie oft werden Wartungsarbeiten durchgeführt?'
    WHEN id = (SELECT id FROM s5_5 WHERE rn = 3) THEN 'Wie werden Verantwortlichkeiten verwaltet?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s5_5);

WITH s5_6 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '5.6'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s5_6 WHERE rn = 1) THEN 'Werden umweltfreundliche Materialien verwendet?'
    WHEN id = (SELECT id FROM s5_6 WHERE rn = 2) THEN 'Gibt es CO₂-Reduktionsziele?'
    WHEN id = (SELECT id FROM s5_6 WHERE rn = 3) THEN 'Wird der Klimawandel bei der Bewertung berücksichtigt?'
    WHEN id = (SELECT id FROM s5_6 WHERE rn = 4) THEN 'Werden ethische Regeln eingehalten?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s5_6);

-- Section 6: Leistungsbewertung
WITH s6_1 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '6.1'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s6_1 WHERE rn = 1) THEN 'Welche Kennzahlen werden erhoben?'
    WHEN id = (SELECT id FROM s6_1 WHERE rn = 2) THEN 'Gibt es Trendanalysen?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s6_1);

WITH s6_2 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '6.2'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s6_2 WHERE rn = 1) THEN 'Wie werden Auditfeststellungen dokumentiert?'
    WHEN id = (SELECT id FROM s6_2 WHERE rn = 2) THEN 'Werden unangekündigte Audits durchgeführt?'
    WHEN id = (SELECT id FROM s6_2 WHERE rn = 3) THEN 'Wie wird der Auditumfang definiert?'
    WHEN id = (SELECT id FROM s6_2 WHERE rn = 4) THEN 'Sind Auditoren qualifiziert/unabhängig?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s6_2);

WITH s6_3 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '6.3'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s6_3 WHERE rn = 1) THEN 'Führt die oberste Leitung Bewertungen durch?'
    WHEN id = (SELECT id FROM s6_3 WHERE rn = 2) THEN 'Werden Maßnahmen abgeleitet?'
    WHEN id = (SELECT id FROM s6_3 WHERE rn = 3) THEN 'Werden Ergebnisse dokumentiert?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s6_3);

WITH s6_4 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '6.4'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s6_4 WHERE rn = 1) THEN 'Gibt es Lessons-Learned-Mechanismen?'
    WHEN id = (SELECT id FROM s6_4 WHERE rn = 2) THEN 'Gibt es regelmäßige Feedbacksysteme?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s6_4);

-- Section 7: Verbesserung
WITH s7_1 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '7.1'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s7_1 WHERE rn = 1) THEN 'Werden Erfolgsgeschichten geteilt?'
    WHEN id = (SELECT id FROM s7_1 WHERE rn = 2) THEN 'Gibt es Workshops zur kontinuierlichen Verbesserung?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s7_1);

WITH s7_2 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '7.2'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s7_2 WHERE rn = 1) THEN 'Gibt es einen Melde-/Bearbeitungsprozess?'
    WHEN id = (SELECT id FROM s7_2 WHERE rn = 2) THEN 'Werden Ursachenanalysen durchgeführt?'
    WHEN id = (SELECT id FROM s7_2 WHERE rn = 3) THEN 'Wie schnell werden Meldungen bearbeitet?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s7_2);

WITH s7_4 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '7.4'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s7_4 WHERE rn = 1) THEN 'Gibt es Prozesse für Innovation und Entwicklung?'
    WHEN id = (SELECT id FROM s7_4 WHERE rn = 2) THEN 'Wie werden Mitarbeiter motiviert, Ideen einzureichen?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s7_4);

WITH s7_5 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '7.5'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_9001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s7_5 WHERE rn = 1) THEN 'Wie werden Compliance-Anforderungen umgesetzt?'
    WHEN id = (SELECT id FROM s7_5 WHERE rn = 2) THEN 'Werden Geschäftspartner auditiert?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s7_5);

SELECT 'ISO 9001 German translations complete!' as message;
