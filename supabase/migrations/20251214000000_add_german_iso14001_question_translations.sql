-- Add German translations for ISO 14001 questions
-- This migration updates the question_text column with German translations
-- while keeping the English text in question_text_en

-- Section 1: Kontext der Organisation
-- 1.1 Externe und interne Themen identifizieren
UPDATE iso_criteria_questions 
SET question_text = 'Ermittlung interner Faktoren (Organisationsstruktur, Kultur, Technologien, Ressourcen), die das Umweltmanagementsystem (UMS) beeinflussen.'
WHERE question_text_en = 'Identification of internal factors (organizational structure, culture, technologies, resources) affecting the environmental management system (EMS).';

UPDATE iso_criteria_questions 
SET question_text = 'Ermittlung externer Faktoren wie rechtliche Anforderungen, Marktbedingungen, gesellschaftliche Erwartungen und Umweltbedingungen.'
WHERE question_text_en = 'Identification of external factors such as legal requirements, market conditions, societal expectations, and environmental conditions.';

UPDATE iso_criteria_questions 
SET question_text = 'Berücksichtigung des Klimawandels als externer Faktor, einschließlich Risiken (Extremwetter, Lieferkettenunterbrechungen) und Chancen (CO₂-Reduktion, grüne Innovation).'
WHERE question_text_en = 'Consideration of climate change as an external factor, including risks (extreme weather, supply chain disruption) and opportunities (CO₂ reduction, green innovation).';

UPDATE iso_criteria_questions 
SET question_text = 'Regelmäßige Überwachung und Aktualisierung dieser Faktoren mittels Werkzeugen wie SWOT-Analyse und Risikobewertungen.'
WHERE question_text_en = 'Regular monitoring and updating of these factors using tools such as SWOT analysis and risk assessments.';

UPDATE iso_criteria_questions 
SET question_text = 'Einbeziehung klimabetroffener Prozesse, einschließlich Rohstoffverfügbarkeit und Logistik.'
WHERE question_text_en = 'Inclusion of processes affected by climate change, including raw material availability and logistics.';

UPDATE iso_criteria_questions 
SET question_text = 'Berücksichtigung regionaler Abfallentsorgungsinfrastruktur und Entsorgungsvorschriften.'
WHERE question_text_en = 'Consideration of regional waste management infrastructure and disposal regulations.';

-- Match by English text patterns for existing imported data
UPDATE iso_criteria_questions 
SET question_text = 'Welche internen Faktoren (Struktur, Kultur, Technologien, Ressourcen) beeinflussen das UMS?'
WHERE question_text_en LIKE 'Which internal factors (structure, culture, technologies, resources) influence the EMS%';

UPDATE iso_criteria_questions 
SET question_text = 'Welche externen Faktoren (Gesetze, Markt, gesellschaftliche Erwartungen) beeinflussen das UMS?'
WHERE question_text_en LIKE 'Which external factors (laws, market, societal expectations) affect the EMS%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie wird der Klimawandel als externer Faktor berücksichtigt (Risiken + Chancen)?'
WHERE question_text_en LIKE 'How is climate change considered as an external factor%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden diese Themen regelmäßig überwacht und aktualisiert (z.B. SWOT, Risikoanalyse)?'
WHERE question_text_en LIKE 'Are these issues regularly monitored and updated%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden alle klimarelevanten Prozesse berücksichtigt (z.B. Rohstoffe, Lieferkette)?'
WHERE question_text_en LIKE 'Are all climate-relevant processes considered%';

UPDATE iso_criteria_questions 
SET question_text = 'Welche regionalen Entsorgungsinfrastrukturen beeinflussen das UMS?'
WHERE question_text_en LIKE 'Which regional disposal infrastructures influence the EMS%';

-- 1.2 Risikobasierter Ansatz im Klimakontext
UPDATE iso_criteria_questions 
SET question_text = 'Wie werden die Auswirkungen des Klimawandels in die Umwelt- und Klimastrategie integriert?'
WHERE question_text_en LIKE 'How are impacts of climate change integrated into environmental and climate strategy%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Prozesse zur Ableitung von Maßnahmen aus Chancen und Risiken?'
WHERE question_text_en LIKE 'Are there processes for deriving actions from opportunities and risks%';

