-- Complete German translations for ISO 45001
-- Run this in Supabase SQL Editor

-- Section 1: Kontext der Organisation
WITH s1_1 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '1.1'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s1_1 WHERE rn = 1) THEN 'Welche bundes-, landes- oder kommunalrechtlichen Vorschriften sind zu beachten (z.B. Brandschutz, Arbeitssicherheit, Gefahrstoffmanagement)?'
    WHEN id = (SELECT id FROM s1_1 WHERE rn = 2) THEN 'Wer überwacht die Einhaltung dieser Anforderungen und wie wird sie dokumentiert und kommuniziert?'
    WHEN id = (SELECT id FROM s1_1 WHERE rn = 3) THEN 'Wie werden aktuelle Branchentrends (Digitalisierung, Home Office, hybride Arbeitsmodelle) in den Arbeitsschutz integriert?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s1_1);

WITH s1_2 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '1.2'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s1_2 WHERE rn = 1) THEN 'Müssen Behörden oder Berufsgenossenschaften regelmäßig über Personaländerungen informiert werden (z.B. Wechsel der Fachkraft für Arbeitssicherheit)?'
    WHEN id = (SELECT id FROM s1_2 WHERE rn = 2) THEN 'Welche Anforderungen haben Mitarbeiter und externe Dienstleister bezüglich der Zusammenarbeit mit Beauftragten?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s1_2);

WITH s1_3 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '1.3'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s1_3 WHERE rn = 1) THEN 'Ist der Anwendungsbereich klar definiert?'
    WHEN id = (SELECT id FROM s1_3 WHERE rn = 2) THEN 'Sind alle Arbeitsbereiche und Prozesse einbezogen, in denen Fachkräfte für Arbeitssicherheit oder andere Beauftragte eingesetzt werden müssen?'
    WHEN id = (SELECT id FROM s1_3 WHERE rn = 3) THEN 'Werden Freiberufler oder Leiharbeiter hinsichtlich Arbeitsschutzanforderungen berücksichtigt?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s1_3);

WITH s1_4 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '1.4'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s1_4 WHERE rn = 1) THEN 'Wie wird das Zusammenwirken verschiedener Beauftragter (z.B. SiFa, Datenschutz, Qualität) sichergestellt?'
    WHEN id = (SELECT id FROM s1_4 WHERE rn = 2) THEN 'Sind Rollen und Verantwortlichkeiten an den Schnittstellen klar definiert?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s1_4);

-- Section 2: Führung
WITH s2_1 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '2.1'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s2_1 WHERE rn = 1) THEN 'Gibt es einen direkten Berichtsweg von den SiFa-Beauftragten zur obersten Leitung (regelmäßige Treffen, Berichte)?'
    WHEN id = (SELECT id FROM s2_1 WHERE rn = 2) THEN 'Wie stellt die Geschäftsleitung sicher, dass Beauftragte ausreichende Ressourcen und Befugnisse erhalten?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s2_1);

WITH s2_2 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '2.2'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s2_2 WHERE rn = 1) THEN 'Ist die Politik so formuliert, dass die Rolle und Aufgaben der SiFa explizit einbezogen sind?'
    WHEN id = (SELECT id FROM s2_2 WHERE rn = 2) THEN 'Werden die Beteiligungsrechte der Mitarbeiter und Beauftragten betont?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s2_2);

WITH s2_3 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '2.3'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s2_3 WHERE rn = 1) THEN 'Sind die Aufgaben und Kompetenzen der SiFa dokumentiert (Stellenbeschreibung, Organigramm)?'
    WHEN id = (SELECT id FROM s2_3 WHERE rn = 2) THEN 'Wie wird sichergestellt, dass andere Beauftragte (Brandschutz, Sicherheitsbeauftragter, Betriebsarzt) klar abgegrenzt und koordiniert zusammenarbeiten?'
    WHEN id = (SELECT id FROM s2_3 WHERE rn = 3) THEN 'Dürfen Beauftragte Prozesse bei akuter Gefahr stoppen (Stop-Work-Authority)?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s2_3);

