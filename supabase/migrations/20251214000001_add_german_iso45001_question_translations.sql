-- Add German translations for ISO 45001 questions
-- This migration updates the question_text column with German translations
-- while keeping the English text in question_text_en

-- Section 1: Kontext der Organisation
-- 1.1 Externe und interne Themen identifizieren
UPDATE iso_criteria_questions 
SET question_text = 'Welche bundes-, landes- oder kommunalrechtlichen Vorschriften sind zu beachten (z.B. Brandschutz, Arbeitssicherheit, Gefahrstoffmanagement)?'
WHERE question_text_en LIKE 'Which federal, regional, or local laws and regulations must be observed%';

UPDATE iso_criteria_questions 
SET question_text = 'Wer überwacht die Einhaltung dieser Anforderungen und wie wird sie dokumentiert und kommuniziert?'
WHERE question_text_en LIKE 'Who monitors compliance with these requirements and how is it documented%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden aktuelle Branchentrends (Digitalisierung, Home Office, hybride Arbeitsmodelle) in den Arbeitsschutz integriert?'
WHERE question_text_en LIKE 'How are current industry trends (digitalization, home office, hybrid work models) integrated%';

-- 1.2 Interessierte Parteien und deren Anforderungen
UPDATE iso_criteria_questions 
SET question_text = 'Müssen Behörden oder Berufsgenossenschaften regelmäßig über Personaländerungen informiert werden (z.B. Wechsel der Fachkraft für Arbeitssicherheit)?'
WHERE question_text_en LIKE 'Must authorities or professional associations be regularly informed about personnel changes%';

UPDATE iso_criteria_questions 
SET question_text = 'Welche Anforderungen haben Mitarbeiter und externe Dienstleister bezüglich der Zusammenarbeit mit Beauftragten?'
WHERE question_text_en LIKE 'What requirements do employees and external service providers have regarding cooperation%';

-- 1.3 Anwendungsbereich des Arbeitsschutz-Managementsystems
UPDATE iso_criteria_questions 
SET question_text = 'Ist der Anwendungsbereich klar definiert?'
WHERE question_text_en LIKE 'Is the scope clearly defined%';

UPDATE iso_criteria_questions 
SET question_text = 'Sind alle Arbeitsbereiche und Prozesse einbezogen, in denen Fachkräfte für Arbeitssicherheit oder andere Beauftragte eingesetzt werden müssen?'
WHERE question_text_en LIKE 'Are all work areas and processes included where occupational safety specialists%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Freiberufler oder Leiharbeiter hinsichtlich Arbeitsschutzanforderungen berücksichtigt?'
WHERE question_text_en LIKE 'Are freelancers or temporary workers considered regarding occupational safety%';

-- 1.4 Managementsystem und Schnittstellen
UPDATE iso_criteria_questions 
SET question_text = 'Wie wird das Zusammenwirken verschiedener Beauftragter (z.B. SiFa, Datenschutz, Qualität) sichergestellt?'
WHERE question_text_en LIKE 'How are the interactions between different officers (e.g., OHS, data protection, quality) ensured%';

UPDATE iso_criteria_questions 
SET question_text = 'Sind Rollen und Verantwortlichkeiten an den Schnittstellen klar definiert?'
WHERE question_text_en LIKE 'Are roles and responsibilities at the interfaces clearly defined%';

-- Section 2: Führung (Leadership)
-- 2.1 Verantwortung und Verpflichtung der obersten Leitung
UPDATE iso_criteria_questions 
SET question_text = 'Gibt es einen direkten Berichtsweg von den SiFa-Beauftragten zur obersten Leitung (regelmäßige Treffen, Berichte)?'
WHERE question_text_en LIKE 'Is there a direct reporting line from OHS officers to top management%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie stellt die Geschäftsleitung sicher, dass Beauftragte ausreichende Ressourcen und Befugnisse erhalten?'
WHERE question_text_en LIKE 'How does management ensure that officers receive sufficient resources and authority%';