UPDATE iso_criteria_questions 
SET question_text = 'Sind diese Faktoren dokumentiert und werden regelmäßig überprüft?'
WHERE question_text_en LIKE 'Are these factors documented and regularly reviewed%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie fließen Klimafaktoren in strategische Entscheidungen ein?'
WHERE question_text_en LIKE 'How do climate factors flow into strategic decisions%';

-- 1.3 Erwartungen interessierter Parteien (Stakeholder)
UPDATE iso_criteria_questions 
SET question_text = 'Welche internen und externen Stakeholder sind relevant?'
WHERE question_text_en LIKE 'Which internal and external stakeholders are relevant%';

UPDATE iso_criteria_questions 
SET question_text = 'Welche Umwelt- und Klimaanforderungen haben sie?'
WHERE question_text_en LIKE 'What environmental and climate requirements do they have%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Klimaschutzanforderungen (z.B. SBT, CSRD) erfasst und priorisiert?'
WHERE question_text_en LIKE 'How are climate protection requirements%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Routinen zur Identifizierung geänderter Anforderungen (Umfragen, Bewertungen)?'
WHERE question_text_en LIKE 'Are there routines for identifying changed requirements%';

-- 1.4 Anwendungsbereich des Managementsystems
UPDATE iso_criteria_questions 
SET question_text = 'Welche Standorte, Aktivitäten, Produkte sind im UMS enthalten?'
WHERE question_text_en LIKE 'Which locations, activities, products are included in the EMS%';

UPDATE iso_criteria_questions 
SET question_text = 'Sind alle klimarelevanten Prozesse enthalten?'
WHERE question_text_en LIKE 'Are all climate-relevant processes included%';

UPDATE iso_criteria_questions 
SET question_text = 'Sind Ausschlüsse begründet und dokumentiert?'
WHERE question_text_en LIKE 'Are exclusions justified and documented%';

UPDATE iso_criteria_questions 
SET question_text = 'Wird der Anwendungsbereich intern und extern kommuniziert?'
WHERE question_text_en LIKE 'Is the scope communicated internally and externally%';

-- 1.5 Schnittstellen zu anderen Managementsystemen
UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Überschneidungen mit ISO 9001/50001 etc. gehandhabt?'
WHERE question_text_en LIKE 'How is overlap with ISO 9001/50001%';

UPDATE iso_criteria_questions 
SET question_text = 'Sind Ausnahmen transparent begründet?'
WHERE question_text_en LIKE 'Are exceptions transparently justified%';

-- 1.6 Managementsystem und Prozesse
UPDATE iso_criteria_questions 
SET question_text = 'Existiert eine Prozesslandschaft einschließlich umwelt- und klimarelevanter Prozesse?'
WHERE question_text_en LIKE 'Does a process landscape exist including environmental and climate%';

UPDATE iso_criteria_questions 
SET question_text = 'Wer sind die Prozessverantwortlichen?'
WHERE question_text_en LIKE 'Who are the process owners%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es KPIs für ökologische Aspekte (CO₂, Abfall, Energie)?'
WHERE question_text_en LIKE 'Are there KPIs for ecological aspects%';

UPDATE iso_criteria_questions 
SET question_text = 'Sind Schnittstellen zwischen Prozessen identifiziert und optimiert?'
WHERE question_text_en LIKE 'Are interfaces between processes identified and optimized%';

-- Section 2: Führung (Leadership)
-- 2.1 Verantwortung und Verpflichtung der Leitung
UPDATE iso_criteria_questions 
SET question_text = 'Wie zeigt die oberste Leitung ihre Unterstützung für das UMS und den Klimaschutz?'
WHERE question_text_en LIKE 'How does top management demonstrate support for EMS and climate protection%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es verabschiedete Klima- und Umweltziele?'
WHERE question_text_en LIKE 'Are there adopted climate and environmental objectives%';