WITH s2_4 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '2.4'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s2_4 WHERE rn = 1) THEN 'Werden Beauftragte in Mitarbeiterbefragungen oder ASA-Sitzungen einbezogen?'
    WHEN id = (SELECT id FROM s2_4 WHERE rn = 2) THEN 'Gibt es einen strukturierten Prozess für die Einbindung bei betrieblichen Änderungen?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s2_4);

WITH s2_5 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '2.5'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s2_5 WHERE rn = 1) THEN 'Ist die Rolle offiziell bestellt und mit Befugnissen ausgestattet (SiFa)?'
    WHEN id = (SELECT id FROM s2_5 WHERE rn = 2) THEN 'Wie wird die fachliche Kompetenz sichergestellt (Weiterbildung, Schulungen)?'
    WHEN id = (SELECT id FROM s2_5 WHERE rn = 3) THEN 'Wird die regelkonforme Bestellung nach DGUV/ArbSchG eingehalten und dokumentiert (Fachkraft für Arbeitssicherheit)?'
    WHEN id = (SELECT id FROM s2_5 WHERE rn = 4) THEN 'Wie werden Empfehlungen an die Geschäftsleitung weitergegeben?'
    WHEN id = (SELECT id FROM s2_5 WHERE rn = 5) THEN 'Werden arbeitsmedizinische Untersuchungen geplant und durchgeführt (Betriebsarzt)?'
    WHEN id = (SELECT id FROM s2_5 WHERE rn = 6) THEN 'Wie erfolgt die Abstimmung zwischen Betriebsarzt und SiFa?'
    WHEN id = (SELECT id FROM s2_5 WHERE rn = 7) THEN 'Sind alle Brandschutzkonzepte erstellt und aktuell (Brandschutzbeauftragter)?'
    WHEN id = (SELECT id FROM s2_5 WHERE rn = 8) THEN 'Werden Evakuierungsübungen organisiert?'
    WHEN id = (SELECT id FROM s2_5 WHERE rn = 9) THEN 'Werden Sicherheitsbeauftragte regelmäßig geschult?'
    WHEN id = (SELECT id FROM s2_5 WHERE rn = 10) THEN 'Haben sie Meldekanäle für die Ereignismeldung?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s2_5);

-- Section 3: Planung
WITH s3_1 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '3.1'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s3_1 WHERE rn = 1) THEN 'Gibt es einen systematischen Prozess für die Risiko- und Chancenbewertung?'
    WHEN id = (SELECT id FROM s3_1 WHERE rn = 2) THEN 'Werden Risiken identifiziert, die durch fehlende oder unqualifizierte Beauftragte entstehen könnten?'
    WHEN id = (SELECT id FROM s3_1 WHERE rn = 3) THEN 'Gibt es Vertretungsregelungen bei Abwesenheiten?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s3_1);

WITH s3_2 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '3.2'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s3_2 WHERE rn = 1) THEN 'Gibt es eine Übersicht aller Pflichten und Vorschriften für Beauftragte?'
    WHEN id = (SELECT id FROM s3_2 WHERE rn = 2) THEN 'Werden die Verpflichtungen einzelner Beauftragter regelmäßig bewertet und aktualisiert?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s3_2);

WITH s3_3 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '3.3'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s3_3 WHERE rn = 1) THEN 'Sind Ziele (z.B. Unfallreduzierung, ergonomische Verbesserungen) definiert und werden sie bewertet?'
    WHEN id = (SELECT id FROM s3_3 WHERE rn = 2) THEN 'Wie wird mit nicht erreichten Zielen umgegangen?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s3_3);

WITH s3_4 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '3.4'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s3_4 WHERE rn = 1) THEN 'Sind die Rollen der Beauftragten in Notfällen definiert?'
    WHEN id = (SELECT id FROM s3_4 WHERE rn = 2) THEN 'Wie wird die Erreichbarkeit und Kommunikation sichergestellt?'
    WHEN id = (SELECT id FROM s3_4 WHERE rn = 3) THEN 'Gibt es Notfallpläne für Personalausfälle?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s3_4);

