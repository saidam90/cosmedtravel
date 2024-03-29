# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Package.delete_all
puts "all packages deleted"
ActiveRecord::Base.connection.execute('ALTER SEQUENCE packages_id_seq RESTART WITH 1')
puts "reset the ID counter to 1"

puts "creating packages"
cosmetic_surgery = Package.create(
  package_name: "Cosmetic Surgery",
  package_description: "For many patients the Omega (mini) bypass is an effective option to the standard gastric bypass surgery. Thereby is the Omega (mini) bypass not far different from the Roux-en-Y gastric bypass method. A mini bypass in Azerbaijan will help you to reduce weight, because the intake of food will be restricted. Even the appetite will be controlled by a change in the enteric flora",
  package_price: "3750 AZN",
  image: "5.png"
)

weight_loss_surgery = Package.create(
  package_name: "Weight Loss Surgery",
  package_description: "For many patients the Omega (mini) bypass is an effective option to the standard gastric bypass surgery. Thereby is the Omega (mini) bypass not far different from the Roux-en-Y gastric bypass method. A mini bypass in Azerbaijan will help you to reduce weight, because the intake of food will be restricted. Even the appetite will be controlled by a change in the enteric flora",
  package_price: 4750,
  image: "3.png"
)


dental_treatment = Package.create(
  package_name: "Dental treatment",
  package_description: "For many patients the Omega (mini) bypass is an effective option to the standard gastric bypass surgery. Thereby is the Omega (mini) bypass not far different from the Roux-en-Y gastric bypass method. A mini bypass in Azerbaijan will help you to reduce weight, because the intake of food will be restricted. Even the appetite will be controlled by a change in the enteric flora",
  package_price: 5750,
  image: "9.png"
)
puts "packages created"

puts "creating face treatments"

facelift = FaceTreatment.find_or_create_by(
  face_treatment_name: "Facelift",
  face_treatment_description: "At Cosmed Travel, we provide facelift procedures performed by highly skilled surgeons in state-of-the-art, internationally accredited facilities. Experience a remarkable transformation at a price within reach. Enhance your appearance without compromising your overall health and well-being. Make the wise choice and opt for Cosmed Travel."
)

rhinoplasty = FaceTreatment.find_or_create_by(
  face_treatment_name: "Rhinoplasty",
  face_treatment_description: "At Cosmed Travel, we excel in delivering top-tier rhinoplasty procedures, both surgical and non-surgical, at competitive rates. Benefit from substantial savings of 30% to 50% on your rhinoplasty while ensuring uncompromised quality of care and personal wellness. Request a complimentary quote today without any obligations."
)

neck_lift = FaceTreatment.find_or_create_by(
  face_treatment_name: "Neck Lift",
  face_treatment_description: "Are you eager to eliminate the appearance of a 'turkey neck' and achieve a smoother, more elegant neck? Look no further than a neck lift. Our team of exceptional cosmetic surgeons boasts impressive expertise, extensive experience, and a proven history of satisfying clients worldwide. Join the ranks of thousands who have benefited from our world-class services."
)

face_and_neck_lift = FaceTreatment.find_or_create_by(
  face_treatment_name: "Face & Neck Lift",
  face_treatment_description: "At Cosmed Travel, we offer a cost-effective package that combines a face and neck lift, allowing you to enhance your appearance seamlessly. Rest assured, our team of world-class surgeons and top-notch 5* medical facilities will work together to achieve the desired outcome you seek. And the best part? You can save between 30% to 50% on your face and neck lift."
)

blepharoplasty = FaceTreatment.find_or_create_by(
  face_treatment_name: "Blepharoplasty",
  face_treatment_description: "Cosmed Travel presents a unique opportunity for a luxurious and affordable holiday experience combined with blepharoplasty (eyelid surgery) procedures in Azerbaijan. Our dedicated team of licensed, highly skilled, and extensively experienced surgeons will provide you with exceptional care in modern hospitals. Following your surgery, enjoy a serene recovery in 5-star accommodation, ensuring a relaxing and rejuvenating experience."
)

dermal_fillers = FaceTreatment.find_or_create_by(
  face_treatment_name: "Dermal Fillers",
  face_treatment_description: "At Cosmed Travel, our team of cosmetic experts offers dermal fillers at highly affordable rates. Experience a transformative and refreshed look at our medical facilities, all while saving a significant amount compared to prices in Europe. Your desired aesthetic can be achieved without breaking the bank at Cosmed Travel."
)

anti_wrinkle_injections = FaceTreatment.find_or_create_by(
  face_treatment_name: "Anti Wrinkle Injections",
  face_treatment_description: "At Cosmed Travel, our cosmetic team comprises highly skilled and experienced professionals who specialize in administering anti-wrinkle injections. With our expertise, we can help you attain a natural and more youthful appearance, boosting your self-confidence in the process. Trust us to assist you in enhancing your overall appearance and achieving the desired results."
)

puts "face treatments created"

puts "creating hair treatments"

hair_transplants = HairTreatment.find_or_create_by(
  hair_treatment_name: "Hair Transplants",
  hair_treatment_description: "At Cosmed Travel, we specialize in delivering exceptional hair transplants at affordable prices. Our dedicated team at Cosmed Travel has personal experience undergoing hair transplants in Azerbaijan, ensuring that you are in safe and experienced hands. Rest easy knowing that our knowledgeable team will provide you with the highest level of care and expertise throughout your hair transplant journey."
)