-- 2.2 Umweltpolitik
UPDATE iso_criteria_questions 
SET question_text = 'Enthält die Umweltpolitik Aussagen zum Klimaschutz und zur Emissionsreduzierung?'
WHERE question_text_en LIKE 'Does the environmental policy contain statements on climate protection%';

UPDATE iso_criteria_questions 
SET question_text = 'Ist sie mit der strategischen Ausrichtung verknüpft?'
WHERE question_text_en LIKE 'Is it linked to the strategic direction%';

UPDATE iso_criteria_questions 
SET question_text = 'Enthält sie eine Verpflichtung zur kontinuierlichen Verbesserung und Erfüllung von Anforderungen?'
WHERE question_text_en LIKE 'Does it contain commitment to continuous improvement and compliance%';

UPDATE iso_criteria_questions 
SET question_text = 'Wird sie regelmäßig aktualisiert?'
WHERE question_text_en LIKE 'Is it regularly updated%';

UPDATE iso_criteria_questions 
SET question_text = 'Enthält sie Verpflichtungen zu Abfallvermeidung, Recycling, nachhaltiger Beschaffung?'
WHERE question_text_en LIKE 'Does it contain commitments to waste prevention, recycling, sustainable procurement%';

UPDATE iso_criteria_questions 
SET question_text = 'Unterstützt die Leitung aktiv Klimaschutzprojekte?'
WHERE question_text_en LIKE 'Does management actively support climate protection projects%';

-- 2.3 Rollen, Verantwortlichkeiten und Befugnisse
UPDATE iso_criteria_questions 
SET question_text = 'Sind Umweltrollen klar definiert?'
WHERE question_text_en LIKE 'Are environmental roles clearly defined%';

UPDATE iso_criteria_questions 
SET question_text = 'Haben die Verantwortlichen die Befugnis, Klimaschutzmaßnahmen umzusetzen?'
WHERE question_text_en LIKE 'Do responsible parties have authority to implement climate protection measures%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Vertretungsregelungen?'
WHERE question_text_en LIKE 'Are there backup arrangements%';

-- 2.4 Beteiligung und Konsultation der Beschäftigten
UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Mitarbeiter eingebunden (Schulungen, Workshops, Ideenmanagement)?'
WHERE question_text_en LIKE 'How are employees involved (training, workshops, idea management)%';

UPDATE iso_criteria_questions 
SET question_text = 'Welche Kommunikationskanäle existieren?'
WHERE question_text_en LIKE 'What communication channels exist%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Feedbackmöglichkeiten?'
WHERE question_text_en LIKE 'Are there feedback opportunities%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Informationen zu Umweltthemen kommuniziert?'
WHERE question_text_en LIKE 'How is information about environmental topics communicated%';

-- Section 3: Planung
-- 3.1 Maßnahmen zum Umgang mit Risiken und Chancen
UPDATE iso_criteria_questions 
SET question_text = 'Werden Umwelt- und Klimarisiken identifiziert und bewertet?'
WHERE question_text_en LIKE 'Are environmental and climate risks identified and assessed%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Chancen genutzt (Förderprogramme, grüne Märkte)?'
WHERE question_text_en LIKE 'How are opportunities utilized (funding programs, green markets)%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es eine Priorisierung der Maßnahmen?'
WHERE question_text_en LIKE 'Is there prioritization of actions%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Verantwortlichkeiten und Zeitpläne?'
WHERE question_text_en LIKE 'Are there responsibilities and timeframes%';

-- 3.2 Rechtliche Anforderungen und andere Anforderungen
UPDATE iso_criteria_questions 
SET question_text = 'Existiert ein Rechtskataster für Umwelt/Klima?'
WHERE question_text_en LIKE 'Does a legal register exist for environment/climate%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Rechtsänderungen identifiziert und umgesetzt?'
WHERE question_text_en LIKE 'How are legal changes identified and implemented%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es freiwillige Klimaziele (SBT, Net-Zero)?'
WHERE question_text_en LIKE 'Are there voluntary climate targets (SBT, Net-Zero)%';

UPDATE iso_criteria_questions 
SET question_text = 'Sind Verpflichtungen dokumentiert und werden verfolgt?'
WHERE question_text_en LIKE 'Are commitments documented and tracked%';

