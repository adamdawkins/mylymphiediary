['Head', 'Neck', 'Torso', 'Groin', 'Left Arm', 'Right Arm', 'Left Leg', 'Right Leg'].each do |name|
  BodyPart.create(name: name)
end
