-- Add German translations for ISO 9001 questions
-- This migration updates the question_text column with German translations
-- while keeping the English text in question_text_en

-- Section 1: Kontext der Organisation
-- 1.1 Interne Themen identifizieren
UPDATE iso_criteria_questions 
SET question_text = 'Welche Organisationsstrukturen (Abteilungen, Führungsebenen, Ressourcen) beeinflussen das Qualitätsmanagement?'
WHERE question_text_en LIKE 'Which organizational structures (departments, management levels, resources) influence quality management%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie wird die Unternehmensstrategie in Bezug auf Qualität berücksichtigt?'
WHERE question_text_en LIKE 'How is the corporate strategy considered in relation to quality%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Stärken und Schwächen identifiziert und dokumentiert?'
WHERE question_text_en LIKE 'Are strengths and weaknesses identified and documented%';

-- 1.2 Externe Themen identifizieren
UPDATE iso_criteria_questions 
SET question_text = 'Welche Marktbedingungen beeinflussen das QMS?'
WHERE question_text_en LIKE 'Which market conditions influence the QMS%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden rechtliche oder regulatorische Anforderungen identifiziert und integriert?'
WHERE question_text_en LIKE 'How are legal or regulatory requirements identified and integrated%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es technologische Entwicklungen, die das QM beeinflussen?'
WHERE question_text_en LIKE 'Are there technological developments that influence QM%';

-- 1.3 Interessierte Parteien und deren Anforderungen
UPDATE iso_criteria_questions 
SET question_text = 'Welche internen interessierten Parteien beeinflussen das QMS?'
WHERE question_text_en LIKE 'Which internal interested parties influence the QMS%';

UPDATE iso_criteria_questions 
SET question_text = 'Welche externen interessierten Parteien sind relevant?'
WHERE question_text_en LIKE 'Which external interested parties are relevant%';

UPDATE iso_criteria_questions 
SET question_text = 'Welche Anforderungen haben diese Stakeholder?'
WHERE question_text_en LIKE 'What requirements do these stakeholders have%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Erwartungen erfasst und bewertet?'
WHERE question_text_en LIKE 'How are expectations captured and assessed%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Feedbackprozesse für Stakeholder?'
WHERE question_text_en LIKE 'Are there feedback processes for stakeholders%';

UPDATE iso_criteria_questions 
SET question_text = 'Wird der Klimawandel berücksichtigt?'
WHERE question_text_en LIKE 'Is climate change considered%';

-- 1.4 Dokumentation und Aktualisierungen
UPDATE iso_criteria_questions 
SET question_text = 'Sind alle relevanten Standorte, Abteilungen und Prozesse einbezogen?'
WHERE question_text_en LIKE 'Are all relevant locations, departments and processes included%';

UPDATE iso_criteria_questions 
SET question_text = 'Ist klar, welche Produkte/Dienstleistungen unter das QMS fallen?'
WHERE question_text_en LIKE 'Is it clear which products/services fall under the QMS%';

UPDATE iso_criteria_questions 
SET question_text = 'Sind Ausschlüsse begründet und dokumentiert?'
WHERE question_text_en LIKE 'Are exclusions justified and documented%';

UPDATE iso_criteria_questions 
SET question_text = 'Wird der Anwendungsbereich des QMS intern und extern kommuniziert?'
WHERE question_text_en LIKE 'Is the scope of the QMS communicated internally and externally%';

-- 1.5 Managementsystem und Schnittstellen
UPDATE iso_criteria_questions 
SET question_text = 'Gibt es eine Beschreibung, wie das QMS integriert ist (Organigramm, Prozesslandschaft)?'
WHERE question_text_en LIKE 'Is there a description of how QMS is integrated%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie sind Unternehmensziele mit Qualitätszielen verknüpft?'
WHERE question_text_en LIKE 'How are corporate objectives linked with quality objectives%';

UPDATE iso_criteria_questions 
SET question_text = 'Sind Prozesse und Wechselwirkungen dokumentiert?'
WHERE question_text_en LIKE 'Are processes and interactions documented%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Überschneidungen mit anderen Managementsystemen gehandhabt?'
WHERE question_text_en LIKE 'How are overlaps with other management systems handled%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Prozesse mittels KPIs überwacht und gesteuert?'
WHERE question_text_en LIKE 'Are processes monitored and controlled using KPIs%';

UPDATE iso_criteria_questions 
SET question_text = 'Existiert Prozessverantwortung (Prozessverantwortliche)?'
WHERE question_text_en LIKE 'Does process ownership exist (process owners)%';

