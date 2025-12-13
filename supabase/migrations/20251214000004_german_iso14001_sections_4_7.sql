-- Complete German translations for ISO 14001 Sections 4-7
-- Run this after the first script that covered sections 1-3

-- Section 4: Unterstützung
WITH s4_1 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '4.1'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s4_1 WHERE rn = 1) THEN 'Stehen ausreichende Ressourcen für Umwelt-/Klimaschutz zur Verfügung?'
    WHEN id = (SELECT id FROM s4_1 WHERE rn = 2) THEN 'Wie werden Messgeräte und Werkzeuge gewartet?'
    WHEN id = (SELECT id FROM s4_1 WHERE rn = 3) THEN 'Gibt es präventive Wartungspläne?'
    WHEN id = (SELECT id FROM s4_1 WHERE rn = 4) THEN 'Werden Ressourcen für die Abfallwirtschaft bereitgestellt?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s4_1);

WITH s4_2 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '4.2'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s4_2 WHERE rn = 1) THEN 'Gibt es Schulungen zu Umweltrecht, Klimaschutz, Abfall, Gefahrstoffen?'
    WHEN id = (SELECT id FROM s4_2 WHERE rn = 2) THEN 'Gibt es Bedarfsanalysen?'
    WHEN id = (SELECT id FROM s4_2 WHERE rn = 3) THEN 'Wie wird die Qualifikation externer Mitarbeiter sichergestellt?'
    WHEN id = (SELECT id FROM s4_2 WHERE rn = 4) THEN 'Gibt es Beauftragte für das Gefahrstoffmanagement?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s4_2);

WITH s4_3 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '4.3'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s4_3 WHERE rn = 1) THEN 'Wie wird Wissen gesichert (Übergaben, Dokumentation)?'
    WHEN id = (SELECT id FROM s4_3 WHERE rn = 2) THEN 'Wie werden SDB und interne Richtlinien verwaltet?'
    WHEN id = (SELECT id FROM s4_3 WHERE rn = 3) THEN 'Wie werden Aktualisierungen gepflegt?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s4_3);

WITH s4_4 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '4.4'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s4_4 WHERE rn = 1) THEN 'Wie werden UMS-Dokumente kontrolliert und versioniert?'
    WHEN id = (SELECT id FROM s4_4 WHERE rn = 2) THEN 'Gibt es Richtlinien für vertrauliche Daten?'
    WHEN id = (SELECT id FROM s4_4 WHERE rn = 3) THEN 'Gibt es Berechtigungssysteme?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s4_4);

WITH s4_5 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '4.5'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s4_5 WHERE rn = 1) THEN 'Welche Kanäle werden genutzt (Newsletter, Intranet, Aushänge)?'
    WHEN id = (SELECT id FROM s4_5 WHERE rn = 2) THEN 'Gibt es Umweltkampagnen?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s4_5);

WITH s4_6 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '4.6'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s4_6 WHERE rn = 1) THEN 'Wie werden Aktualisierungen kommuniziert?'
    WHEN id = (SELECT id FROM s4_6 WHERE rn = 2) THEN 'Werden Kennzeichnungen geprüft?'
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
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s5_1 WHERE rn = 1) THEN 'Werden Prozesse gesteuert, um Umweltauswirkungen zu minimieren?'
    WHEN id = (SELECT id FROM s5_1 WHERE rn = 2) THEN 'Werden CO₂, Wasser, Abfall regelmäßig überwacht?'
    WHEN id = (SELECT id FROM s5_1 WHERE rn = 3) THEN 'Gibt es SOPs für Gefahrstoffe?'
    WHEN id = (SELECT id FROM s5_1 WHERE rn = 4) THEN 'Werden Inspektionen durchgeführt?'
    WHEN id = (SELECT id FROM s5_1 WHERE rn = 5) THEN 'Wie wird die Einhaltung bei Entsorgungsunternehmen sichergestellt?'
    WHEN id = (SELECT id FROM s5_1 WHERE rn = 6) THEN 'Gibt es Kontrollmechanismen in der Beschaffung?'
    WHEN id = (SELECT id FROM s5_1 WHERE rn = 7) THEN 'Sind Gefahrstoffe korrekt gekennzeichnet und gelagert?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s5_1);