-- 3.3 Umweltziele und Planung
UPDATE iso_criteria_questions 
SET question_text = 'Sind die Ziele SMART formuliert?'
WHERE question_text_en LIKE 'Are objectives formulated SMART%';

UPDATE iso_criteria_questions 
SET question_text = 'Welche KPIs werden verwendet (CO₂, Energie, Abfall)?'
WHERE question_text_en LIKE 'Which KPIs are used (CO₂, energy, waste)%';

UPDATE iso_criteria_questions 
SET question_text = 'Sind Maßnahmen, Ressourcen, Verantwortliche definiert?'
WHERE question_text_en LIKE 'Are actions, resources, responsible parties defined%';

UPDATE iso_criteria_questions 
SET question_text = 'Wird über den Fortschritt berichtet?'
WHERE question_text_en LIKE 'Is progress reported%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es konkrete Emissionsreduktions- und Abfallziele?'
WHERE question_text_en LIKE 'Are there concrete emission reduction and waste targets%';

-- 3.4 Notfall- und Krisenplanung
UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Szenarien für klimabedingte Ereignisse (Hitze, Überschwemmung, Lieferketten)?'
WHERE question_text_en LIKE 'Are there scenarios for climate-related events%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Präventivmaßnahmen (Hochwasserschutz, Notstrom)?'
WHERE question_text_en LIKE 'Are there preventive measures (flood protection, emergency power)%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Pläne für Personalausfälle oder umweltkritische Prozesse?'
WHERE question_text_en LIKE 'Are there plans for personnel absences or environmentally critical processes%';

-- 3.5 Bestimmung der Umweltaspekte
UPDATE iso_criteria_questions 
SET question_text = 'Werden alle Prozesse hinsichtlich Umweltauswirkungen bewertet?'
WHERE question_text_en LIKE 'Are all processes assessed regarding environmental impact%';

UPDATE iso_criteria_questions 
SET question_text = 'Wird der Lebenszyklusansatz berücksichtigt?'
WHERE question_text_en LIKE 'Is the life cycle approach considered%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Kriterien/Methoden zur Bewertung der Signifikanz?'
WHERE question_text_en LIKE 'Are there criteria/methods for assessing significance%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Emissions- und Ressourcenaspekte erfasst?'
WHERE question_text_en LIKE 'Are emission and resource aspects captured%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Entwicklungsprojekte rechtzeitig einbezogen?'
WHERE question_text_en LIKE 'Are development projects involved in a timely manner%';

UPDATE iso_criteria_questions 
SET question_text = 'Wird die Liste regelmäßig aktualisiert?'
WHERE question_text_en LIKE 'Is the list regularly updated%';

UPDATE iso_criteria_questions 
SET question_text = 'Sind signifikante Aspekte in die Ziele integriert?'
WHERE question_text_en LIKE 'Are significant aspects integrated into objectives%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Aktionspläne zur Reduzierung der Auswirkungen?'
WHERE question_text_en LIKE 'Are there action plans to reduce impacts%';

-- 3.6 Gefahrstoffmanagement
UPDATE iso_criteria_questions 
SET question_text = 'Gibt es ein Gefahrstoffkataster?'
WHERE question_text_en LIKE 'Is there a hazardous materials register%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es eine CLP/GHS-Klassifizierung?'
WHERE question_text_en LIKE 'Is there CLP/GHS classification%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Umweltauswirkungen bewertet?'
WHERE question_text_en LIKE 'How are environmental impacts assessed%';

UPDATE iso_criteria_questions 
SET question_text = 'Wird der Lebenszyklus von Gefahrstoffen berücksichtigt?'
WHERE question_text_en LIKE 'Is the life cycle of hazardous materials considered%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Expositionspfade bewertet?'
WHERE question_text_en LIKE 'Are exposure pathways assessed%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden REACH/CLP-Anforderungen erfüllt?'
WHERE question_text_en LIKE 'Are REACH/CLP requirements met%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Änderungen überwacht und umgesetzt?'
WHERE question_text_en LIKE 'Are changes monitored and implemented%';