-- 2.2 Arbeitsschutzpolitik
UPDATE iso_criteria_questions 
SET question_text = 'Ist die Politik so formuliert, dass die Rolle und Aufgaben der SiFa explizit einbezogen sind?'
WHERE question_text_en LIKE 'Is the policy formulated to explicitly include the role and tasks of OHS officers%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden die Beteiligungsrechte der Mitarbeiter und Beauftragten betont?'
WHERE question_text_en LIKE 'Are the participation rights of employees and officers emphasized%';

-- 2.3 Rollen, Verantwortlichkeiten und Befugnisse
UPDATE iso_criteria_questions 
SET question_text = 'Sind die Aufgaben und Kompetenzen der SiFa dokumentiert (Stellenbeschreibung, Organigramm)?'
WHERE question_text_en LIKE 'Are the tasks and competencies of the OHS officer documented%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie wird sichergestellt, dass andere Beauftragte (Brandschutz, Sicherheitsbeauftragter, Betriebsarzt) klar abgegrenzt und koordiniert zusammenarbeiten?'
WHERE question_text_en LIKE 'How is it ensured that other officers (fire protection, safety officer, occupational physician)%';

UPDATE iso_criteria_questions 
SET question_text = 'Dürfen Beauftragte Prozesse bei akuter Gefahr stoppen (Stop-Work-Authority)?'
WHERE question_text_en LIKE 'Are officers allowed to stop processes when there is acute danger%';

-- 2.4 Beteiligung und Konsultation der Beschäftigten
UPDATE iso_criteria_questions 
SET question_text = 'Werden Beauftragte in Mitarbeiterbefragungen oder ASA-Sitzungen einbezogen?'
WHERE question_text_en LIKE 'Are officers involved in employee surveys or occupational safety committee meetings%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es einen strukturierten Prozess für die Einbindung bei betrieblichen Änderungen?'
WHERE question_text_en LIKE 'Is there a structured process for involvement in operational changes%';

-- 2.5 Besondere Beauftragte und Fachfunktionen
UPDATE iso_criteria_questions 
SET question_text = 'Ist die Rolle offiziell bestellt und mit Befugnissen ausgestattet (SiFa)?'
WHERE question_text_en LIKE 'Is the role officially appointed and equipped with authority%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie wird die fachliche Kompetenz sichergestellt (Weiterbildung, Schulungen)?'
WHERE question_text_en LIKE 'How is professional competence ensured (continuing education, training)%';

UPDATE iso_criteria_questions 
SET question_text = 'Wird die regelkonforme Bestellung nach DGUV/ArbSchG eingehalten und dokumentiert (Fachkraft für Arbeitssicherheit)?'
WHERE question_text_en LIKE 'Is the legal deployment according to DGUV/ArbSchG complied with and documented%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Empfehlungen an die Geschäftsleitung weitergegeben?'
WHERE question_text_en LIKE 'How are recommendations forwarded to management%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden arbeitsmedizinische Untersuchungen geplant und durchgeführt (Betriebsarzt)?'
WHERE question_text_en LIKE 'Are occupational medical examinations planned and conducted%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie erfolgt die Abstimmung zwischen Betriebsarzt und SiFa?'
WHERE question_text_en LIKE 'How is coordination between occupational physician and OHS officer%';

UPDATE iso_criteria_questions 
SET question_text = 'Sind alle Brandschutzkonzepte erstellt und aktuell (Brandschutzbeauftragter)?'
WHERE question_text_en LIKE 'Are all fire protection concepts created and current%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Evakuierungsübungen organisiert?'
WHERE question_text_en LIKE 'Are evacuation drills organized%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Sicherheitsbeauftragte regelmäßig geschult?'
WHERE question_text_en LIKE 'Are safety officers regularly trained%';

UPDATE iso_criteria_questions 
SET question_text = 'Haben sie Meldekanäle für die Ereignismeldung?'
WHERE question_text_en LIKE 'Do they have reporting channels for incident reporting%';