WITH s5_2 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '5.2'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s5_2 WHERE rn = 1) THEN 'Wie werden Änderungen auf Umweltauswirkungen bewertet?'
    WHEN id = (SELECT id FROM s5_2 WHERE rn = 2) THEN 'Gibt es Genehmigungsprozesse?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s5_2);

WITH s5_3 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '5.3'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s5_3 WHERE rn = 1) THEN 'Werden ökologische Kriterien berücksichtigt?'
    WHEN id = (SELECT id FROM s5_3 WHERE rn = 2) THEN 'Gibt es Lieferantenbewertungen?'
    WHEN id = (SELECT id FROM s5_3 WHERE rn = 3) THEN 'Werden ethische Aspekte berücksichtigt?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s5_3);

WITH s5_4 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '5.4'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s5_4 WHERE rn = 1) THEN 'Werden Ökodesign-Prinzipien angewendet?'
    WHEN id = (SELECT id FROM s5_4 WHERE rn = 2) THEN 'Werden Lieferketten auf Klimafreundlichkeit optimiert?'
    WHEN id = (SELECT id FROM s5_4 WHERE rn = 3) THEN 'Gibt es Notfallpläne für Umweltereignisse?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s5_4);

WITH s5_5 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '5.5'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s5_5 WHERE rn = 1) THEN 'Gibt es präventive Instandhaltung?'
    WHEN id = (SELECT id FROM s5_5 WHERE rn = 2) THEN 'Wie werden Intervalle verwaltet?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s5_5);

WITH s5_6 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '5.6'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s5_6 WHERE rn = 1) THEN 'Werden Dienstleister auf Umweltstandards geprüft?'
    WHEN id = (SELECT id FROM s5_6 WHERE rn = 2) THEN 'Gibt es Meldekanäle für Verstöße?'
    WHEN id = (SELECT id FROM s5_6 WHERE rn = 3) THEN 'Gibt es Notfallpläne für Gefahrstoffunfälle?'
    WHEN id = (SELECT id FROM s5_6 WHERE rn = 4) THEN 'Werden Übungen durchgeführt?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s5_6);

WITH s5_7 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '5.7'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s5_7 WHERE rn = 1) THEN 'Werden alle Abfallströme erfasst?'
    WHEN id = (SELECT id FROM s5_7 WHERE rn = 2) THEN 'Gibt es Trennsysteme?'
    WHEN id = (SELECT id FROM s5_7 WHERE rn = 3) THEN 'Gibt es Recyclingziele?'
    WHEN id = (SELECT id FROM s5_7 WHERE rn = 4) THEN 'Wird die Entsorgung ordnungsgemäß dokumentiert?'
    WHEN id = (SELECT id FROM s5_7 WHERE rn = 5) THEN 'Wie werden gefährliche Abfälle getrennt und entsorgt?'
    WHEN id = (SELECT id FROM s5_7 WHERE rn = 6) THEN 'Werden gesetzliche Anforderungen erfüllt?'
    WHEN id = (SELECT id FROM s5_7 WHERE rn = 7) THEN 'Gibt es Abfallkennzahlen?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s5_7);

-- Section 6: Leistungsbewertung
WITH s6_1 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '6.1'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s6_1 WHERE rn = 1) THEN 'Welche Umweltkennzahlen werden erhoben und analysiert?'
    WHEN id = (SELECT id FROM s6_1 WHERE rn = 2) THEN 'Werden Gefahrstoffdaten überwacht?'
    WHEN id = (SELECT id FROM s6_1 WHERE rn = 3) THEN 'Wie werden Abweichungen dokumentiert?'
    WHEN id = (SELECT id FROM s6_1 WHERE rn = 4) THEN 'Gibt es regelmäßige Berichte?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s6_1);