-- Section 4: Unterstützung
-- 4.1 Ressourcenmanagement & Infrastruktur
UPDATE iso_criteria_questions 
SET question_text = 'Stehen ausreichende Ressourcen für Umwelt-/Klimaschutz zur Verfügung?'
WHERE question_text_en LIKE 'Are sufficient resources available for environment/climate protection%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Messgeräte und Werkzeuge gewartet?'
WHERE question_text_en LIKE 'How are measuring devices and tools maintained%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es präventive Wartungspläne?'
WHERE question_text_en LIKE 'Are there preventive maintenance plans%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Ressourcen für die Abfallwirtschaft bereitgestellt?'
WHERE question_text_en LIKE 'Are waste management resources provided%';

-- 4.2 Kompetenz und Qualifikation
UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Schulungen zu Umweltrecht, Klimaschutz, Abfall, Gefahrstoffen?'
WHERE question_text_en LIKE 'Are there training courses on environmental law, climate protection, waste, hazardous materials%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Bedarfsanalysen?'
WHERE question_text_en LIKE 'Are there needs analyses%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie wird die Qualifikation externer Mitarbeiter sichergestellt?'
WHERE question_text_en LIKE 'How is the qualification of external employees ensured%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Beauftragte für das Gefahrstoffmanagement?'
WHERE question_text_en LIKE 'Are there officers for hazardous materials management%';

-- 4.3 Wissensbewahrung
UPDATE iso_criteria_questions 
SET question_text = 'Wie wird Wissen gesichert (Übergaben, Dokumentation)?'
WHERE question_text_en LIKE 'How is knowledge secured (handovers, documentation)%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden SDB und interne Richtlinien verwaltet?'
WHERE question_text_en LIKE 'How are SDS and internal guidelines managed%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Aktualisierungen gepflegt?'
WHERE question_text_en LIKE 'How are updates maintained%';

-- 4.4 Dokumentierte Information
UPDATE iso_criteria_questions 
SET question_text = 'Wie werden UMS-Dokumente kontrolliert und versioniert?'
WHERE question_text_en LIKE 'How are EMS documents controlled and versioned%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Richtlinien für vertrauliche Daten?'
WHERE question_text_en LIKE 'Are there guidelines for confidential data%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Berechtigungssysteme?'
WHERE question_text_en LIKE 'Are there authorization systems%';

-- 4.5 Bewusstsein und Kommunikation
UPDATE iso_criteria_questions 
SET question_text = 'Welche Kanäle werden genutzt (Newsletter, Intranet, Aushänge)?'
WHERE question_text_en LIKE 'Which channels are used (newsletter, intranet, notices)%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Umweltkampagnen?'
WHERE question_text_en LIKE 'Are there environmental campaigns%';

-- 4.6 Kommunikation & Dokumentation
UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Aktualisierungen kommuniziert?'
WHERE question_text_en LIKE 'How are updates communicated%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Kennzeichnungen geprüft?'
WHERE question_text_en LIKE 'Are labels checked%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es eine Kommunikationsmatrix?'
WHERE question_text_en LIKE 'Is there a communication matrix%';

-- Section 5: Betrieb
-- 5.1 Betriebliche Planung und Steuerung
UPDATE iso_criteria_questions 
SET question_text = 'Werden Prozesse gesteuert, um Umweltauswirkungen zu minimieren?'
WHERE question_text_en LIKE 'Are processes controlled to minimize environmental impacts%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden CO₂, Wasser, Abfall regelmäßig überwacht?'
WHERE question_text_en LIKE 'Are CO₂, water, waste regularly monitored%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es SOPs für Gefahrstoffe?'
WHERE question_text_en LIKE 'Are there SOPs for hazardous materials%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Inspektionen durchgeführt?'
WHERE question_text_en LIKE 'Are inspections conducted%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie wird die Einhaltung bei Entsorgungsunternehmen sichergestellt?'
WHERE question_text_en LIKE 'How is compliance with disposal companies ensured%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Kontrollmechanismen in der Beschaffung?'
WHERE question_text_en LIKE 'Are there control mechanisms in procurement%';