-- Section 3: Planung
-- 3.1 Maßnahmen zum Umgang mit Risiken und Chancen
UPDATE iso_criteria_questions 
SET question_text = 'Gibt es einen systematischen Prozess für die Risiko- und Chancenbewertung?'
WHERE question_text_en LIKE 'Is there a systematic process for risk and opportunity assessment%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Risiken identifiziert, die durch fehlende oder unqualifizierte Beauftragte entstehen könnten?'
WHERE question_text_en LIKE 'Are risks identified that could arise from missing or unqualified officers%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Vertretungsregelungen bei Abwesenheiten?'
WHERE question_text_en LIKE 'Are there backup arrangements in case of absences%';

-- 3.2 Rechtliche und andere Anforderungen
UPDATE iso_criteria_questions 
SET question_text = 'Gibt es eine Übersicht aller Pflichten und Vorschriften für Beauftragte?'
WHERE question_text_en LIKE 'Is there an overview of all obligations and regulations for officers%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden die Verpflichtungen einzelner Beauftragter regelmäßig bewertet und aktualisiert?'
WHERE question_text_en LIKE 'Are the obligations of individual officers regularly evaluated and updated%';

-- 3.3 Arbeitsschutzziele
UPDATE iso_criteria_questions 
SET question_text = 'Sind Ziele (z.B. Unfallreduzierung, ergonomische Verbesserungen) definiert und werden sie bewertet?'
WHERE question_text_en LIKE 'Are objectives (e.g., accident reduction, ergonomic improvements) defined and evaluated%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie wird mit nicht erreichten Zielen umgegangen?'
WHERE question_text_en LIKE 'How is it handled when objectives are not achieved%';

-- 3.4 Notfall- und Krisenplanung
UPDATE iso_criteria_questions 
SET question_text = 'Sind die Rollen der Beauftragten in Notfällen definiert?'
WHERE question_text_en LIKE 'Are the roles of officers in emergencies defined%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie wird die Erreichbarkeit und Kommunikation sichergestellt?'
WHERE question_text_en LIKE 'How is accessibility and communication ensured%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Notfallpläne für Personalausfälle?'
WHERE question_text_en LIKE 'Are there emergency plans for personnel absences%';

-- 3.6 Detaillierte Zielplanung
UPDATE iso_criteria_questions 
SET question_text = 'Sind Ziele in kurz-, mittel- und langfristige Phasen unterteilt?'
WHERE question_text_en LIKE 'Are objectives divided into short, medium, and long-term phases%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es eine Abstimmung der Ziele mit den Unternehmenszielen?'
WHERE question_text_en LIKE 'Is there alignment of objectives with corporate goals%';

-- Section 4: Unterstützung
-- 4.1 Ressourcenmanagement & Budget
UPDATE iso_criteria_questions 
SET question_text = 'Gibt es ein Budget für Beauftragte (Schulungen, Fachliteratur, Beratung)?'
WHERE question_text_en LIKE 'Is there a budget for officers (training, literature, consulting)%';

UPDATE iso_criteria_questions 
SET question_text = 'Haben Beauftragte ausreichende Arbeitsmittel (Messgeräte, Software, PSA)?'
WHERE question_text_en LIKE 'Do officers have sufficient work equipment (measuring devices, software, PPE)%';

-- 4.2 Kompetenz und Qualifikation
UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Qualifikationsanforderungen für jede Rolle?'
WHERE question_text_en LIKE 'Are there qualification requirements for each role%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie wird die Weiterbildungsplanung gehandhabt?'
WHERE question_text_en LIKE 'How is continuing education planning managed%';

-- 4.3 Bewusstsein und Kommunikation
UPDATE iso_criteria_questions 
SET question_text = 'Werden neue Mitarbeiter über Rollen und Erreichbarkeit informiert?'
WHERE question_text_en LIKE 'Are new employees informed about roles and accessibility%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Newsletter, Aushänge, interne Kommunikation über Aktualisierungen?'
WHERE question_text_en LIKE 'Are there newsletters, notices, internal communication about updates%';

