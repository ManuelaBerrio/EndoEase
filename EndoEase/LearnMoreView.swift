//
//  LearnMoreView.swift
//  EndoEase
//
//  Created by Saranya Mandapaty on 6/28/23.
//
import SwiftUI
import Foundation
struct LearnMoreView: View {
    @State private var selectedSymptom = "Vomiting"
    let symptoms = ["Vomiting", "Fainting Spells", "Dizziness/Fatigue", "Headaches", "Migraines", "Heavy Bleeding"]
    
    var body: some View {
        ZStack {
            Image("Learn")
                .resizable()
                .ignoresSafeArea()
        VStack {
            Picker("Select a symptom", selection: $selectedSymptom) {
                ForEach(symptoms, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.menu)
            
            switch selectedSymptom {
            case "Vomiting":
                Text("CAUSE: If endometriosis lesions are close to your GI tract, they can also contribute to nausea or vomiting. Increased levels of prostaglandins during your period can play a role as well.")
                Text("HOME REMEDIES :\n- Eat bland foods. Until your nausea goes away, try to focus on eating bland foods. A few examples of bland foods include white rice, bananas, and unseasoned skinless chicken.\n- Stay hydrated. Nausea can sometimes lead to vomiting, which can cause dehydration. This is why it’s important to stay hydrated. If it’s hard to keep fluids down, try taking regular, small sips of water.")
            case "Fainting Spells":
                Text("CAUSE: The vasovagal reflex, which causes the heart rate to slow and the blood vessels to widen, or dilate. As a result, blood pools in the lower body and less blood goes to the brain. This reflex can be triggered by many things, including stress, pain, fear, coughing, holding your breath, and urinating.")
                Text("HOME REMEDIES:\n- Lie down\n- Drink water\n- Try to stay hydrated\n- Eating food\n- Invest in a heat pad")
            case "Dizziness/Fatigue":
                Text("CAUSE: The main cause of endometriosis-related fatigue is the body's effort to eliminate diseased tissue. While the immune system attempts to combat endometriosis, cytokines, also known as inflammatory toxins, are secreted by the tissue. What patients feel to be fatigue is the result of these internal chemicals.")
                Text("HOME REMEDIES:\n- Eating a healthful diet\n- Taking supplements such as iron or vitamin D\n- Exercising\n- Keeping a consistent sleep schedule")
            case "Headaches":
                Text("CAUSE: Prostaglandins are believed to affect pain transmission and migraine headaches, and endometriosis is associated with a significant increase in prostaglandin production. Nitric oxide helps regulate blood flow in the brain and appears to be involved in both headaches and endometriosis.")
                Text("HOME REMEDIES:\n- Many women with endometriosis and migraine use over the counter pain relievers such as ibuprofen or naproxen")
            case "Migraines":
                Text("CAUSE: Migraines can be a common symptom of endometriosis, although the exact cause is not fully understood. Endometriosis is associated with a significant increase in prostaglandin production, and prostaglandins are believed to affect pain transmission and migraine headaches. Additionally, nitric oxide helps regulate blood flow in the brain and appears to be involved in both headaches and endometriosis.")
                Text("HOME REMEDIES: \n- Many women with endometriosis and migraine use over the counter pain relievers such as ibuprofen or naproxen")
            case "Heavy Bleeding":
                Text("CAUSE: Endometriosis occurs when cells from the lining of your womb(uterus) grow in other areas of your body. This cause heavy bleeding. Heavy bleeding can be treated by an anti inflammatory drugs, tranexamic acid, or the oral contraceptive pill make sure to see your OBGYN to see which one is best for you.")
                Text("HOME REMEDIES: \n- Try to invest in a heat pad as it can alleviate cramps that come with the pain of heavy bleeding. ")
            default:
                Text("")
            }
            Spacer()
        }
        .navigationTitle("Symptoms")
    }
}
}
struct LearnMoreView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
        