UPDATE iso_criteria_questions 
SET question_text = 'Sind Gefahrstoffe korrekt gekennzeichnet und gelagert?'
WHERE question_text_en LIKE 'Are hazardous materials correctly labeled and stored%';

-- 5.2 Management of Change
UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Änderungen auf Umweltauswirkungen bewertet?'
WHERE question_text_en LIKE 'How are changes assessed for environmental impact%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Genehmigungsprozesse?'
WHERE question_text_en LIKE 'Are there approval processes%';

-- 5.3 Beschaffung und Lieferantenmanagement
UPDATE iso_criteria_questions 
SET question_text = 'Werden ökologische Kriterien berücksichtigt?'
WHERE question_text_en LIKE 'Are ecological criteria considered%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Lieferantenbewertungen?'
WHERE question_text_en LIKE 'Are there supplier assessments%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden ethische Aspekte berücksichtigt?'
WHERE question_text_en LIKE 'Are ethical aspects considered%';

-- 5.4 Betriebliche Steuerung & Prozessorganisation
UPDATE iso_criteria_questions 
SET question_text = 'Werden Ökodesign-Prinzipien angewendet?'
WHERE question_text_en LIKE 'Are eco-design principles applied%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Lieferketten auf Klimafreundlichkeit optimiert?'
WHERE question_text_en LIKE 'Are supply chains optimized for climate friendliness%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Notfallpläne für Umweltereignisse?'
WHERE question_text_en LIKE 'Are there emergency plans for environmental events%';

-- 5.5 Instandhaltungsmanagement
UPDATE iso_criteria_questions 
SET question_text = 'Gibt es präventive Instandhaltung?'
WHERE question_text_en LIKE 'Is there preventive maintenance%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Intervalle verwaltet?'
WHERE question_text_en LIKE 'How are intervals managed%';

-- 5.6 Notfall & Umweltschutz
UPDATE iso_criteria_questions 
SET question_text = 'Werden Dienstleister auf Umweltstandards geprüft?'
WHERE question_text_en LIKE 'Are service providers checked for environmental standards%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Meldekanäle für Verstöße?'
WHERE question_text_en LIKE 'Are there reporting channels for violations%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Notfallpläne für Gefahrstoffunfälle?'
WHERE question_text_en LIKE 'Are there emergency plans for hazardous material incidents%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Übungen durchgeführt?'
WHERE question_text_en LIKE 'Are drills conducted%';

-- 5.7 Entsorgung / Abfallmanagement
UPDATE iso_criteria_questions 
SET question_text = 'Werden alle Abfallströme erfasst?'
WHERE question_text_en LIKE 'Are all waste streams captured%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Trennsysteme?'
WHERE question_text_en LIKE 'Are there separation systems%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Recyclingziele?'
WHERE question_text_en LIKE 'Are there recycling targets%';

UPDATE iso_criteria_questions 
SET question_text = 'Wird die Entsorgung ordnungsgemäß dokumentiert?'
WHERE question_text_en LIKE 'Is disposal properly documented%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden gefährliche Abfälle getrennt und entsorgt?'
WHERE question_text_en LIKE 'How are hazardous wastes separated and disposed of%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden gesetzliche Anforderungen erfüllt?'
WHERE question_text_en LIKE 'Are legal requirements met%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Abfallkennzahlen?'
WHERE question_text_en LIKE 'Are there waste metrics%';

-- Section 6: Leistungsbewertung
-- 6.1 Überwachung und Messung
UPDATE iso_criteria_questions 
SET question_text = 'Welche Umweltkennzahlen werden erhoben und analysiert?'
WHERE question_text_en LIKE 'Which environmental metrics are collected and analyzed%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Gefahrstoffdaten überwacht?'
WHERE question_text_en LIKE 'Are hazardous material data monitored%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Abweichungen dokumentiert?'
WHERE question_text_en LIKE 'How are deviations documented%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es regelmäßige Berichte?'
WHERE question_text_en LIKE 'Are there regular reports%';