-- 4.4 Dokumentierte Information
UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Ergebnisse von Beauftragten archiviert?'
WHERE question_text_en LIKE 'How are results from officers archived%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Aufzeichnungen (Prüfberichte, Wartung) systematisch gespeichert?'
WHERE question_text_en LIKE 'Are records (inspection reports, maintenance) systematically stored%';

-- 4.5 Wissensmanagement
UPDATE iso_criteria_questions 
SET question_text = 'Wie wird Know-how gesichert (Dokumentation, Wiki, Intranet)?'
WHERE question_text_en LIKE 'How is know-how secured (documentation, wiki, intranet)%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es ein zentrales Repository für Arbeitsschutzinformationen?'
WHERE question_text_en LIKE 'Is there a central repository for OHS information%';

-- 4.6 Kommunikation & Dokumentation
UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Aktualisierungen von Prozessen oder Sicherheitshinweisen kommuniziert?'
WHERE question_text_en LIKE 'How are updates to processes or safety notices communicated%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Fluchtwege, Prüfsiegel usw. regelmäßig kontrolliert?'
WHERE question_text_en LIKE 'Are escape routes, inspection seals, etc. regularly checked%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es eine interne und externe Kommunikationsmatrix?'
WHERE question_text_en LIKE 'Is there an internal and external communication matrix%';

-- Section 5: Betrieb
-- 5.1 Betriebliche Planung und Steuerung
UPDATE iso_criteria_questions 
SET question_text = 'Werden Beauftragte frühzeitig in Prozesse eingebunden (z.B. Maschinenbeschaffung, Neubau)?'
WHERE question_text_en LIKE 'Are officers involved early in processes%';

UPDATE iso_criteria_questions 
SET question_text = 'Sind Arbeitsprozesse so gestaltet, dass die Sicherheit berücksichtigt wird?'
WHERE question_text_en LIKE 'Are work processes designed to consider safety%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Schutzmaßnahmen konsequent umgesetzt?'
WHERE question_text_en LIKE 'Are protective measures consistently implemented%';

-- 5.2 Gefährdungsbeurteilung & Schutzmaßnahmen
UPDATE iso_criteria_questions 
SET question_text = 'Werden Arbeitsplätze regelmäßig inspiziert und dokumentiert?'
WHERE question_text_en LIKE 'Are workplaces regularly inspected and documented%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Mitarbeiter einbezogen?'
WHERE question_text_en LIKE 'How are employees involved%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Gefährdungsbeurteilungen regelmäßig aktualisiert?'
WHERE question_text_en LIKE 'Are risk assessments regularly updated%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie wird die Wirksamkeit überprüft?'
WHERE question_text_en LIKE 'How is effectiveness verified%';

-- 5.3 Management of Change
UPDATE iso_criteria_questions 
SET question_text = 'Gibt es etablierte Verfahren einschließlich Arbeitsschutz-Risikoanalyse?'
WHERE question_text_en LIKE 'Are there established procedures including OHS risk analysis%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Mitarbeiter informiert?'
WHERE question_text_en LIKE 'How are employees informed%';

UPDATE iso_criteria_questions 
SET question_text = 'Ist die SiFa Teil des Freigabeprozesses?'
WHERE question_text_en LIKE 'Is the OHS officer part of the approval process%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden TRGS-600-Substitutionsprüfungen angewendet?'
WHERE question_text_en LIKE 'Are TRGS-600 substitution assessments applied%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Auswirkungen auf andere Beauftragte berücksichtigt?'
WHERE question_text_en LIKE 'Are impacts on other officers considered%';

-- 5.4 Beschaffung & Lieferantenmanagement
UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Beschaffungsrichtlinien zur Einbeziehung von Beauftragten?'
WHERE question_text_en LIKE 'Are there procurement guidelines for involving officers%';