WITH s3_6 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '3.6'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s3_6 WHERE rn = 1) THEN 'Sind Ziele in kurz-, mittel- und langfristige Phasen unterteilt?'
    WHEN id = (SELECT id FROM s3_6 WHERE rn = 2) THEN 'Gibt es eine Abstimmung der Ziele mit den Unternehmenszielen?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s3_6);

-- Section 4: Unterstützung
WITH s4_1 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '4.1'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s4_1 WHERE rn = 1) THEN 'Gibt es ein Budget für Beauftragte (Schulungen, Fachliteratur, Beratung)?'
    WHEN id = (SELECT id FROM s4_1 WHERE rn = 2) THEN 'Haben Beauftragte ausreichende Arbeitsmittel (Messgeräte, Software, PSA)?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s4_1);

WITH s4_2 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '4.2'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s4_2 WHERE rn = 1) THEN 'Gibt es Qualifikationsanforderungen für jede Rolle?'
    WHEN id = (SELECT id FROM s4_2 WHERE rn = 2) THEN 'Wie wird die Weiterbildungsplanung gehandhabt?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s4_2);

WITH s4_3 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '4.3'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s4_3 WHERE rn = 1) THEN 'Werden neue Mitarbeiter über Rollen und Erreichbarkeit informiert?'
    WHEN id = (SELECT id FROM s4_3 WHERE rn = 2) THEN 'Gibt es Newsletter, Aushänge, interne Kommunikation über Aktualisierungen?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s4_3);

WITH s4_4 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '4.4'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s4_4 WHERE rn = 1) THEN 'Wie werden Ergebnisse von Beauftragten archiviert?'
    WHEN id = (SELECT id FROM s4_4 WHERE rn = 2) THEN 'Werden Aufzeichnungen (Prüfberichte, Wartung) systematisch gespeichert?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s4_4);

WITH s4_5 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '4.5'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s4_5 WHERE rn = 1) THEN 'Wie wird Know-how gesichert (Dokumentation, Wiki, Intranet)?'
    WHEN id = (SELECT id FROM s4_5 WHERE rn = 2) THEN 'Gibt es ein zentrales Repository für Arbeitsschutzinformationen?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s4_5);

WITH s4_6 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '4.6'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s4_6 WHERE rn = 1) THEN 'Wie werden Aktualisierungen von Prozessen oder Sicherheitshinweisen kommuniziert?'
    WHEN id = (SELECT id FROM s4_6 WHERE rn = 2) THEN 'Werden Fluchtwege, Prüfsiegel usw. regelmäßig kontrolliert?'
    WHEN id = (SELECT id FROM s4_6 WHERE rn = 3) THEN 'Gibt es eine interne und externe Kommunikationsmatrix?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s4_6);

-- Section 5: Betrieb
WITH s5_1 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '5.1'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s5_1 WHERE rn = 1) THEN 'Werden Beauftragte frühzeitig in Prozesse eingebunden (z.B. Maschinenbeschaffung, Neubau)?'
    WHEN id = (SELECT id FROM s5_1 WHERE rn = 2) THEN 'Sind Arbeitsprozesse so gestaltet, dass die Sicherheit berücksichtigt wird?'
    WHEN id = (SELECT id FROM s5_1 WHERE rn = 3) THEN 'Werden Schutzmaßnahmen konsequent umgesetzt?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s5_1);

WITH s5_2 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '5.2'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s5_2 WHERE rn = 1) THEN 'Werden Arbeitsplätze regelmäßig inspiziert und dokumentiert?'
    WHEN id = (SELECT id FROM s5_2 WHERE rn = 2) THEN 'Wie werden Mitarbeiter einbezogen?'
    WHEN id = (SELECT id FROM s5_2 WHERE rn = 3) THEN 'Werden Gefährdungsbeurteilungen regelmäßig aktualisiert?'
    WHEN id = (SELECT id FROM s5_2 WHERE rn = 4) THEN 'Wie wird die Wirksamkeit überprüft?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s5_2);