-- 6.2 Interne Audits
UPDATE iso_criteria_questions 
SET question_text = 'Sind alle umweltrelevanten Prozesse im Auditplan?'
WHERE question_text_en LIKE 'Are all environmentally relevant processes in the audit plan%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Gefahrstoff- und Abfallthemen auditiert?'
WHERE question_text_en LIKE 'Are hazardous material and waste topics audited%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden unangekündigte Audits durchgeführt?'
WHERE question_text_en LIKE 'Are unannounced audits conducted%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie wird die Auditorenkompetenz sichergestellt?'
WHERE question_text_en LIKE 'How is auditor competence ensured%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Auditergebnisse priorisiert?'
WHERE question_text_en LIKE 'How are audit results prioritized%';

-- 6.3 Managementbewertung
UPDATE iso_criteria_questions 
SET question_text = 'Wie oft findet die Managementbewertung statt?'
WHERE question_text_en LIKE 'How often does management review take place%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Ergebnisse dokumentiert und genutzt?'
WHERE question_text_en LIKE 'How are results documented and used%';

UPDATE iso_criteria_questions 
SET question_text = 'Fließen Umwelt- und Emissionsdaten ein?'
WHERE question_text_en LIKE 'Do environmental and emission data flow in%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden neue Ziele abgeleitet?'
WHERE question_text_en LIKE 'How are new objectives derived%';

-- 6.4 Feedback & Lernen
UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Lessons Learned?'
WHERE question_text_en LIKE 'Are there lessons learned%';

UPDATE iso_criteria_questions 
SET question_text = 'Wird Stakeholder-Feedback berücksichtigt?'
WHERE question_text_en LIKE 'Is stakeholder feedback considered%';

-- Section 7: Verbesserung
-- 7.1 Kontinuierliche Verbesserung
UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Programme oder Workshops zur Ressourcenschonung?'
WHERE question_text_en LIKE 'Are there programs or workshops for resource conservation%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Best Practices geteilt?'
WHERE question_text_en LIKE 'Are best practices shared%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es klare Verfahren für Fehlerfälle?'
WHERE question_text_en LIKE 'Are there clear procedures for error cases%';

-- 7.2 Nichtkonformitäten & Korrekturmaßnahmen
UPDATE iso_criteria_questions 
SET question_text = 'Gibt es Prozesse zur Meldung und Bearbeitung von Umweltverstößen?'
WHERE question_text_en LIKE 'Are there processes for reporting and processing environmental violations%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Ursachenanalysen durchgeführt?'
WHERE question_text_en LIKE 'Are root cause analyses conducted%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Maßnahmen auf Wirksamkeit geprüft?'
WHERE question_text_en LIKE 'Are measures checked for effectiveness%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Wiederholungsfälle verhindert?'
WHERE question_text_en LIKE 'Are repeat cases prevented%';

-- 7.3 Substitutionsmanagement
UPDATE iso_criteria_questions 
SET question_text = 'Werden Gefahrstoffe auf Ersatz geprüft?'
WHERE question_text_en LIKE 'Are hazardous substances checked for replacement%';

UPDATE iso_criteria_questions 
SET question_text = 'Gibt es einen strukturierten Ansatz für die Substitution?'
WHERE question_text_en LIKE 'Is there a structured approach for substitution%';

-- 7.4 Innovationsmanagement
UPDATE iso_criteria_questions 
SET question_text = 'Werden klimafreundliche Innovationen gefördert?'
WHERE question_text_en LIKE 'Are climate-friendly innovations promoted%';

UPDATE iso_criteria_questions 
SET question_text = 'Werden Mitarbeiter ermutigt, Ideen einzureichen?'
WHERE question_text_en LIKE 'Are employees encouraged to submit ideas%';

-- 7.5 Compliance & Ethik
UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Compliance-Anforderungen erfüllt?'
WHERE question_text_en LIKE 'How are compliance requirements met%';

UPDATE iso_criteria_questions 
SET question_text = 'Wie werden Geschäftspartner auf Umwelt-Compliance geprüft?'
WHERE question_text_en LIKE 'How are business partners audited for environmental compliance%';