UPDATE iso_criteria_questions 
SET question_text = 'Müssen externe Partner Arbeitsschutzstandards einhalten und werden sie überwacht?'
WHERE question_text_en LIKE 'Must external parties comply with OHS standards and are they monitored%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie wird die Sicherheit bei gemeinsamen Projekten koordiniert?'
WHERE question_text_en LIKE 'How is safety coordinated in joint projects%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Dienstleister unterwiesen?'
WHERE question_text_en LIKE 'How are service providers instructed%';

-- 5.5 Notfallvorsorge und Gefahrenabwehr
UPDATE iso_criteria_questions 
SET question_text = 'Sind Ersthelfer verfügbar und geschult?'
WHERE question_text_en LIKE 'Are first aiders available and trained%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es eine Nachbereitung nach Notfällen?'
WHERE question_text_en LIKE 'Is there follow-up after emergencies%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Beauftragte in Notfallübungen einbezogen?'
WHERE question_text_en LIKE 'Are officers involved in emergency drills%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es einen Alarmplan mit Kontaktdaten?'
WHERE question_text_en LIKE 'Is there an alarm plan including contact details%';

-- 5.6 Instandhaltungsmanagement
UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Wartungspläne für Anlagen?'
WHERE question_text_en LIKE 'Are there maintenance plans for equipment%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie oft werden Wartungsarbeiten durchgeführt?'
WHERE question_text_en LIKE 'How often are maintenance activities performed%';

-- 5.7 Betriebliche Steuerung und Prozessorganisation
UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Arbeitsbereiche verwaltet?'
WHERE question_text_en LIKE 'How are workspaces managed%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Werkzeuge für Raumzuweisung und Nutzungsanalyse?'
WHERE question_text_en LIKE 'Are there tools for space allocation and utilization analysis%';

-- 5.9 Sicherheits- und Gesundheitsmanagement
UPDATE iso_criteria_questions 
SET question_text = 'Werden Sicherheitskonzepte regelmäßig geprüft (Brandschutz, Evakuierung)?'
WHERE question_text_en LIKE 'Are safety concepts regularly tested (fire protection, evacuation)%';

-- 5.10 Nachhaltigkeit und Umweltschutz
UPDATE iso_criteria_questions 
SET question_text = 'Werden umweltfreundliche Produkte verwendet?'
WHERE question_text_en LIKE 'Are environmentally friendly products used%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es CO₂-Reduktionsziele im Kontext des Arbeitsschutzes?'
WHERE question_text_en LIKE 'Are there CO₂ reduction targets in the context of occupational safety%';

UPDATE iso_criteria_questions 
SET question_text = 'Wird der Klimawandel in der Risiko- und Stakeholder-Analyse berücksichtigt?'
WHERE question_text_en LIKE 'Is climate change considered in risk and stakeholder analysis%';

-- Section 6: Leistungsbewertung
-- 6.1 Überwachung, Messung, Analyse
UPDATE iso_criteria_questions 
SET question_text = 'Welche KPIs werden verwendet (Unfälle, Schweregrad, Krankenquote)?'
WHERE question_text_en LIKE 'Which KPIs (accidents, severity, sickness rate) are used%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Trends analysiert?'
WHERE question_text_en LIKE 'Are trends analyzed%';

-- 6.2 Interne Audits
UPDATE iso_criteria_questions 
SET question_text = 'Gibt es einen Auditplan für alle Bereiche?'
WHERE question_text_en LIKE 'Is there an audit plan for all areas%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden unangekündigte Audits durchgeführt?'
WHERE question_text_en LIKE 'Are unannounced audits conducted%';

UPDATE iso_criteria_questions 
SET question_text = 'Was ist der Auditumfang?'
WHERE question_text_en LIKE 'What is the audit scope%';