WITH s6_2 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '6.2'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s6_2 WHERE rn = 1) THEN 'Sind alle umweltrelevanten Prozesse im Auditplan?'
    WHEN id = (SELECT id FROM s6_2 WHERE rn = 2) THEN 'Werden Gefahrstoff- und Abfallthemen auditiert?'
    WHEN id = (SELECT id FROM s6_2 WHERE rn = 3) THEN 'Werden unangekündigte Audits durchgeführt?'
    WHEN id = (SELECT id FROM s6_2 WHERE rn = 4) THEN 'Wie wird die Auditorenkompetenz sichergestellt?'
    WHEN id = (SELECT id FROM s6_2 WHERE rn = 5) THEN 'Wie werden Auditergebnisse priorisiert?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s6_2);

WITH s6_3 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '6.3'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s6_3 WHERE rn = 1) THEN 'Wie oft findet die Managementbewertung statt?'
    WHEN id = (SELECT id FROM s6_3 WHERE rn = 2) THEN 'Wie werden Ergebnisse dokumentiert und genutzt?'
    WHEN id = (SELECT id FROM s6_3 WHERE rn = 3) THEN 'Fließen Umwelt- und Emissionsdaten ein?'
    WHEN id = (SELECT id FROM s6_3 WHERE rn = 4) THEN 'Wie werden neue Ziele abgeleitet?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s6_3);

WITH s6_4 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '6.4'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s6_4 WHERE rn = 1) THEN 'Gibt es Lessons Learned?'
    WHEN id = (SELECT id FROM s6_4 WHERE rn = 2) THEN 'Wird Stakeholder-Feedback berücksichtigt?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s6_4);

-- Section 7: Verbesserung
WITH s7_1 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '7.1'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s7_1 WHERE rn = 1) THEN 'Gibt es Programme oder Workshops zur Ressourcenschonung?'
    WHEN id = (SELECT id FROM s7_1 WHERE rn = 2) THEN 'Werden Best Practices geteilt?'
    WHEN id = (SELECT id FROM s7_1 WHERE rn = 3) THEN 'Gibt es klare Verfahren für Fehlerfälle?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s7_1);

WITH s7_2 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '7.2'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s7_2 WHERE rn = 1) THEN 'Gibt es Prozesse zur Meldung und Bearbeitung von Umweltverstößen?'
    WHEN id = (SELECT id FROM s7_2 WHERE rn = 2) THEN 'Werden Ursachenanalysen durchgeführt?'
    WHEN id = (SELECT id FROM s7_2 WHERE rn = 3) THEN 'Werden Maßnahmen auf Wirksamkeit geprüft?'
    WHEN id = (SELECT id FROM s7_2 WHERE rn = 4) THEN 'Werden Wiederholungsfälle verhindert?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s7_2);

WITH s7_3 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '7.3'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s7_3 WHERE rn = 1) THEN 'Werden Gefahrstoffe auf Ersatz geprüft?'
    WHEN id = (SELECT id FROM s7_3 WHERE rn = 2) THEN 'Gibt es einen strukturierten Ansatz für die Substitution?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s7_3);

WITH s7_4 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '7.4'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s7_4 WHERE rn = 1) THEN 'Werden klimafreundliche Innovationen gefördert?'
    WHEN id = (SELECT id FROM s7_4 WHERE rn = 2) THEN 'Werden Mitarbeiter ermutigt, Ideen einzureichen?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s7_4);

WITH s7_5 AS (
    SELECT q.id, ROW_NUMBER() OVER (ORDER BY q.sort_order, q.id) as rn
    FROM iso_criteria_questions q
    JOIN iso_criteria_subsections sub ON q.subsection_id = sub.id
    WHERE sub.subsection_number = '7.5'
    AND sub.section_id IN (SELECT id FROM iso_criteria_sections WHERE iso_code = 'ISO_14001')
)
UPDATE iso_criteria_questions SET question_text = CASE 
    WHEN id = (SELECT id FROM s7_5 WHERE rn = 1) THEN 'Wie werden Compliance-Anforderungen erfüllt?'
    WHEN id = (SELECT id FROM s7_5 WHERE rn = 2) THEN 'Wie werden Geschäftspartner auf Umwelt-Compliance geprüft?'
    ELSE question_text
END
WHERE id IN (SELECT id FROM s7_5);

-- Verify a sample
SELECT 'ISO 14001 Sections 4-7 German translations complete!' as message;