-- Section 2: Führung (Leadership)
-- 2.1 Verantwortung und Verpflichtung der Leitung
UPDATE iso_criteria_questions 
SET question_text = 'Wie zeigt die oberste Leitung ihr Engagement für Qualität?'
WHERE question_text_en LIKE 'How does top management demonstrate commitment to quality%';

UPDATE iso_criteria_questions 
SET question_text = 'Wird Qualität als strategischer Erfolgsfaktor kommuniziert?'
WHERE question_text_en LIKE 'Is quality communicated as a strategic success factor%';

-- 2.2 Qualitätspolitik
UPDATE iso_criteria_questions 
SET question_text = 'Gibt es eine zugängliche Qualitätspolitik?'
WHERE question_text_en LIKE 'Is there an accessible quality policy%';

UPDATE iso_criteria_questions 
SET question_text = 'Ist sie mit der strategischen Ausrichtung verknüpft?'
WHERE question_text_en LIKE 'Is it linked to the strategic direction%';

UPDATE iso_criteria_questions 
SET question_text = 'Enthält sie Aussagen zu Kundenorientierung, Verbesserung, Anforderungen?'
WHERE question_text_en LIKE 'Does it contain statements on customer orientation, improvement, requirements%';

UPDATE iso_criteria_questions 
SET question_text = 'Wird sie regelmäßig überprüft?'
WHERE question_text_en LIKE 'Is it regularly reviewed%';

-- 2.3 Rollen, Verantwortlichkeiten und Befugnisse
UPDATE iso_criteria_questions 
SET question_text = 'Sind Verantwortlichkeiten klar definiert?'
WHERE question_text_en LIKE 'Are responsibilities clearly defined%';

UPDATE iso_criteria_questions 
SET question_text = 'Können Verantwortliche über Maßnahmen entscheiden?'
WHERE question_text_en LIKE 'Can responsible parties decide on actions%';

UPDATE iso_criteria_questions 
SET question_text = 'Können Verantwortliche Produktion/Prozesse bei Fehlerrisiko stoppen?'
WHERE question_text_en LIKE 'Can responsible parties stop production/processes in case of error risk%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Vertretungsregelungen?'
WHERE question_text_en LIKE 'Are there backup arrangements%';

-- 2.4 Beteiligung und Konsultation der Beschäftigten
UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Beauftragte (Compliance, Datenschutz usw.)?'
WHERE question_text_en LIKE 'Are there officers (compliance, data protection, etc.)%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie arbeiten sie mit dem QMS zusammen?'
WHERE question_text_en LIKE 'How do they work with the QMS%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Mitarbeiter in Entscheidungen einbezogen?'
WHERE question_text_en LIKE 'Are employees involved in decisions%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Feedback- und Ideenmechanismen?'
WHERE question_text_en LIKE 'Are there feedback and idea mechanisms%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Qualitätsthemen kommuniziert?'
WHERE question_text_en LIKE 'How are quality topics communicated%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Leistungskennzahlen offen kommuniziert?'
WHERE question_text_en LIKE 'Are performance metrics openly communicated%';

-- Section 3: Planung
-- 3.1 Risiken und Chancen
UPDATE iso_criteria_questions 
SET question_text = 'Werden Risiken/Chancen systematisch identifiziert, bewertet, dokumentiert?'
WHERE question_text_en LIKE 'Are risks/opportunities systematically identified, assessed, documented%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Maßnahmen für priorisierte Risiken?'
WHERE question_text_en LIKE 'Are there actions for prioritized risks%';

-- 3.2 Rechtliche und andere Anforderungen
UPDATE iso_criteria_questions 
SET question_text = 'Welche rechtlichen Anforderungen gelten?'
WHERE question_text_en LIKE 'Which legal requirements apply%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie wird sichergestellt, dass Änderungen identifiziert und umgesetzt werden?'
WHERE question_text_en LIKE 'How is it ensured that changes are identified and implemented%';

-- 3.3 Qualitätsziele
UPDATE iso_criteria_questions 
SET question_text = 'Sind Ziele SMART formuliert?'
WHERE question_text_en LIKE 'Are objectives formulated SMART%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Zeitplanung und Priorisierung?'
WHERE question_text_en LIKE 'Is there time scheduling and prioritization%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie erfolgt die Nachverfolgung (Berichterstattung, KPIs)?'
WHERE question_text_en LIKE 'How is tracking done (reporting, KPIs)%';