UPDATE iso_criteria_questions 
SET question_text = 'Sind Auditoren qualifiziert und unabhängig?'
WHERE question_text_en LIKE 'Are auditors qualified and independent%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Ergebnisse bewertet und Maßnahmen abgeleitet?'
WHERE question_text_en LIKE 'How are results evaluated and actions derived%';

-- 6.3 Managementbewertung
UPDATE iso_criteria_questions 
SET question_text = 'Werden Arbeitsschutz-Leistungsdaten systematisch überprüft?'
WHERE question_text_en LIKE 'Are OHS performance data systematically reviewed%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Maßnahmen aus der Bewertung abgeleitet?'
WHERE question_text_en LIKE 'Are actions derived from the review%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Ergebnisse dokumentiert?'
WHERE question_text_en LIKE 'Are results documented%';

-- 6.4 Feedback & Lernen
UPDATE iso_criteria_questions 
SET question_text = 'Werden Vorfälle systematisch analysiert?'
WHERE question_text_en LIKE 'Are incidents systematically analyzed%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Feedbacksysteme für Mitarbeiter?'
WHERE question_text_en LIKE 'Are there feedback systems for employees%';

-- Section 7: Verbesserung
-- 7.1 Kontinuierliche Verbesserung
UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Verfahren zur Erfassung und Analyse von Nichtkonformitäten?'
WHERE question_text_en LIKE 'Are there procedures for capturing and analyzing non-conformities%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Maßnahmen auf Wirksamkeit überprüft?'
WHERE question_text_en LIKE 'Are measures checked for effectiveness%';

-- 7.2 Nichtkonformitäten & Korrekturmaßnahmen
UPDATE iso_criteria_questions 
SET question_text = 'Gibt es ein systematisches Verfahren zur Meldung/Bearbeitung von Abweichungen?'
WHERE question_text_en LIKE 'Is there a systematic procedure for reporting/processing deviations%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Korrekturmaßnahmen dokumentiert?'
WHERE question_text_en LIKE 'Are corrective actions documented%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es ein Meldesystem für Vorfälle?'
WHERE question_text_en LIKE 'Is there a reporting system for incidents%';

-- 7.3 Management psychosozialer Risiken
UPDATE iso_criteria_questions 
SET question_text = 'Werden psychosoziale Risiken erfasst und präventiv behandelt?'
WHERE question_text_en LIKE 'Are psychosocial risks captured and preventively addressed%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es psychologische Unterstützung nach kritischen Ereignissen?'
WHERE question_text_en LIKE 'Is there psychological support after critical events%';

-- 7.4 Lessons Learned
UPDATE iso_criteria_questions 
SET question_text = 'Werden Workshops nach Projekten oder Vorfällen durchgeführt?'
WHERE question_text_en LIKE 'Are workshops conducted after projects or incidents%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Erkenntnisse in Prozessen dokumentiert?'
WHERE question_text_en LIKE 'Are findings documented in processes%';

-- 7.5 Compliance & Ethik
UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Arbeitsschutz-Compliance-Anforderungen umgesetzt?'
WHERE question_text_en LIKE 'How are OHS compliance requirements implemented%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Geschäftspartner auditiert?'
WHERE question_text_en LIKE 'Are business partners audited%';

-- 7.6 Innovation und Gesundheitsprogramme
UPDATE iso_criteria_questions 
SET question_text = 'Werden digitale Gesundheit, Wearables, ergonomische Hilfsmittel bewertet?'
WHERE question_text_en LIKE 'Are digital health, wearables, ergonomic aids evaluated%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es ein Budget für Gesundheitsförderung?'
WHERE question_text_en LIKE 'Is there a budget for health promotion%';

-- Section 8: Glossar
-- 8.1 Zusätzliche Informationen
UPDATE iso_criteria_questions 
SET question_text = 'Sind Definitionen für digitale Gesundheit, Wearables, AR-Brillen, Exoskelette dokumentiert?'
WHERE question_text_en LIKE 'Are definitions for digital health, wearables, AR glasses, exoskeletons documented%';
