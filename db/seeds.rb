['Head', 'Neck', 'Torso', 'Groin', 'Left Arm', 'Right Arm', 'Left Leg', 'Right Leg'].each do |name|
  BodyPart.create(name: name)
end

['Ball of foot',
 'Instep',
 'Heel',
 'Ankle',
 'Above Ankle',
 'Calf',
 'Below Knee',
 'Knee',
 'Above Knee',
 'Middle of thigh',
 'Upper thigh'
].each do |name| 

  MeasuringPoint.create(
    name: name,
    body_part: BodyPart.find_by(name: 'Right Leg')
  )
  MeasuringPoint.create(
    name: name,
    body_part: BodyPart.find_by(name: 'Left Leg')
  )
end