-- 3.4 Notfall- und Krisenplanung
UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Notfall-/Krisenszenarien?'
WHERE question_text_en LIKE 'Are there emergency/crisis scenarios%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Rollen und Maßnahmen regelmäßig geübt?'
WHERE question_text_en LIKE 'Are roles and actions regularly practiced%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Notfallpläne für Abwesenheiten?'
WHERE question_text_en LIKE 'Are there emergency plans for absences%';

-- Section 4: Unterstützung
-- 4.1 Ressourcenmanagement & Budget
UPDATE iso_criteria_questions 
SET question_text = 'Stehen ausreichende Ressourcen zur Verfügung?'
WHERE question_text_en LIKE 'Are sufficient resources available%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Arbeitsmittel/IT regelmäßig gewartet?'
WHERE question_text_en LIKE 'Are work equipment/IT regularly maintained%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Pläne für präventive Wartung?'
WHERE question_text_en LIKE 'Are there plans for preventive maintenance%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Intervalle und Dokumentation verwaltet?'
WHERE question_text_en LIKE 'How are intervals and documentation managed%';

-- 4.2 Kompetenz und Qualifikation
UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Kompetenzbedarfe identifiziert?'
WHERE question_text_en LIKE 'How are competence needs identified%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es eine systematische Schulungsplanung?'
WHERE question_text_en LIKE 'Is there systematic training planning%';

-- 4.3 Bewusstsein und Kommunikation
UPDATE iso_criteria_questions 
SET question_text = 'Sind Kommunikationskanäle definiert?'
WHERE question_text_en LIKE 'Are communication channels defined%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Erfolge und Projekte kommuniziert?'
WHERE question_text_en LIKE 'Are successes and projects communicated%';

-- 4.4 Dokumentierte Information
UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Dokumente erstellt und versioniert?'
WHERE question_text_en LIKE 'How are documents created and versioned%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Aufzeichnungen aufbewahrt?'
WHERE question_text_en LIKE 'How are records preserved%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es ein System zur Verwaltung vertraulicher Daten?'
WHERE question_text_en LIKE 'Is there a system for managing confidential data%';

-- 4.5 Wissensmanagement
UPDATE iso_criteria_questions 
SET question_text = 'Wie wird Wissen identifiziert und geteilt?'
WHERE question_text_en LIKE 'How is knowledge identified and shared%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Maßnahmen gegen Wissensverlust?'
WHERE question_text_en LIKE 'Are there measures against knowledge loss%';

-- 4.6 Kommunikation & Dokumentation
UPDATE iso_criteria_questions 
SET question_text = 'Wie wird sichergestellt, dass Aktualisierungen zeitnah kommuniziert werden?'
WHERE question_text_en LIKE 'How is it ensured that updates are communicated promptly%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Kennzeichnungen regelmäßig geprüft?'
WHERE question_text_en LIKE 'Are labels regularly checked%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es eine Kommunikationsmatrix?'
WHERE question_text_en LIKE 'Is there a communication matrix%';

-- Section 5: Betrieb
-- 5.1 Betriebliche Planung und Steuerung
UPDATE iso_criteria_questions 
SET question_text = 'Sind betriebliche Prozesse dokumentiert?'
WHERE question_text_en LIKE 'Are operational processes documented%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Prozessziele und Bewertungen?'
WHERE question_text_en LIKE 'Are there process objectives and evaluations%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Kundenanforderungen erfüllt?'
WHERE question_text_en LIKE 'How are customer requirements met%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Qualitätsprüfungen und Freigaben?'
WHERE question_text_en LIKE 'Are there quality inspections and approvals%';

-- 5.2 Management of Change
UPDATE iso_criteria_questions 
SET question_text = 'Werden Auswirkungen von Änderungen bewertet?'
WHERE question_text_en LIKE 'Are impacts of changes assessed%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Mitarbeiter informiert?'
WHERE question_text_en LIKE 'How are employees informed%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Freigabeprozesse?'
WHERE question_text_en LIKE 'Are there approval processes%';

-- 5.3 Beschaffung & Lieferantenmanagement
UPDATE iso_criteria_questions 
SET question_text = 'Werden Lieferanten nach Kriterien bewertet?'
WHERE question_text_en LIKE 'Are suppliers assessed according to criteria%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Abweichungen behandelt?'
WHERE question_text_en LIKE 'How are deviations handled%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden ökologische/ethische Aspekte berücksichtigt?'
WHERE question_text_en LIKE 'Are ecological/ethical aspects considered%';