WITH s5_3 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '5.3'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s5_3 WHERE rn = 1) THEN 'Gibt es etablierte Verfahren einschließlich Arbeitsschutz-Risikoanalyse?'
    WHEN id = (SELECT id FROM s5_3 WHERE rn = 2) THEN 'Wie werden Mitarbeiter informiert?'
    WHEN id = (SELECT id FROM s5_3 WHERE rn = 3) THEN 'Ist die SiFa Teil des Freigabeprozesses?'
    WHEN id = (SELECT id FROM s5_3 WHERE rn = 4) THEN 'Werden TRGS-600-Substitutionsprüfungen angewendet?'
    WHEN id = (SELECT id FROM s5_3 WHERE rn = 5) THEN 'Werden Auswirkungen auf andere Beauftragte berücksichtigt?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s5_3);

WITH s5_4 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '5.4'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s5_4 WHERE rn = 1) THEN 'Gibt es Beschaffungsrichtlinien zur Einbeziehung von Beauftragten?'
    WHEN id = (SELECT id FROM s5_4 WHERE rn = 2) THEN 'Müssen externe Partner Arbeitsschutzstandards einhalten und werden sie überwacht?'
    WHEN id = (SELECT id FROM s5_4 WHERE rn = 3) THEN 'Wie wird die Sicherheit bei gemeinsamen Projekten koordiniert?'
    WHEN id = (SELECT id FROM s5_4 WHERE rn = 4) THEN 'Wie werden Dienstleister unterwiesen?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s5_4);

WITH s5_5 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '5.5'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s5_5 WHERE rn = 1) THEN 'Sind Ersthelfer verfügbar und geschult?'
    WHEN id = (SELECT id FROM s5_5 WHERE rn = 2) THEN 'Gibt es eine Nachbereitung nach Notfällen?'
    WHEN id = (SELECT id FROM s5_5 WHERE rn = 3) THEN 'Werden Beauftragte in Notfallübungen einbezogen?'
    WHEN id = (SELECT id FROM s5_5 WHERE rn = 4) THEN 'Gibt es einen Alarmplan mit Kontaktdaten?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s5_5);

WITH s5_6 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '5.6'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s5_6 WHERE rn = 1) THEN 'Gibt es Wartungspläne für Anlagen?'
    WHEN id = (SELECT id FROM s5_6 WHERE rn = 2) THEN 'Wie oft werden Wartungsarbeiten durchgeführt?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s5_6);

WITH s5_7 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '5.7'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s5_7 WHERE rn = 1) THEN 'Wie werden Arbeitsbereiche verwaltet?'
    WHEN id = (SELECT id FROM s5_7 WHERE rn = 2) THEN 'Gibt es Werkzeuge für Raumzuweisung und Nutzungsanalyse?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s5_7);

WITH s5_9 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '5.9'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s5_9 WHERE rn = 1) THEN 'Werden Sicherheitskonzepte regelmäßig geprüft (Brandschutz, Evakuierung)?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s5_9);

WITH s5_10 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '5.10'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s5_10 WHERE rn = 1) THEN 'Werden umweltfreundliche Produkte verwendet?'
    WHEN id = (SELECT id FROM s5_10 WHERE rn = 2) THEN 'Gibt es CO₂-Reduktionsziele im Kontext des Arbeitsschutzes?'
    WHEN id = (SELECT id FROM s5_10 WHERE rn = 3) THEN 'Wird der Klimawandel in der Risiko- und Stakeholder-Analyse berücksichtigt?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s5_10);

-- Section 6: Leistungsbewertung
WITH s6_1 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '6.1'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s6_1 WHERE rn = 1) THEN 'Welche KPIs werden verwendet (Unfälle, Schweregrad, Krankenquote)?'
    WHEN id = (SELECT id FROM s6_1 WHERE rn = 2) THEN 'Werden Trends analysiert?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s6_1);