beard_transplant = HairTreatment.find_or_create_by(
  hair_treatment_name: "Beard Transplant",
  hair_treatment_description: "In today's fashion-forward world, beards have become increasingly popular. However, their appeal extends beyond mere trendiness. Beards are often regarded as symbols of masculinity, courage, and trustworthiness. If you desire a fuller and thicker beard, consider opting for a beard transplant. By choosing Cosmed Travel, you can achieve your desired facial hair while enjoying savings of up to 50% on the procedure. Embrace the opportunity to enhance your appearance and embrace the qualities associated with a well-grown beard by selecting Cosmed Travel."
)

eyebrow_transplant = HairTreatment.find_or_create_by(
  hair_treatment_name: "Eyebrow Transplant",
  hair_treatment_description: "Full and lush eyebrows are not only a trendy fashion statement but also contribute to a more natural and youthful appearance. At Cosmed Travel, we prioritize offering the finest eyebrow transplants in Azerbaijan, facilitated by our world-class surgeons and internationally accredited clinic. However, if you prefer to explore other destinations, we also provide eyebrow transplant procedures at select international clinics within our network. Our commitment is to ensure the highest quality and satisfaction, regardless of the location you choose for your eyebrow transplant."
)

puts "hair treatments created"

puts "creating body treatments"

abdominoplasty = BodyTreatment.find_or_create_by(
  body_treatment_name: "Abdominoplasty",
  body_treatment_description: "Cosmed Travel presents abdominoplasty procedures conducted by world-class surgeons in our top-tier, 5-star hospital facilities, all at an affordable price. If you desire to eliminate excess skin and stubborn fat from your abdomen, we are here to assist you. Experience a smoother and more sculpted waistline, ultimately boosting your self-confidence. Trust us to help you achieve your aesthetic goals and enhance your overall well-being."
)

gastric_bypass = BodyTreatment.find_or_create_by(
  body_treatment_name: "Gastric Bypass",
  body_treatment_description: "Gastric bypass surgery is an effective solution for weight loss that can alleviate health concerns and significantly enhance quality of life. By choosing Cosmed Travel, you can save up to 50% on your procedure without any compromise on the quality of your medical team, healthcare, and overall well-being. Trust us to provide exceptional care and support throughout your journey to a healthier and happier life."
)

breast_lift = BodyTreatment.find_or_create_by(
  body_treatment_name: "Breast Lift",
  body_treatment_description: "Cosmed Travel's team of cosmetic and plastic experts specializes in breast lifts at prices that are 30% to 50% lower compared to Europe. Our surgeons possess extensive skills and experience, along with world-class accreditations and internationally recognized qualifications. You can trust our team to deliver exceptional results and provide the highest level of care throughout your breast lift journey. Experience the expertise of our surgeons and enjoy significant cost savings by choosing Cosmed Travel."
)

breast_implants = BodyTreatment.find_or_create_by(
  body_treatment_name: "Breast Implants",
  body_treatment_description: "If you desire breast implants to enhance the fullness of your breasts, Cosmed Travel's skilled breast surgeons are here to assist you. With their world-class expertise, extensive qualifications, and international accreditations, Cosmed Travel ensures the highest standards in breast implant procedures. Trust our team to deliver exceptional results and provide the best possible care throughout your breast enhancement journey. Experience the expertise and quality of Cosmed Travel for the breast implant procedure you desire."
)

breast_reduction = BodyTreatment.find_or_create_by(
  body_treatment_name: "Breast Reduction",
  body_treatment_description: "Cosmed Travel proudly provides breast reduction procedures at affordable prices, featuring world-class cosmetic surgeons and 5-star hospitals and facilities. Achieve the desired results you seek without compromising the quality of your healthcare. Our commitment to excellence ensures that you receive top-notch care and optimal outcomes throughout your breast reduction journey. Trust Cosmed Travel to prioritize your well-being and deliver exceptional results in a cost-effective manner."
)

brachioplasty = BodyTreatment.find_or_create_by(
  body_treatment_name: "Brachioplasty",
  body_treatment_description: "Cosmed Travel specializes in brachioplasty, commonly known as arm lift surgery, performed by world-class surgeons at significantly reduced prices compared to Europe. Achieve the desired results you seek without compromising on the quality of your healthcare. Our commitment to excellence ensures that you receive exceptional care and optimal outcomes throughout your brachioplasty journey. Trust Cosmed Travel to prioritize your well-being and deliver remarkable results, all while providing cost savings that make your experience even more rewarding."
)

liposuction = BodyTreatment.find_or_create_by(
  body_treatment_name: "Liposuction",
  body_treatment_description: "At Cosmed Travel, we offer a diverse range of surgical liposuction and liposculpture procedures at highly affordable prices. Enjoy significant cost savings without compromising the quality of your healthcare. Our unwavering dedication to excellence guarantees that you will receive exceptional care and achieve optimal outcomes throughout your liposuction journey. Trust us to prioritize your well-being, ensuring remarkable results while maintaining affordability that enhances your overall experience."
)

vaser_liposuction = BodyTreatment.find_or_create_by(
  body_treatment_name: "Vaser Liposuction",
  body_treatment_description: "If you are seeking vaser liposuction, you have arrived at the perfect destination. Our team of vaser liposuction specialists at Cosmed Travel has assisted numerous clients globally in improving their physique. Achieve the desired results you seek at a remarkable cost savings of 30% to 50% compared to prices in Europe. Trust Cosmed Travel to deliver the outcomes you desire while providing exceptional value for your investment."
)

puts "body treatments created"