-- 5.4 Notfallvorsorge und Gefahrenabwehr
UPDATE iso_criteria_questions 
SET question_text = 'Sind Ersthelfer verfügbar und geschult?'
WHERE question_text_en LIKE 'Are first aiders available and trained%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Nachbereitungsprozesse für Notfälle?'
WHERE question_text_en LIKE 'Are there follow-up processes for emergencies%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es einen Alarmplan?'
WHERE question_text_en LIKE 'Is there an alarm plan%';

-- 5.5 Instandhaltungsmanagement
UPDATE iso_criteria_questions 
SET question_text = 'Gibt es präventive Wartungspläne?'
WHERE question_text_en LIKE 'Are there preventive maintenance plans%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie oft werden Wartungsarbeiten durchgeführt?'
WHERE question_text_en LIKE 'How often are maintenance activities performed%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Verantwortlichkeiten verwaltet?'
WHERE question_text_en LIKE 'How are responsibilities managed%';

-- 5.6 Nachhaltigkeit & Umweltschutz
UPDATE iso_criteria_questions 
SET question_text = 'Werden umweltfreundliche Materialien verwendet?'
WHERE question_text_en LIKE 'Are environmentally friendly materials used%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es CO₂-Reduktionsziele?'
WHERE question_text_en LIKE 'Are there CO₂ reduction targets%';

UPDATE iso_criteria_questions 
SET question_text = 'Wird der Klimawandel bei der Bewertung berücksichtigt?'
WHERE question_text_en LIKE 'Is climate change considered in the assessment%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden ethische Regeln eingehalten?'
WHERE question_text_en LIKE 'Are ethical rules observed%';

-- Section 6: Leistungsbewertung
-- 6.1 Überwachung und Messung
UPDATE iso_criteria_questions 
SET question_text = 'Welche Kennzahlen werden erhoben?'
WHERE question_text_en LIKE 'Which metrics are collected%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Trendanalysen?'
WHERE question_text_en LIKE 'Are there trend analyses%';

-- 6.2 Interne Audits
UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Auditfeststellungen dokumentiert?'
WHERE question_text_en LIKE 'How are audit findings documented%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden unangekündigte Audits durchgeführt?'
WHERE question_text_en LIKE 'Are unannounced audits conducted%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie wird der Auditumfang definiert?'
WHERE question_text_en LIKE 'How is the audit scope defined%';

UPDATE iso_criteria_questions 
SET question_text = 'Sind Auditoren qualifiziert/unabhängig?'
WHERE question_text_en LIKE 'Are auditors qualified/independent%';

-- 6.3 Managementbewertung
UPDATE iso_criteria_questions 
SET question_text = 'Führt die oberste Leitung Bewertungen durch?'
WHERE question_text_en LIKE 'Does top management conduct reviews%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Maßnahmen abgeleitet?'
WHERE question_text_en LIKE 'Are actions derived%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Ergebnisse dokumentiert?'
WHERE question_text_en LIKE 'Are results documented%';

-- 6.4 Feedback & Lernen
UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Lessons-Learned-Mechanismen?'
WHERE question_text_en LIKE 'Are there lessons-learned mechanisms%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es regelmäßige Feedbacksysteme?'
WHERE question_text_en LIKE 'Are there regular feedback systems%';

-- Section 7: Verbesserung
-- 7.1 Kontinuierliche Verbesserung
UPDATE iso_criteria_questions 
SET question_text = 'Werden Erfolgsgeschichten geteilt?'
WHERE question_text_en LIKE 'Are success stories shared%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Workshops zur kontinuierlichen Verbesserung?'
WHERE question_text_en LIKE 'Are there continuous improvement workshops%';

-- 7.2 Nichtkonformitäten & Korrekturmaßnahmen
UPDATE iso_criteria_questions 
SET question_text = 'Gibt es einen Melde-/Bearbeitungsprozess?'
WHERE question_text_en LIKE 'Is there a reporting/processing process%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Ursachenanalysen durchgeführt?'
WHERE question_text_en LIKE 'Are root cause analyses conducted%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie schnell werden Meldungen bearbeitet?'
WHERE question_text_en LIKE 'How quickly are reports processed%';

-- 7.4 Lessons Learned
UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Prozesse für Innovation und Entwicklung?'
WHERE question_text_en LIKE 'Are there processes for innovation and development%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Mitarbeiter motiviert, Ideen einzureichen?'
WHERE question_text_en LIKE 'How are employees motivated to submit ideas%';

-- 7.5 Compliance & Ethik
UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Compliance-Anforderungen umgesetzt?'
WHERE question_text_en LIKE 'How are compliance requirements implemented%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Geschäftspartner auditiert?'
WHERE question_text_en LIKE 'Are business partners audited%';