WITH s6_2 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '6.2'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s6_2 WHERE rn = 1) THEN 'Gibt es einen Auditplan für alle Bereiche?'
    WHEN id = (SELECT id FROM s6_2 WHERE rn = 2) THEN 'Werden unangekündigte Audits durchgeführt?'
    WHEN id = (SELECT id FROM s6_2 WHERE rn = 3) THEN 'Was ist der Auditumfang?'
    WHEN id = (SELECT id FROM s6_2 WHERE rn = 4) THEN 'Sind Auditoren qualifiziert und unabhängig?'
    WHEN id = (SELECT id FROM s6_2 WHERE rn = 5) THEN 'Wie werden Ergebnisse bewertet und Maßnahmen abgeleitet?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s6_2);

WITH s6_3 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '6.3'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s6_3 WHERE rn = 1) THEN 'Werden Arbeitsschutz-Leistungsdaten systematisch überprüft?'
    WHEN id = (SELECT id FROM s6_3 WHERE rn = 2) THEN 'Werden Maßnahmen aus der Bewertung abgeleitet?'
    WHEN id = (SELECT id FROM s6_3 WHERE rn = 3) THEN 'Werden Ergebnisse dokumentiert?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s6_3);

WITH s6_4 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '6.4'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s6_4 WHERE rn = 1) THEN 'Werden Vorfälle systematisch analysiert?'
    WHEN id = (SELECT id FROM s6_4 WHERE rn = 2) THEN 'Gibt es Feedbacksysteme für Mitarbeiter?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s6_4);

-- Section 7: Verbesserung
WITH s7_1 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '7.1'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s7_1 WHERE rn = 1) THEN 'Gibt es Verfahren zur Erfassung und Analyse von Nichtkonformitäten?'
    WHEN id = (SELECT id FROM s7_1 WHERE rn = 2) THEN 'Werden Maßnahmen auf Wirksamkeit überprüft?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s7_1);

WITH s7_2 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '7.2'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s7_2 WHERE rn = 1) THEN 'Gibt es ein systematisches Verfahren zur Meldung/Bearbeitung von Abweichungen?'
    WHEN id = (SELECT id FROM s7_2 WHERE rn = 2) THEN 'Werden Korrekturmaßnahmen dokumentiert?'
    WHEN id = (SELECT id FROM s7_2 WHERE rn = 3) THEN 'Gibt es ein Meldesystem für Vorfälle?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s7_2);

WITH s7_3 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '7.3'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s7_3 WHERE rn = 1) THEN 'Werden psychosoziale Risiken erfasst und präventiv behandelt?'
    WHEN id = (SELECT id FROM s7_3 WHERE rn = 2) THEN 'Gibt es psychologische Unterstützung nach kritischen Ereignissen?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s7_3);

WITH s7_4 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '7.4'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s7_4 WHERE rn = 1) THEN 'Werden Workshops nach Projekten oder Vorfällen durchgeführt?'
    WHEN id = (SELECT id FROM s7_4 WHERE rn = 2) THEN 'Werden Erkenntnisse in Prozessen dokumentiert?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s7_4);

WITH s7_5 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '7.5'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s7_5 WHERE rn = 1) THEN 'Wie werden Arbeitsschutz-Compliance-Anforderungen umgesetzt?'
    WHEN id = (SELECT id FROM s7_5 WHERE rn = 2) THEN 'Werden Geschäftspartner auditiert?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s7_5);

WITH s7_6 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '7.6'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s7_6 WHERE rn = 1) THEN 'Werden digitale Gesundheit, Wearables, ergonomische Hilfsmittel bewertet?'
    WHEN id = (SELECT id FROM s7_6 WHERE rn = 2) THEN 'Gibt es ein Budget für Gesundheitsförderung?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s7_6);

-- Section 8: Glossar
WITH s8_1 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '8.1'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_45001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s8_1 WHERE rn = 1) THEN 'Sind Definitionen für digitale Gesundheit, Wearables, AR-Brillen, Exoskelette dokumentiert?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s8_1);

SELECT 'ISO 45001 German translations complete!' as message;
