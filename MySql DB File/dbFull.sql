-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                10.4.18-MariaDB - mariadb.org binary distribution
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- gorillas_cntsis için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `gorillas_cntsis` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `gorillas_cntsis`;

-- tablo yapısı dökülüyor gorillas_cntsis.allexerciselist
CREATE TABLE IF NOT EXISTS `allexerciselist` (
  `allexerciseid` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(500) DEFAULT NULL,
  `Content1` varchar(500) DEFAULT NULL,
  `Descriptions` varchar(1000) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `areaid` int(11) DEFAULT NULL,
  PRIMARY KEY (`allexerciseid`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8;

-- gorillas_cntsis.allexerciselist: ~210 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `allexerciselist` DISABLE KEYS */;
INSERT INTO `allexerciselist` (`allexerciseid`, `Area`, `Content1`, `Descriptions`, `name`, `areaid`) VALUES
	(1, 'abs_core', '00031301-air-bike-m_waist_FIX_360-360x200.gif', NULL, 'Air-bike-m_waist_FIX', 2),
	(2, 'abs_core', '00041301-Air-Twisting-Crunch_waist_360.gif', NULL, 'Air-Twisting-Crunch_waist', 2),
	(3, 'abs_core', '00081301-Alternate-Lying-Floor-Leg-Raise_waist_360-360x200.gif', NULL, 'Alternate-Lying-Floor-Leg-Raise', 2),
	(4, 'abs_core', '02591301-Close-Grip-Push-up_Upper-Arms_360-360x200.gif', NULL, 'Close-Grip-Push-up_Upper-Arms', 2),
	(5, 'abs_core', '02661301-Crunch-arms-straight_waist_360-360x200.gif', NULL, 'Crunch-arms-straight_waist', 2),
	(6, 'abs_core', '02671301-Crunch-hands-overhead_waist_360-360x200.gif', NULL, 'Crunch-hands-overhead', 2),
	(7, 'abs_core', '02681301-Crunch-leg-raise_waist_360-360x200.gif', NULL, 'Crunch-leg-raise', 2),
	(8, 'abs_core', '02731301-Crunch-straight-leg-up_waist_360-360x200.gif', NULL, 'Crunch-straight-leg-up', 2),
	(9, 'abs_core', '02751301-Crunch-Floor-w_waist_360-360x200.gif', NULL, 'Crunch-Floor-w_waist', 2),
	(10, 'abs_core', '02761301-Dead-Bug_waist_360.gif', NULL, 'Dead-Bug', 2),
	(11, 'abs_core', '02811301-Decline-Sit-up-arms-straight_waist_360-360x200.gif', NULL, 'Decline-Sit-up-arms-straight', 2),
	(12, 'abs_core', '04721301-Hanging-Leg-Raise_Hips_360.gif', NULL, 'Hanging-Leg-Raise_Hips', 2),
	(13, 'abs_core', '04821301-Hip-Crunch-knees-bent_waist_360-1-360x200.gif', NULL, 'Hip-Crunch-knees-bent', 2),
	(14, 'abs_core', '05001301-Isometric-Wipers_Chest_360-360x200.gif', NULL, 'Isometric-Wipers', 2),
	(15, 'abs_core', '05031301-Jack-knife-on-Ball_waist_360.gif', NULL, 'Jack-knife-on-Ball', 2),
	(16, 'abs_core', '05071301-Jackknife-Sit-Up_waist_360-360x200.gif', NULL, 'Jackknife-Sit-Up', 2),
	(17, 'abs_core', '05731301-Lever-Back-Extension_Waist_360-1.gif', NULL, 'Lever-Back-Extension', 2),
	(18, 'abs_core', '06291301-Mountain-Climber-Lunge_Cardio_360.gif', NULL, 'Mountain-Climber-Lunge_Cardio', 2),
	(19, 'abs_core', '06351301-Oblique-Crunches-Floor_waist_360.gif', NULL, 'Oblique-Crunches-Floor_waist', 2),
	(20, 'abs_core', '07111301-Side-Lunge-Stretch_Thighs_360-360x200.gif', NULL, 'Side-Lunge-Stretch_Thighs', 2),
	(21, 'abs_core', '07151301-Side-Plank-m_Waist_360-360x200.gif', NULL, 'Side-Plank-m_Waist', 2),
	(22, 'abs_core', '07351301-Sit-Up-II_waist_360-360x200.gif', NULL, 'Sit-Up-II_waist', 2),
	(23, 'abs_core', '08041301-Superman_Waist_360-360x200.gif', NULL, 'Superman_Waist', 2),
	(24, 'abs_core', '08501301-Weighted-Side-Bend-on-stability-ball_Waist_360-360x200.gif', NULL, 'Weighted-Side-Bend-on-stability-ball', 2),
	(25, 'abs_core', '09311301-Band-twist-down-up_Waist_360-360x200.gif', NULL, 'Band-twist-down-up', 2),
	(26, 'abs_core', '09321301-Band-twist-up-down_Waist_360-1-360x200.gif', NULL, 'Band-twist-up-down', 2),
	(27, 'abs_core', '10611301-Barbell-one-leg-hip-thrust_Hips_360.gif', NULL, 'Barbell-one-leg-hip-thrust', 2),
	(28, 'abs_core', '11701301-45-degree-one-leg-hyperextension-arms-in-front-of-chest_Hips_360-360x200.gif', NULL, '45-degree-one-leg-hyperextension-arms-in-front-of-chest', 2),
	(29, 'abs_core', '11711301-45-degree-twisting-hyperextension_Hips_360-1.gif', NULL, '45-degree-twisting-hyperextension_Hips', 2),
	(30, 'abs_core', '17691301-Bodyweight-Side-Lying-Biceps-Curl_Upper-Arms_360.gif', NULL, 'Bodyweight-Side-Lying-Biceps-Curl_Upper-Arms', 2),
	(31, 'abs_core', '22951301-Stability-Ball-Rollout-on-Knees-female_Hips-FIX_360.gif', NULL, 'Stability-Ball-Rollout-on-Knees-female_Hips-FIX', 2),
	(32, 'abs_core', '23691301-Cable-Kneeling-Crunch-female_Waist_360-360x200.gif', NULL, 'Cable-Kneeling-Crunch-female_Waist', 2),
	(33, 'abs_core', '24291301-Frog-Crunch_Waist_360-360x200.gif', NULL, 'Frog-Crunch_Waist', 2),
	(34, 'abs_core', '24691301-Exercise-Ball-Frog-Crunch-female_Waist_360-360x200.gif', NULL, 'Exercise-Ball-Frog-Crunch', 2),
	(35, 'abs_core', '28161301-V-Up-Down-with-Stability-ball-female_Waist_360.gif', NULL, 'V-Up-Down-with-Stability', 2),
	(36, 'abs_core', '28971301-Front-Plank-with-Arm-and-Leg-Lift-push-up-position-female_360-360x200.gif', NULL, 'Front-Plank-with-Arm-and-Leg-Lift-push-up-position', 2),
	(37, 'abs_core', '31411301-Bird-Dog-female_360-360x200.gif', NULL, 'Bird-Dog', 2),
	(38, 'abs_core', 'Front-Plank-990x438-410x200.gif', NULL, 'Front-Plank', 2),
	(39, 'abs_core', 'Vertical-leg-crunch-990x665-410x200.gif', NULL, 'Vertical-leg-crunch', 2),
	(41, 'back', '00171301-Assisted-Pull-up_Back_360-360x200.gif', NULL, 'Assisted-Pull-up_Back', 3),
	(42, 'back', '00951301-Barbell-Shrug_Back_360.gif', NULL, 'Barbell-Shrug_Back', 3),
	(43, 'back', '01181301-Barbell-Reverse-Grip-Bent-over-Row_Back-FIX_180.gif', NULL, 'Barbell-Reverse-Grip-Bent-over-Row_Back-FIX', 3),
	(44, 'back', '01771301-Cable-Lateral-Pulldown-with-rope-attachment_Back_360-360x200.gif', NULL, 'Cable-Lateral-Pulldown-with-rope-attachment_Back', 3),
	(45, 'back', '02331301-Cable-Standing-Rear-Delt-Row-with-rope_shoulder_360-360x200.gif', NULL, 'Cable-Standing-Rear-Delt-Row-with-rope_shoulder', 3),
	(46, 'back', '02921301-Dumbbell-Bent-over-Row_back_Back_360.gif', NULL, 'Dumbbell-Bent-over-Row_back_Back', 3),
	(47, 'back', '02931301-Dumbbell-Bent-Over-Row_Back-FIX_360-360x200.gif', NULL, 'Dumbbell-Bent-Over-Row_Back-FIX', 3),
	(48, 'back', '04061301-Dumbbell-Shrug_Back-FIX_360.gif', NULL, 'Dumbbell-Shrug', 3),
	(49, 'back', '08041301-Superman_Waist_360-360x200.gif', NULL, 'Superman', 3),
	(50, 'back', '08931301-Band-bent_Shoulders-over-rear-lateral-raise_Shoulders_360-360x200.gif', NULL, 'Band-bent_Shoulders-over-rear-lateral-raise_Shoulders', 3),
	(51, 'back', '09311301-Band-twist-down-up_Waist_360-360x200.gif', NULL, 'Band-twist-down-up', 3),
	(52, 'back', '09831301-Band-kneeling-one-arm-pulldown_Back_360-360x200.gif', NULL, 'Band-kneeling-one-arm-pulldown', 3),
	(53, 'back', '11701301-45-degree-one-leg-hyperextension-arms-in-front-of-chest_Hips_360-360x200.gif', NULL, '45-degree-one-leg-hyperextension-arms-in-front-of-chest', 3),
	(54, 'back', '13171301-Barbell-Reverse-Grip-Incline-Bench-Row_Back_360.gif', NULL, 'Barbell-Reverse-Grip-Incline-Bench-Row', 3),
	(55, 'back', '14391301-Lever-Gripless-Shrug-VERSION-2_Back_360-360x200.gif', NULL, 'Lever-Gripless-Shrug-VERSION-2', 3),
	(56, 'back', '15031301-Band-Pull-Apart_Shoulders_360-360x200.gif', NULL, 'Band-Pull-Apart_Shoulders', 3),
	(57, 'back', '18661301-Wide-Grip-Pull-Up-on-Dip-Cage_Back_720.gif', NULL, 'Wide-Grip-Pull-Up-on-Dip-Cage', 3),
	(58, 'back', '22911301-Cable-Wide-Grip-Lat-Pulldown-female_Back_720-410x200.gif', NULL, 'Cable-Wide-Grip-Lat-Pulldown', 3),
	(59, 'back', '23261301-Dumbbell-Pronated-Grip-Row-_female_Back_360-360x200.gif', NULL, 'Dumbbell-Pronated-Grip-Row', 3),
	(60, 'back', '24671301-Barbell-Reverse-Grip-Bent-Over-Row-female_Back_360.gif', NULL, 'Barbell-Reverse-Grip-Bent-Over-Row', 3),
	(61, 'back', '30971301-Lever-Bent-over-Row-plate-loaded-female_Back_360-360x200.gif', NULL, 'Lever-Bent-over-Row-plate-loaded', 3),
	(62, 'back', 'cablerow-990x548-410x200.gif', NULL, 'Cablerow', 3),
	(63, 'back', 'hyperextension-hyperextensions_geraet_ohne_gewicht-360x200.gif', NULL, 'Hyperextension-hyperextensions_geraet_ohne_gewicht', 3),
	(64, 'biceps', '01041301-Barbell-Standing-Back-Wrist-Curl_Forearms_360.gif', NULL, 'Barbell-Standing-Back', 4),
	(65, 'biceps', '01101301-Barbell-Standing-Reverse-Grip-Curl_Forearms_360.gif', NULL, 'Barbell-Standing-Reverse-Grip-Curl_Forearms', 4),
	(66, 'biceps', '01251301-Barbell-Wrist-Curl-II_Forearms_360.gif', NULL, 'Barbell-Wrist-Curl-II_Forearms', 4),
	(67, 'biceps', '03701301-Dumbbell-Peacher-Hammer-Curl_Forearms_360.gif', NULL, 'Dumbbell-Peacher-Hammer-Curl_Forearms', 4),
	(68, 'biceps', '04031301-Dumbbell-Seated-Revers-grip-Concentration-Curl_Forearms_360-360x200.gif', NULL, 'Dumbbell-Seated-Revers-grip-Concentration-Curl_Forearms', 4),
	(69, 'biceps', '04461301-EZ-Barbell-Close-grip-Curl_Upper-Arms_360.gif', NULL, 'EZ-Barbell-Close-grip-Curl_Upper-Arms', 4),
	(70, 'biceps', '04511301-EZ-Barbell-Reverse-Grip-Curl_Forearms_360-1.gif', NULL, 'EZ-Barbell-Reverse-Grip-Curl_Forearms', 4),
	(71, 'biceps', '08681301-Cable-Curl-m_Upper-Arms_360.gif', NULL, 'Cable-Curl-m_Upper-Arms', 4),
	(72, 'biceps', '14141301-Dumbbell-One-Arm-Reverse-Preacher-Curl_Forearms_360.gif', NULL, 'Dumbbell-One-Arm-Reverse-Preacher-Curl_Forearms', 4),
	(73, 'biceps', '14411301-Dumbbell-Over-Bench-One-Arm-Reverse-Wrist-Curl_Forearms_360.gif', NULL, 'Dumbbell-Over-Bench-One-Arm-Reverse-Wrist-Curl_Forearms', 4),
	(74, 'biceps', '16541301-Dumbbell-Biceps-Curl-Reverse_Upper-Arms_360.gif', NULL, 'Dumbbell-Biceps-Curl-Reverse_Upper-Arms', 4),
	(75, 'biceps', '22381301-EZ-Barbell-Curl-female_Upper-Arms_360.gif', NULL, 'EZ-Barbell-Curl-female_Upper-Arms', 4),
	(76, 'biceps', '23211301-Dumbbell-Standing-Inner-Biceps-Curl-version-2_Upper-Arms_360.gif', NULL, 'Dumbbell-Standing-Inner-Biceps-Curl-version-2_Upper-Arms', 4),
	(77, 'chest', '00331301-Barbell-Decline-Bench-Press_Chest_360-360x200.gif', NULL, 'Barbell-Decline-Bench-Press_Chest', 5),
	(78, 'chest', '00451301-Barbell-Guillotine-Bench-Press_Chest_360-360x200.gif', NULL, 'Barbell-Guillotine-Bench-Press_Chest', 5),
	(79, 'chest', '00471301-Barbell-Incline-Bench-Press_Chest_360-360x200.gif', NULL, 'Barbell-Incline-Bench-Press_Chest', 5),
	(80, 'chest', '02591301-Close-Grip-Push-up_Upper-Arms_360-360x200.gif', NULL, 'Close-Grip-Push-up_Upper-Arms', 5),
	(81, 'chest', '02781301-Decline-Push-up-on-stability-ball_Chest_360.gif', NULL, 'Decline-Push-up-on-stability-ball_Chest', 5),
	(82, 'chest', '03011301-Dumbbell-Decline-Bench-Press_Chest_360-360x200.gif', NULL, 'Dumbbell-Decline-Bench-Press_Chest', 5),
	(83, 'chest', '03021301-Dumbbell-Decline-Fly_Chest_360-360x200.gif', NULL, 'Dumbbell-Decline-Fly_Chest', 5),
	(84, 'chest', '03081301-Dumbbell-Fly_Chest-FIX_360-360x200.gif', NULL, 'Dumbbell-Fly_Chest-FIX', 5),
	(85, 'chest', '03191301-Dumbbell-Incline-Fly_Chest-FIX_360-1-360x200.gif', NULL, 'Dumbbell-Incline-Fly_Chest-FIX', 5),
	(86, 'chest', '05001301-Isometric-Wipers_Chest_360-360x200.gif', NULL, 'Isometric-Wipers_Chest', 5),
	(87, 'chest', '05491301-Kettlebell-Swing_Kettlebell_360-360x200.gif', NULL, 'Kettlebell-Swing_Kettlebell', 5),
	(88, 'chest', '06531301-Push-up-bosu-ball_Chest_360-360x200.gif', NULL, 'Push-up-bosu-ball_Chest', 5),
	(89, 'chest', '06551301-Push-up-on-stability-ball_Chest_360.gif', NULL, 'Push-up-on-stability-ball_Chest', 5),
	(90, 'chest', '06621301-Push-up-m_Chest-FIX_360-360x200.gif', NULL, 'Push-up-m_Chest-FIX', 5),
	(91, 'chest', '06671301-Raise-Single-Leg-Push-up_Chest_360.gif', NULL, 'Raise-Single-Leg-Push-up_Chest', 5),
	(92, 'chest', '08981301-Band-high-fly_Chest_360-360x200.gif', NULL, 'Band-high-fly_Chest', 5),
	(93, 'chest', '11721301-Assisted-Weighted-Push-up_Chest_360-360x200.gif', NULL, 'Assisted-Weighted-Push-up_Chest', 5),
	(94, 'chest', '11821301-Push-up-on-knees_Chest_360-360x200.gif', NULL, 'Push-up-on-knees_Chest', 5),
	(95, 'chest', '16241301-Dumbbell-Reverse-Bench-Press_Chest_360-360x200.gif', NULL, 'Dumbbell-Reverse-Bench-Press_Chest', 5),
	(96, 'chest', '22331301-Dumbbell-Front-Raise-female_Shoulders_360-2-360x200.gif', NULL, 'Dumbbell-Front-Raise_Shoulders', 5),
	(97, 'chest', '22551301-Lever-Seated-Fly-female_Chest_360-360x200.gif', NULL, 'Lever-Seated-Fly_Chest', 5),
	(98, 'chest', '23871301-Cable-Standing-Up-Straight-Crossovers-female_Chest_360-360x200.gif', NULL, 'Cable-Standing-Up-Straight-Crossovers', 5),
	(99, 'legs_glutes', '00241301-Barbell-Bench-Front-Squat_thighs_360.gif', NULL, 'Barbell-Bench-Front-Squat', 6),
	(100, 'legs_glutes', '00541301-Barbell-Lunge_Thighs_360.gif', NULL, 'Barbell-Lunge_Thighs', 6),
	(101, 'legs_glutes', '01271301-Barbell-Zercher-Squat_Hips_360.gif', NULL, 'Barbell-Zercher-Squat_Hips', 6),
	(102, 'legs_glutes', '03001301-Dumbbell-Deadlift_Back_360.gif', NULL, 'Dumbbell-Deadlift_Back', 6),
	(103, 'legs_glutes', '04801301-High-Knee-Twist_Cardio_360.gif', NULL, 'High-Knee-Twist_Cardio', 6),
	(104, 'legs_glutes', '05971301-Lever-Seated-Hip-Abduction_Hips-FIX_360-1-360x200.gif', NULL, 'Lever-Seated-Hip-Abduction_Hips-FIX', 6),
	(105, 'legs_glutes', '05981301-Lever-Seated-Hip-Adduction_Thighs_360-360x200.gif', NULL, 'Lever-Seated-Hip-Adduction_Thighs', 6),
	(106, 'legs_glutes', '07101301-Side-Hip-Abduction_Hips_360.gif', NULL, 'Side-Hip-Abduction_Hips', 6),
	(107, 'legs_glutes', '07111301-Side-Lunge-Stretch_Thighs_360-360x200.gif', NULL, 'Side-Lunge-Stretch_Thighs', 6),
	(108, 'legs_glutes', '07291301-Single-Leg-Hip-Bridge-straight-leg_hips_360-360x200.gif', NULL, 'Single-Leg-Hip-Bridge-straight-leg_hips', 6),
	(109, 'legs_glutes', '07911301-Standing-Hip-Abduction_Hips_360.gif', NULL, 'Standing-Hip-Abduction_Hips', 6),
	(110, 'legs_glutes', '08111301-Trap-Bar-Deadlift_Thighs_360.gif', NULL, 'Trap-Bar-Deadlift_Thighs', 6),
	(111, 'legs_glutes', '08791301-Cable-hip-abduction-version-2_Hips_360.gif', NULL, 'Cable-hip-abduction-version-2_Hips', 6),
	(112, 'legs_glutes', '09801301-Band-bent-over-hip-extension_Hips_360-360x200.gif', NULL, 'Band-bent-over-hip-extension_Hips', 6),
	(113, 'legs_glutes', '10601301-Barbell-Hip-Thrust_Hips_360.gif', NULL, 'Barbell-Hip-Thrust_Hips', 6),
	(114, 'legs_glutes', '10611301-Barbell-one-leg-hip-thrust_Hips_360.gif', NULL, 'Barbell-one-leg-hip-thrust_Hips', 6),
	(115, 'legs_glutes', '10631301-Barbell-sumo-squat_Thighs_360-360x200.gif', NULL, 'Barbell-sumo-squat_Thighs', 6),
	(116, 'legs_glutes', '11751301-Dumbbell-forward-leaning-lunge_Thighs_360-360x200.gif', NULL, 'Dumbbell-forward-leaning-lunge_Thighs', 6),
	(117, 'legs_glutes', '12411301-Bird-Dog-male_Back_360-1.gif', NULL, 'Bird-Dog_Back', 6),
	(118, 'legs_glutes', '14101301-Barbell-Lateral-Lunge_Hips_360-1.gif', NULL, 'Barbell-Lateral-Lunge_Hips', 6),
	(119, 'legs_glutes', '14621301-Barbell-Full-Squat-Side-POV_Thighs_360.gif', NULL, 'Barbell-Full-Squat-Side-POV_Thighs', 6),
	(120, 'legs_glutes', '15621301-Exercise-Ball-Wall-Squat_Thighs_360.gif', NULL, 'Exercise-Ball-Wall-Squat_Thighs', 6),
	(121, 'legs_glutes', '15931301-Sit-Squat_Thighs_360.gif', NULL, 'Sit-Squat', 6),
	(122, 'legs_glutes', '16841301-Dumbbell-Step-Up-Single-Leg-Balance-with-Bicep-Curl_Upper-Arms_360.gif', NULL, 'Dumbbell-Step-Up-Single-Leg-Balance-with-Bicep-Curl_Upper-Arms', 6),
	(123, 'legs_glutes', '22141301-Barbell-Deadlift-female_Hips_720-410x200.gif', NULL, 'Barbell-Deadlift', 6),
	(124, 'legs_glutes', '22161301-Barbell-Hip-Thrust-female_Hips_360.gif', NULL, 'Barbell-Hip-Thrust', 6),
	(125, 'legs_glutes', '22171301-Dumbbell-Bench-Squat-female_Thighs_360-360x200.gif', NULL, 'Dumbbell-Bench-Squat', 6),
	(126, 'legs_glutes', '22181301-Dumbbell-Lunge-female_Thighs_360-360x200.gif', NULL, 'Dumbbell-Lunge', 6),
	(127, 'legs_glutes', '22191301-Dumbbell-Rear-Lunge-female_Thighs_360-1-360x200.gif', NULL, 'Dumbbell-Rear-Lunge', 6),
	(128, 'legs_glutes', '22271301-Barbell-Single-Leg-Split-Squat-female_Thighs_360.gif', NULL, 'Barbell-Single-Leg-Split-Squat', 6),
	(129, 'legs_glutes', '22901301-Dumbbell-Bulgarian-Split-Squat-female_Thighs_360.gif', NULL, 'Dumbbell-Bulgarian-Split-Squat', 6),
	(130, 'legs_glutes', '23681301-Split-Squats_Thighs_360.gif', NULL, 'Split-Squats_Thighs', 6),
	(131, 'legs_glutes', '24611301-Side-Lying-Clam_Hips_360.gif', NULL, 'Side-Lying-Clam_Hips', 6),
	(132, 'legs_glutes', '26661301-Lever-Seated-Calf-Raise-plate-loaded-VERSION-2_Calves_360-360x200.gif', NULL, 'Lever-Seated-Calf-Raise-plate-loaded-VERSION-2_Calves', 6),
	(133, 'legs_glutes', '27281301-StrongMan-Front-Chest-Squat_Weightlifting_360.gif', NULL, 'StrongMan-Front-Chest-Squat_Weightlifting', 6),
	(134, 'legs_glutes', '27611301-Ankle-Dorsal-Flexion_Calves_360-360x200.gif', NULL, 'Ankle-Dorsal-Flexion_Calves', 6),
	(135, 'legs_glutes', '29511301-Lever-Horizontal-Leg-Press_Thighs_360-360x200.gif', NULL, 'Lever-Horizontal-Leg-Press_Thighs', 6),
	(136, 'legs_glutes', '29851301-Pistol-Squat-to-Box-female_Thighs_360-2.gif', NULL, 'Pistol-Squat-to-Box', 6),
	(137, 'legs_glutes', '30141301-Low-Glute-Bridge-on-floor-female_Hips_360-360x200.gif', NULL, 'Low-Glute-Bridge-on-floor', 6),
	(138, 'legs_glutes', 'Lever-Donkey-Calf-Raise-Calves.gif', NULL, 'Lever-Donkey-Calf-Raise', 6),
	(139, 'legs_glutes', 'Lever-Standing-Calf-Raise-Calf.gif', NULL, 'Lever-Standing-Calf-Raise', 6),
	(140, 'legs_glutes', 'lying-leg-curl-990x452-410x200.gif', NULL, 'lying-leg-curl', 6),
	(141, 'legs_glutes', 'seated-leg-curl-990x557-410x200.gif', NULL, 'seated-leg-curl', 6),
	(142, 'legs_glutes', 'Sled-45¯-Calf-Press-Calf.gif', NULL, 'Sled-45¯-Calf-Press-Calf', 6),
	(143, 'legs_glutes', 'Smith-Calf-Raise-version-2-Calves.gif', NULL, 'Smith-Calf-Raise-version-2-Calves', 6),
	(144, 'neck', '24081301-Weighted-Lying-Neck-Extension-with-head-harness_Neck_360-360x200.gif', NULL, 'Weighted-Lying-Neck-Extension-with-head-harness_Neck', 7),
	(145, 'neck', '24091301-Weighted-Lying-Neck-Flexion-with-head-harness_Neck_360-360x200.gif', NULL, 'Weighted-Lying-Neck-Flexion-with-head-harness_Neck', 7),
	(146, 'neck', '31521301-Assisted-Chin-Tuck-female_Neck_360-360x200.gif', NULL, 'Assisted-Chin-Tuck-female_Neck', 7),
	(147, 'shoulder', '00411301-Barbell-Front-Raise_Shoulders_360-1-360x200.gif', NULL, 'Barbell-Front-Raise_Shoulders', 8),
	(148, 'shoulder', '00411301-Barbell-Front-Raise_Shoulders_360-360x200.gif', NULL, 'Barbell-Front-Raise_Shoulders', 8),
	(149, 'shoulder', '00911301-Barbell-Seated-Overhead-Press_Shoulders_360.gif', NULL, 'Barbell-Seated-Overhead-Press_Shoulders', 8),
	(150, 'shoulder', '00911301-Barbell-Seated-Overhead-Press_Shoulders_360-360x200.gif', NULL, 'Barbell-Seated-Overhead-Press_Shoulders', 8),
	(151, 'shoulder', '00951301-Barbell-Shrug_Back_720-410x200.gif', NULL, 'Barbell-Shrug_Back', 8),
	(152, 'shoulder', '01001301-Barbell-Skier_Shoulders_360.gif', NULL, 'Barbell-Skier_Shoulders', 8),
	(153, 'shoulder', '01201301-Barbell-Upright-Row_shoulder_360-360x200.gif', NULL, 'Barbell-Upright-Row_shoulder', 8),
	(154, 'shoulder', '01231301-Barbell-Wide-Grip-Upright-Row_Shoulders_360.gif', NULL, 'Barbell-Wide-Grip-Upright-Row_Shoulders', 8),
	(155, 'shoulder', '01611301-Cable-Forward-Raise_Shoulders_360.gif', NULL, 'Cable-Forward-Raise_Shoulders', 8),
	(156, 'shoulder', '01621301-Cable-Front-Raise_Shoulders_360.gif', NULL, 'Cable-Front-Raise_Shoulders', 8),
	(157, 'shoulder', '01641301-Cable-Front-Shoulder-Raise_Shoulders_360-360x200.gif', NULL, 'Cable-Front-Shoulder-Raise_Shoulders', 8),
	(158, 'shoulder', '02201301-Cable-Shrug_Back_360.gif', NULL, 'Cable-Shrug_Back', 8),
	(159, 'shoulder', '02331301-Cable-Standing-Rear-Delt-Row-with-rope_shoulder_360.gif', NULL, 'Cable-Standing-Rear-Delt-Row-with-rope_shoulder', 8),
	(160, 'shoulder', '02331301-Cable-Standing-Rear-Delt-Row-with-rope_shoulder_360-1.gif', NULL, 'Cable-Standing-Rear-Delt-Row-with-rope_shoulder', 8),
	(161, 'shoulder', '03451301-Dumbbell-Lying-One-Arm-Rear-Lateral-Raise_shoulder_360.gif', NULL, 'Dumbbell-Lying-One-Arm-Rear-Lateral-Raise_shoulder', 8),
	(162, 'shoulder', '03481301-Dumbbell-Lying-Rear-Lateral-Raise_shoulder_360-360x200.gif', NULL, 'Dumbbell-Lying-Rear-Lateral-Raise_shoulder', 8),
	(163, 'shoulder', '03551301-Dumbbell-One-Arm-Lateral-Raise_shoulder_360.gif', NULL, 'Dumbbell-One-Arm-Lateral-Raise_shoulder', 8),
	(164, 'shoulder', '03801301-Dumbbell-Rear-Lateral-Raise_Shoulders_360.gif', NULL, 'Dumbbell-Rear-Lateral-Raise_Shoulders', 8),
	(165, 'shoulder', '03871301-Dumbbell-Seated-Alternate-Front-Raise_Shoulders_360.gif', NULL, 'Dumbbell-Seated-Alternate-Front-Raise_Shoulders', 8),
	(166, 'shoulder', '04141301-Dumbbell-Standing-Alternate-Overhead-Press_Shoulders_360-360x200.gif', NULL, 'Dumbbell-Standing-Alternate-Overhead-Press_Shoulders', 8),
	(167, 'shoulder', '04261301-Dumbbell-Standing-Overhead-Press_shoulder_360-360x200.gif', NULL, 'Dumbbell-Standing-Overhead-Press_shoulder', 8),
	(168, 'shoulder', '04381301-Dumbbell-W-press_Shoulders_360.gif', NULL, 'Dumbbell-W-press_Shoulders', 8),
	(169, 'shoulder', '05491301-Kettlebell-Swing_Kettlebell_360-360x200.gif', NULL, 'Kettlebell-Swing_Kettlebell', 8),
	(170, 'shoulder', '05841301-Lever-Lateral-Raise_shoulder_360-1-360x200.gif', NULL, 'Lever-Lateral-Raise_shoulder', 8),
	(171, 'shoulder', '07671301-Smith-Shrug_Back_360.gif', NULL, 'Smith-Shrug_Back', 8),
	(172, 'shoulder', '08341301-Weighted-Front-Raise_Shoulders_360-1.gif', NULL, 'Weighted-Front-Raise_Shoulders', 8),
	(173, 'shoulder', '08641301-Dumbbell-Upright-Shoulder-External-Rotation_Back_360-360x200.gif', NULL, 'Dumbbell-Upright-Shoulder-External-Rotation_Back', 8),
	(174, 'shoulder', '09211301-Band-standing-external-shoulder-rotation_Back_360-360x200.gif', NULL, 'Band-standing-external-shoulder-rotation_Back', 8),
	(175, 'shoulder', '09351301-Band-Upright-Shoulder-External-Rotation_Back_360-360x200.gif', NULL, 'Band-Upright-Shoulder-External-Rotation_Back', 8),
	(176, 'shoulder', '11951301-Lever-Incline-Hammer-Chest-Press_Chest_360-360x200.gif', NULL, 'Lever-Incline-Hammer-Chest-Press_Chest', 8),
	(177, 'shoulder', '12261301-EZ-Bar-Standing-Overhead-Press_Shoulders_360-360x200.gif', NULL, 'EZ-Bar-Standing-Overhead-Press_Shoulders', 8),
	(178, 'shoulder', '13171301-Barbell-Reverse-Grip-Incline-Bench-Row_Back_360.gif', NULL, 'Barbell-Reverse-Grip-Incline-Bench-Row_Back', 8),
	(179, 'shoulder', '21371301-Dumbbell-Arnold-Press_Shoulders_360.gif', NULL, 'Dumbbell-Arnold-Press_Shoulders', 8),
	(180, 'shoulder', '22331301-Dumbbell-Front-Raise-female_Shoulders_360-2-360x200.gif', NULL, 'Dumbbell-Front-Raise-female_Shoulders', 8),
	(181, 'shoulder', '22331301-Dumbbell-Front-Raise-female_Shoulders_360-4.gif', NULL, 'Dumbbell-Front-Raise-female_Shoulders', 8),
	(182, 'shoulder', '22341301-Dumbbell-Standing-Lateral-Raise-female_Shoulders_360-360x200.gif', NULL, 'Dumbbell-Standing-Lateral-Raise-female_Shoulders', 8),
	(183, 'shoulder', '22351301-Dumbbell-Seated-Front-Raise-female_Shoulders_360-360x200.gif', NULL, 'Dumbbell-Seated-Front-Raise-female_Shoulders', 8),
	(184, 'shoulder', '22371301-Dumbbell-Seated-Shoulder-Press-female_Shoulders_360.gif', NULL, 'Dumbbell-Seated-Shoulder-Press-female_Shoulders', 8),
	(185, 'shoulder', '22371301-Dumbbell-Seated-Shoulder-Press-female_Shoulders_720.gif', NULL, 'Dumbbell-Seated-Shoulder-Press-female_Shoulders', 8),
	(186, 'shoulder', '23171301-Dumbbell-Seated-Bent-Arm-Lateral-raise_Shoulders_360-360x200.gif', NULL, 'Dumbbell-Seated-Bent-Arm-Lateral-raise_Shoulders', 8),
	(187, 'shoulder', '23971301-Dumbbell-Scott-Press_Shoulders_360-360x200.gif', NULL, 'Dumbbell-Scott-Press_Shoulders', 8),
	(188, 'shoulder', '29271301-Kettlebell-Kneeling-One-Arm-Bottoms-Up-Press_Shoulders_360.gif', NULL, 'Kettlebell-Kneeling-One-Arm-Bottoms-Up-Press_Shoulders', 8),
	(189, 'triceps', '00611301-Barbell-Lying-Triceps-Extension_Upper-Arms_360.gif', NULL, 'Barbell-Lying-Triceps-Extension_Upper-Arms', 9),
	(190, 'triceps', '01091301-Barbell-Standing-Overhead-Triceps-Extension_Upper-Arms_360.gif', NULL, 'Barbell-Standing-Overhead-Triceps-Extension_Upper-Arms', 9),
	(191, 'triceps', '02001301-Cable-Pushdown-with-rope-attachment_Upper-Arms_360.gif', NULL, 'Cable-Pushdown-with-rope-attachment_Upper-Arms', 9),
	(192, 'triceps', '02311301-Cable-Standing-One-Arm-Triceps-Extension_Upper-Arms_360.gif', NULL, 'Cable-Standing-One-Arm-Triceps-Extension_Upper-Arms', 9),
	(193, 'triceps', '02411301-Cable-Triceps-Pushdown-V-bar-attachment_Upper-Arms_360.gif', NULL, 'Cable-Triceps-Pushdown-V-bar-attachment_Upper-Arms', 9),
	(194, 'triceps', '02591301-Close-Grip-Push-up_Upper-Arms_360-360x200.gif', NULL, 'Close-Grip-Push-up_Upper-Arms', 9),
	(195, 'triceps', '03331301-Dumbbell-Kickback_Upper-Arms_360.gif', NULL, 'Dumbbell-Kickback_Upper-Arms', 9),
	(196, 'triceps', '03941301-Dumbbell-Seated-Kickback_Upper-Arms_360.gif', NULL, 'Dumbbell-Seated-Kickback_Upper-Arms', 9),
	(197, 'triceps', '04491301-EZ-Barbell-Incline-Triceps-Extension_Upper-Arms_360.gif', NULL, 'EZ-Barbell-Incline-Triceps-Extension_Upper-Arms', 9),
	(198, 'triceps', '08601301-Cable-kickback_Upper-arms_360.gif', NULL, 'Cable-kickback_Upper-arms', 9),
	(199, 'triceps', '13991301-Bench-dip-on-floor_Upper-Arms_360.gif', NULL, 'Bench-dip-on-floor_Upper-Arms', 9),
	(200, 'triceps', '16061301-Cable-Reverse-Grip-Triceps-Pushdown-SZ-bar_Upper-arms_360-1.gif', NULL, 'Cable-Reverse-Grip-Triceps-Pushdown-SZ-bar_Upper-arms', 9),
	(201, 'triceps', '17341301-Dumbbell-Kickbacks-on-Exercise-Ball_Upper-Arms_360-360x200.gif', NULL, 'Dumbbell-Kickbacks-on-Exercise-Ball_Upper-Arms', 9),
	(202, 'triceps', '17381301-Dumbbell-Seated-Reverse-Grip-One-Arm-Overhead-Tricep-Extension_Upper-Arms_360-360x200.gif', NULL, 'Dumbbell-Seated-Reverse-Grip-One-Arm-Overhead-Tricep-Extension_Upper-Arms_360', 9),
	(203, 'triceps', '17461301-Exercise-Ball-Supine-Triceps-Extension_Upper-Arms_360.gif', NULL, 'Exercise-Ball-Supine-Triceps-Extension_Upper-Arms', 9),
	(204, 'triceps', '21881301-Dumbbell-Seated-Triceps-Extension_Upper-Arms_360.gif', NULL, 'Dumbbell-Seated-Triceps-Extension_Upper-Arms_360', 9),
	(205, 'triceps', '31151301-Triceps-Dip-female_Upper-Arms_360.gif', NULL, 'Triceps-Dip-female_Upper-Arms', 9),
	(206, 'mobility_strech', 'Cat-cow_1024x1024.gif', NULL, 'Cat_Cow', 1),
	(207, 'mobility_strech', 'Crab_hold_Side.gif', NULL, 'Crab_Hold', 1),
	(208, 'mobility_strech', 'Elbow_CARs.gif', NULL, 'Elbow_Cars', 1),
	(209, 'mobility_strech', 'Sit_back_thoracic_cat-cow.gif', NULL, 'Sit_Back_Thoracic_Cat_Cow', 1),
	(210, 'mobility_strech', 'Sphinx_pose_Side.gif', NULL, 'Sphinx_Pose_Side', 1),
	(211, 'mobility_strech', 'Adductor_Rockers.gif', NULL, 'Adductor_Rockers.gif', 1);
/*!40000 ALTER TABLE `allexerciselist` ENABLE KEYS */;

-- tablo yapısı dökülüyor gorillas_cntsis.events
CREATE TABLE IF NOT EXISTS `events` (
  `EventID` int(11) NOT NULL DEFAULT 1,
  `usersget` int(11) DEFAULT NULL,
  `mylistget` int(11) DEFAULT NULL,
  `Subject` varchar(500) NOT NULL,
  `Description` varchar(1500) DEFAULT NULL,
  `Start` datetime NOT NULL,
  `End` datetime DEFAULT NULL,
  `ThemeColor` varchar(10) DEFAULT NULL,
  `IsFullDay` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`EventID`),
  KEY `usersget` (`usersget`),
  KEY `mylistget` (`mylistget`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- gorillas_cntsis.events: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` (`EventID`, `usersget`, `mylistget`, `Subject`, `Description`, `Start`, `End`, `ThemeColor`, `IsFullDay`) VALUES
	(156180461, 785935587, 395999133, 'Pazar Kosusu', 'Katilmak isteyenler Ataturk Orman Ciftligine Bekliyoruz.A', '2020-09-23 00:00:00', NULL, '#007bff', b'1');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;

-- tablo yapısı dökülüyor gorillas_cntsis.exercise
CREATE TABLE IF NOT EXISTS `exercise` (
  `exerciseid` int(11) NOT NULL DEFAULT 1,
  `mylistget` int(11) NOT NULL DEFAULT 1,
  `usersget` int(11) NOT NULL DEFAULT 1,
  `subject` text DEFAULT NULL,
  `descriptions` text DEFAULT NULL,
  `descriptions1` text DEFAULT NULL,
  `descriptions2` text DEFAULT NULL,
  `descriptions3` text DEFAULT NULL,
  `descriptions4` text DEFAULT NULL,
  `descriptions5` mediumtext DEFAULT NULL,
  `descriptions6` mediumtext DEFAULT NULL,
  `descriptions7` mediumtext DEFAULT NULL,
  `descriptions8` mediumtext DEFAULT NULL,
  `descriptions9` mediumtext DEFAULT NULL,
  `descriptions10` mediumtext DEFAULT NULL,
  `descriptions11` mediumtext DEFAULT NULL,
  `descriptions12` mediumtext DEFAULT NULL,
  `descriptions13` mediumtext DEFAULT NULL,
  `descriptions14` mediumtext DEFAULT NULL,
  `descriptions15` mediumtext DEFAULT NULL,
  `descriptions16` mediumtext DEFAULT NULL,
  `descriptions17` mediumtext DEFAULT NULL,
  `descriptions18` mediumtext DEFAULT NULL,
  `descriptions19` mediumtext DEFAULT NULL,
  `descriptions20` mediumtext DEFAULT NULL,
  `descriptions21` mediumtext DEFAULT NULL,
  `descriptions22` mediumtext DEFAULT NULL,
  `descriptions23` mediumtext DEFAULT NULL,
  `descriptions24` mediumtext DEFAULT NULL,
  `descriptions25` mediumtext DEFAULT NULL,
  `descriptions26` mediumtext DEFAULT NULL,
  `descriptions27` mediumtext DEFAULT NULL,
  `descriptions28` mediumtext DEFAULT NULL,
  `descriptions29` mediumtext DEFAULT NULL,
  `descriptions30` mediumtext DEFAULT NULL,
  `descriptions31` mediumtext DEFAULT NULL,
  `descriptions32` mediumtext DEFAULT NULL,
  `descriptions33` mediumtext DEFAULT NULL,
  `descriptions34` mediumtext DEFAULT NULL,
  `descriptions35` mediumtext DEFAULT NULL,
  `descriptions36` mediumtext DEFAULT NULL,
  `descriptions37` mediumtext DEFAULT NULL,
  `descriptions38` mediumtext DEFAULT NULL,
  `descriptions39` mediumtext DEFAULT NULL,
  `descriptions40` mediumtext DEFAULT NULL,
  `descriptions41` mediumtext DEFAULT NULL,
  `descriptions42` mediumtext DEFAULT NULL,
  `descriptions43` mediumtext DEFAULT NULL,
  `descriptions44` mediumtext DEFAULT NULL,
  `descriptions45` mediumtext DEFAULT NULL,
  `descriptions46` mediumtext DEFAULT NULL,
  `descriptions47` mediumtext DEFAULT NULL,
  `descriptions48` mediumtext DEFAULT NULL,
  `descriptions49` mediumtext DEFAULT NULL,
  `descriptions50` mediumtext DEFAULT NULL,
  `descriptions51` mediumtext DEFAULT NULL,
  `descriptions52` mediumtext DEFAULT NULL,
  `descriptions53` mediumtext DEFAULT NULL,
  `descriptions54` mediumtext DEFAULT NULL,
  `descriptions55` mediumtext DEFAULT NULL,
  `descriptions56` mediumtext DEFAULT NULL,
  `descriptions57` mediumtext DEFAULT NULL,
  `descriptions58` mediumtext DEFAULT NULL,
  `descriptions59` mediumtext DEFAULT NULL,
  `descriptions60` mediumtext DEFAULT NULL,
  `descriptions61` mediumtext DEFAULT NULL,
  `descriptions62` mediumtext DEFAULT NULL,
  `descriptions63` mediumtext DEFAULT NULL,
  `descriptions64` mediumtext DEFAULT NULL,
  `descriptions65` mediumtext DEFAULT NULL,
  `descriptions66` mediumtext DEFAULT NULL,
  `descriptions67` mediumtext DEFAULT NULL,
  `descriptions68` mediumtext DEFAULT NULL,
  `descriptions69` mediumtext DEFAULT NULL,
  `descriptions70` mediumtext DEFAULT NULL,
  `descriptions71` mediumtext DEFAULT NULL,
  `descriptions72` mediumtext DEFAULT NULL,
  `descriptions73` mediumtext DEFAULT NULL,
  `descriptions74` mediumtext DEFAULT NULL,
  `descriptions75` mediumtext DEFAULT NULL,
  `descriptions76` mediumtext DEFAULT NULL,
  `descriptions77` mediumtext DEFAULT NULL,
  `descriptions78` mediumtext DEFAULT NULL,
  `descriptions79` mediumtext DEFAULT NULL,
  `descriptions80` mediumtext DEFAULT NULL,
  `descriptions81` mediumtext DEFAULT NULL,
  `descriptions82` mediumtext DEFAULT NULL,
  `descriptions83` mediumtext DEFAULT NULL,
  `descriptions84` mediumtext DEFAULT NULL,
  `descriptions85` mediumtext DEFAULT NULL,
  `descriptions86` mediumtext DEFAULT NULL,
  `descriptions87` mediumtext DEFAULT NULL,
  `descriptions88` mediumtext DEFAULT NULL,
  `descriptions89` mediumtext DEFAULT NULL,
  `descriptions90` mediumtext DEFAULT NULL,
  `descriptions91` mediumtext DEFAULT NULL,
  `descriptions92` mediumtext DEFAULT NULL,
  `descriptions93` mediumtext DEFAULT NULL,
  `descriptions94` mediumtext DEFAULT NULL,
  `descriptions95` mediumtext DEFAULT NULL,
  `descriptions96` mediumtext DEFAULT NULL,
  `descriptions97` mediumtext DEFAULT NULL,
  `descriptions98` mediumtext DEFAULT NULL,
  `descriptions99` mediumtext DEFAULT NULL,
  `descriptions100` mediumtext DEFAULT NULL,
  `date` date NOT NULL,
  `content1` varchar(200) DEFAULT NULL,
  `content2` varchar(200) DEFAULT NULL,
  `content3` varchar(200) DEFAULT NULL,
  `content4` varchar(200) DEFAULT NULL,
  `content5` varchar(200) DEFAULT NULL,
  `content6` varchar(200) DEFAULT NULL,
  `content7` varchar(200) DEFAULT NULL,
  `content8` varchar(200) DEFAULT NULL,
  `content9` varchar(200) DEFAULT NULL,
  `content10` varchar(200) DEFAULT NULL,
  `content11` varchar(200) DEFAULT NULL,
  `content12` varchar(200) DEFAULT NULL,
  `content13` varchar(200) DEFAULT NULL,
  `content14` varchar(200) DEFAULT NULL,
  `content15` varchar(200) DEFAULT NULL,
  `content16` varchar(200) DEFAULT NULL,
  `content17` varchar(200) DEFAULT NULL,
  `content18` varchar(200) DEFAULT NULL,
  `content19` varchar(200) DEFAULT NULL,
  `content20` varchar(200) DEFAULT NULL,
  `content21` varchar(200) DEFAULT NULL,
  `content22` varchar(200) DEFAULT NULL,
  `content23` varchar(200) DEFAULT NULL,
  `content24` varchar(200) DEFAULT NULL,
  `content25` varchar(200) DEFAULT NULL,
  `content26` varchar(200) DEFAULT NULL,
  `content27` varchar(200) DEFAULT NULL,
  `content28` varchar(200) DEFAULT NULL,
  `content29` varchar(200) DEFAULT NULL,
  `content30` varchar(200) DEFAULT NULL,
  `content31` varchar(200) DEFAULT NULL,
  `content32` varchar(200) DEFAULT NULL,
  `content33` varchar(200) DEFAULT NULL,
  `content34` varchar(200) DEFAULT NULL,
  `content35` varchar(200) DEFAULT NULL,
  `content36` varchar(200) DEFAULT NULL,
  `content37` varchar(200) DEFAULT NULL,
  `content38` varchar(200) DEFAULT NULL,
  `content39` varchar(200) DEFAULT NULL,
  `content40` varchar(200) DEFAULT NULL,
  `content41` varchar(200) DEFAULT NULL,
  `content42` varchar(200) DEFAULT NULL,
  `content43` varchar(200) DEFAULT NULL,
  `content44` varchar(200) DEFAULT NULL,
  `content45` varchar(200) DEFAULT NULL,
  `content46` varchar(200) DEFAULT NULL,
  `content47` varchar(200) DEFAULT NULL,
  `content48` varchar(200) DEFAULT NULL,
  `content49` varchar(200) DEFAULT NULL,
  `content50` varchar(200) DEFAULT NULL,
  `content51` varchar(200) DEFAULT NULL,
  `content52` varchar(200) DEFAULT NULL,
  `content53` varchar(200) DEFAULT NULL,
  `content54` varchar(200) DEFAULT NULL,
  `content55` varchar(200) DEFAULT NULL,
  `content56` varchar(200) DEFAULT NULL,
  `content57` varchar(200) DEFAULT NULL,
  `content58` varchar(200) DEFAULT NULL,
  `content59` varchar(200) DEFAULT NULL,
  `content60` varchar(200) DEFAULT NULL,
  `content61` varchar(200) DEFAULT NULL,
  `content62` varchar(200) DEFAULT NULL,
  `content63` varchar(200) DEFAULT NULL,
  `content64` varchar(200) DEFAULT NULL,
  `content65` varchar(200) DEFAULT NULL,
  `content66` varchar(200) DEFAULT NULL,
  `content67` varchar(200) DEFAULT NULL,
  `content68` varchar(200) DEFAULT NULL,
  `content69` varchar(200) DEFAULT NULL,
  `content70` varchar(200) DEFAULT NULL,
  `content71` varchar(200) DEFAULT NULL,
  `content72` varchar(200) DEFAULT NULL,
  `content73` varchar(200) DEFAULT NULL,
  `content74` varchar(200) DEFAULT NULL,
  `content75` varchar(200) DEFAULT NULL,
  `content76` varchar(200) DEFAULT NULL,
  `content77` varchar(200) DEFAULT NULL,
  `content78` varchar(200) DEFAULT NULL,
  `content79` varchar(200) DEFAULT NULL,
  `content80` varchar(200) DEFAULT NULL,
  `content81` varchar(200) DEFAULT NULL,
  `content82` varchar(200) DEFAULT NULL,
  `content83` varchar(200) DEFAULT NULL,
  `content84` varchar(200) DEFAULT NULL,
  `content85` varchar(200) DEFAULT NULL,
  `content86` varchar(200) DEFAULT NULL,
  `content87` varchar(200) DEFAULT NULL,
  `content88` varchar(200) DEFAULT NULL,
  `content89` varchar(200) DEFAULT NULL,
  `content90` varchar(200) DEFAULT NULL,
  `content91` varchar(200) DEFAULT NULL,
  `content92` varchar(200) DEFAULT NULL,
  `content93` varchar(200) DEFAULT NULL,
  `content94` varchar(200) DEFAULT NULL,
  `content95` varchar(200) DEFAULT NULL,
  `content96` varchar(200) DEFAULT NULL,
  `content97` varchar(200) DEFAULT NULL,
  `content98` varchar(200) DEFAULT NULL,
  `content99` varchar(200) DEFAULT NULL,
  `content100` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`exerciseid`),
  KEY `usersget` (`usersget`),
  KEY `mylistget` (`mylistget`),
  CONSTRAINT `FK_exercise_mylist` FOREIGN KEY (`mylistget`) REFERENCES `mylist` (`mylistid`),
  CONSTRAINT `FK_exercise_users` FOREIGN KEY (`usersget`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- gorillas_cntsis.exercise: ~4 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `exercise` DISABLE KEYS */;
INSERT INTO `exercise` (`exerciseid`, `mylistget`, `usersget`, `subject`, `descriptions`, `descriptions1`, `descriptions2`, `descriptions3`, `descriptions4`, `descriptions5`, `descriptions6`, `descriptions7`, `descriptions8`, `descriptions9`, `descriptions10`, `descriptions11`, `descriptions12`, `descriptions13`, `descriptions14`, `descriptions15`, `descriptions16`, `descriptions17`, `descriptions18`, `descriptions19`, `descriptions20`, `descriptions21`, `descriptions22`, `descriptions23`, `descriptions24`, `descriptions25`, `descriptions26`, `descriptions27`, `descriptions28`, `descriptions29`, `descriptions30`, `descriptions31`, `descriptions32`, `descriptions33`, `descriptions34`, `descriptions35`, `descriptions36`, `descriptions37`, `descriptions38`, `descriptions39`, `descriptions40`, `descriptions41`, `descriptions42`, `descriptions43`, `descriptions44`, `descriptions45`, `descriptions46`, `descriptions47`, `descriptions48`, `descriptions49`, `descriptions50`, `descriptions51`, `descriptions52`, `descriptions53`, `descriptions54`, `descriptions55`, `descriptions56`, `descriptions57`, `descriptions58`, `descriptions59`, `descriptions60`, `descriptions61`, `descriptions62`, `descriptions63`, `descriptions64`, `descriptions65`, `descriptions66`, `descriptions67`, `descriptions68`, `descriptions69`, `descriptions70`, `descriptions71`, `descriptions72`, `descriptions73`, `descriptions74`, `descriptions75`, `descriptions76`, `descriptions77`, `descriptions78`, `descriptions79`, `descriptions80`, `descriptions81`, `descriptions82`, `descriptions83`, `descriptions84`, `descriptions85`, `descriptions86`, `descriptions87`, `descriptions88`, `descriptions89`, `descriptions90`, `descriptions91`, `descriptions92`, `descriptions93`, `descriptions94`, `descriptions95`, `descriptions96`, `descriptions97`, `descriptions98`, `descriptions99`, `descriptions100`, `date`, `content1`, `content2`, `content3`, `content4`, `content5`, `content6`, `content7`, `content8`, `content9`, `content10`, `content11`, `content12`, `content13`, `content14`, `content15`, `content16`, `content17`, `content18`, `content19`, `content20`, `content21`, `content22`, `content23`, `content24`, `content25`, `content26`, `content27`, `content28`, `content29`, `content30`, `content31`, `content32`, `content33`, `content34`, `content35`, `content36`, `content37`, `content38`, `content39`, `content40`, `content41`, `content42`, `content43`, `content44`, `content45`, `content46`, `content47`, `content48`, `content49`, `content50`, `content51`, `content52`, `content53`, `content54`, `content55`, `content56`, `content57`, `content58`, `content59`, `content60`, `content61`, `content62`, `content63`, `content64`, `content65`, `content66`, `content67`, `content68`, `content69`, `content70`, `content71`, `content72`, `content73`, `content74`, `content75`, `content76`, `content77`, `content78`, `content79`, `content80`, `content81`, `content82`, `content83`, `content84`, `content85`, `content86`, `content87`, `content88`, `content89`, `content90`, `content91`, `content92`, `content93`, `content94`, `content95`, `content96`, `content97`, `content98`, `content99`, `content100`) VALUES
	(409449128, 1, 1, '30 push up', '1', 'asd', 'asd', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-27', 'Elbow_CARs.gif', 'Sphinx_pose_Side.gif', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
	(585173408, 1, 773330568, 'Admin ilk Post Test1', 'a', 'Jack-knife-on-Ball:a', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-02', '05031301-Jack-knife-on-Ball_waist_360.gif', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
	(733017269, 1, 773330568, 'Test egzersizi', 'Bugunku Egzersizlerin listesi', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-27', 'Crab_hold_Side.gif', 'Sphinx_pose_Side.gif', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
	(971566067, 1, 773330568, 'Tum gun Beslenme Duzenim', 'Bu Gunku idmanlar', 'Jackknife-Sit-Up_waist: 3 Set 12-20 Tekrar yapilacak.', 'Decline-Sit-up-arms-straight_waist: 3set 15-30 tekrar olucak.', 'Dumbbell-One-Arm-Reverse-Preacher-Curl_Forearms: 4 set 10 tekrar olucak yavas yapilacak 2:1 oranla', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-20', '05071301-Jackknife-Sit-Up_waist_360-360x200.gif', '02811301-Decline-Sit-up-arms-straight_waist_360-360x200.gif', '14141301-Dumbbell-One-Arm-Reverse-Preacher-Curl_Forearms_360.gif', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
/*!40000 ALTER TABLE `exercise` ENABLE KEYS */;

-- tablo yapısı dökülüyor gorillas_cntsis.home
CREATE TABLE IF NOT EXISTS `home` (
  `homeid` int(11) NOT NULL DEFAULT 1,
  `mylistget` int(11) NOT NULL DEFAULT 1,
  `usersget` int(11) NOT NULL DEFAULT 1,
  `subject` varchar(500) DEFAULT NULL,
  `descriptions` varchar(1500) DEFAULT NULL,
  `date` date NOT NULL,
  `content1` varchar(500) DEFAULT NULL,
  `content2` varchar(500) DEFAULT NULL,
  `content3` varchar(500) DEFAULT NULL,
  `content4` varchar(500) DEFAULT NULL,
  `content5` varchar(500) DEFAULT NULL,
  `content6` varchar(500) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `protein` varchar(50) DEFAULT NULL,
  `carb` varchar(50) DEFAULT NULL,
  `fat` varchar(50) DEFAULT NULL,
  `calori` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`homeid`),
  KEY `usersget` (`usersget`),
  KEY `mylistget` (`mylistget`),
  CONSTRAINT `FK_home_mylist` FOREIGN KEY (`mylistget`) REFERENCES `mylist` (`mylistid`),
  CONSTRAINT `FK_home_users` FOREIGN KEY (`usersget`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- gorillas_cntsis.home: ~3 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `home` DISABLE KEYS */;
INSERT INTO `home` (`homeid`, `mylistget`, `usersget`, `subject`, `descriptions`, `date`, `content1`, `content2`, `content3`, `content4`, `content5`, `content6`, `color`, `protein`, `carb`, `fat`, `calori`) VALUES
	(44989975, 395999133, 785935587, 'Tum gun Beslenme Duzenim', 'Toplam kalorime dikkat ederek yemeklerimi ozenle pisirdim', '2020-09-20', '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', '6.jpg', 'red', '165', '210', '73', '180'),
	(54601345, 395999133, 972535663, 'User ilk Post Test1', 'Toplam kalorime dikkat ederek yemeklerimi ozenle pisirdim', '2020-09-20', '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', '6.jpg', '#28a745', '165', '210', '73', '180'),
	(448482028, 1, 1, 'Admin ilk Post Test1', 'Toplam kalorime dikkat ederek yemeklerimi ozenle pisirdim', '2020-08-20', '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', '6.jpg', '#007bff', '165', '210', '73', '320');
/*!40000 ALTER TABLE `home` ENABLE KEYS */;

-- tablo yapısı dökülüyor gorillas_cntsis.homework
CREATE TABLE IF NOT EXISTS `homework` (
  `homeworkid` int(11) NOT NULL DEFAULT 1,
  `mylistget` int(11) NOT NULL DEFAULT 1,
  `usersget` int(11) NOT NULL DEFAULT 1,
  `subject` varchar(500) DEFAULT NULL,
  `descriptions` varchar(1500) DEFAULT NULL,
  `date` date NOT NULL,
  `exercise` varchar(1500) DEFAULT NULL,
  `nutrition` varchar(1500) DEFAULT NULL,
  `hworktime` date NOT NULL,
  `content1` varchar(500) DEFAULT NULL,
  `content2` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`homeworkid`),
  KEY `usersget` (`usersget`),
  KEY `mylistget` (`mylistget`),
  CONSTRAINT `FK_homework_mylist` FOREIGN KEY (`mylistget`) REFERENCES `mylist` (`mylistid`),
  CONSTRAINT `FK_homework_users` FOREIGN KEY (`usersget`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- gorillas_cntsis.homework: ~1 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `homework` DISABLE KEYS */;
INSERT INTO `homework` (`homeworkid`, `mylistget`, `usersget`, `subject`, `descriptions`, `date`, `exercise`, `nutrition`, `hworktime`, `content1`, `content2`) VALUES
	(667119732, 1, 773330568, 'Aksam icin 30 dk Kosu', 'Gece 30 dk interval kosu', '2020-09-20', 'Kardiyo', 'idman sonrasi protein shake ve yulaf 60gr', '2020-09-20', 'fitness-img.jpg', 'our_gallery_07.jpg');
/*!40000 ALTER TABLE `homework` ENABLE KEYS */;

-- tablo yapısı dökülüyor gorillas_cntsis.messagebox
CREATE TABLE IF NOT EXISTS `messagebox` (
  `messageid` int(11) NOT NULL DEFAULT 1,
  `namesurname` varchar(150) DEFAULT NULL,
  `youremail` varchar(500) DEFAULT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `message` varchar(1500) DEFAULT NULL,
  `date` date NOT NULL,
  `color` varchar(500) NOT NULL DEFAULT 'fas fa-star text-warning',
  PRIMARY KEY (`messageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- gorillas_cntsis.messagebox: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `messagebox` DISABLE KEYS */;
/*!40000 ALTER TABLE `messagebox` ENABLE KEYS */;

-- tablo yapısı dökülüyor gorillas_cntsis.myconnect
CREATE TABLE IF NOT EXISTS `myconnect` (
  `myconnectid` int(11) NOT NULL DEFAULT 1,
  `usersget` int(11) NOT NULL DEFAULT 1,
  `namesurname` varchar(500) DEFAULT NULL,
  `adres` varchar(500) DEFAULT NULL,
  `tel` varchar(13) DEFAULT NULL,
  `youremail` varchar(500) DEFAULT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `descriptions` varchar(1500) DEFAULT NULL,
  `color` varchar(200) DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`myconnectid`),
  KEY `usersget` (`usersget`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- gorillas_cntsis.myconnect: ~1 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `myconnect` DISABLE KEYS */;
INSERT INTO `myconnect` (`myconnectid`, `usersget`, `namesurname`, `adres`, `tel`, `youremail`, `subject`, `descriptions`, `color`, `date`) VALUES
	(1, 1, 'Alican Ozer', 'Bursa', '+905445876621', 'alicanozer@gmail.com', 'Fiyat', 'Hocam Aylık Ücretiniz Ne Kadar Acaba?', 'fas fa-check text-primary', '2020-09-20');
/*!40000 ALTER TABLE `myconnect` ENABLE KEYS */;

-- tablo yapısı dökülüyor gorillas_cntsis.mylist
CREATE TABLE IF NOT EXISTS `mylist` (
  `mylistid` int(9) NOT NULL DEFAULT 1,
  `usersget` int(11) NOT NULL DEFAULT 1,
  `listname` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`mylistid`),
  KEY `usersget` (`usersget`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- gorillas_cntsis.mylist: ~2 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `mylist` DISABLE KEYS */;
INSERT INTO `mylist` (`mylistid`, `usersget`, `listname`) VALUES
	(1, 1, '519753AZ'),
	(395999133, 785935587, 'h3I5HBh8');
/*!40000 ALTER TABLE `mylist` ENABLE KEYS */;

-- tablo yapısı dökülüyor gorillas_cntsis.mymessage
CREATE TABLE IF NOT EXISTS `mymessage` (
  `mymessageid` int(11) NOT NULL DEFAULT 1,
  `mylistget` int(11) NOT NULL DEFAULT 1,
  `usersget` int(11) NOT NULL DEFAULT 1,
  `namesurname` varchar(500) DEFAULT NULL,
  `youremail` varchar(500) DEFAULT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `message` varchar(1500) DEFAULT NULL,
  `date` date NOT NULL,
  `color` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`mymessageid`),
  KEY `usersget` (`usersget`),
  KEY `mylistget` (`mylistget`),
  CONSTRAINT `FK_mymessage_mylist` FOREIGN KEY (`mylistget`) REFERENCES `mylist` (`mylistid`),
  CONSTRAINT `FK_mymessage_users` FOREIGN KEY (`usersget`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- gorillas_cntsis.mymessage: ~4 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `mymessage` DISABLE KEYS */;
INSERT INTO `mymessage` (`mymessageid`, `mylistget`, `usersget`, `namesurname`, `youremail`, `subject`, `message`, `date`, `color`) VALUES
	(368276009, 395999133, 972535663, 'remzi erim', 'remzierim@gmail.com', 'test', 'cevaplandi 2', '2020-09-20', 'fas fa-envelope text-warning'),
	(594130641, 395999133, 972535663, 'Nurhan Alayci', 'nurhanalayci@gmail.com', 'test', '1', '2020-09-20', 'fas fa-paper-plane text-primary'),
	(602532781, 395999133, 785935587, 'remzi erim', 'remzierim@gmail.com', 'test', 'Cevaplandi!', '2020-09-20', 'fas fa-envelope text-warning'),
	(948689849, 395999133, 972535663, 'Nurhan Alayci', 'nurhanalayci@gmail.com', 'test2', 'test2', '2020-09-20', 'fas fa-paper-plane text-primary');
/*!40000 ALTER TABLE `mymessage` ENABLE KEYS */;

-- tablo yapısı dökülüyor gorillas_cntsis.mynotification
CREATE TABLE IF NOT EXISTS `mynotification` (
  `mynotificationid` int(11) NOT NULL DEFAULT 1,
  `mylistget` int(11) NOT NULL DEFAULT 1,
  `usersget` int(11) NOT NULL DEFAULT 1,
  `mynotification` varchar(500) NOT NULL DEFAULT 'Dersiniz 30 Dakika sonra baslayacak!',
  `color` varchar(500) DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`mynotificationid`),
  KEY `usersget` (`usersget`),
  KEY `mylistget` (`mylistget`),
  CONSTRAINT `FK_mynotification_mylist` FOREIGN KEY (`mylistget`) REFERENCES `mylist` (`mylistid`),
  CONSTRAINT `FK_mynotification_users` FOREIGN KEY (`usersget`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- gorillas_cntsis.mynotification: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `mynotification` DISABLE KEYS */;
/*!40000 ALTER TABLE `mynotification` ENABLE KEYS */;

-- tablo yapısı dökülüyor gorillas_cntsis.myquestions
CREATE TABLE IF NOT EXISTS `myquestions` (
  `myquestionsid` int(11) NOT NULL DEFAULT 1,
  `mylistget` int(11) NOT NULL DEFAULT 1,
  `usersget` int(11) NOT NULL DEFAULT 1,
  `namesurname` varchar(150) DEFAULT NULL,
  `youremail` varchar(500) DEFAULT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `message` varchar(1500) DEFAULT NULL,
  `date` date NOT NULL,
  `color` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`myquestionsid`),
  KEY `usersget` (`usersget`),
  KEY `mylistget` (`mylistget`),
  CONSTRAINT `FK_myquestions_mylist` FOREIGN KEY (`mylistget`) REFERENCES `mylist` (`mylistid`),
  CONSTRAINT `FK_myquestions_users` FOREIGN KEY (`usersget`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- gorillas_cntsis.myquestions: ~2 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `myquestions` DISABLE KEYS */;
INSERT INTO `myquestions` (`myquestionsid`, `mylistget`, `usersget`, `namesurname`, `youremail`, `subject`, `message`, `date`, `color`) VALUES
	(231218345, 395999133, 972535663, 'Nurhan Alayci', 'nurhanalayci@gmail.com', 'haftalik itis egzersizleri', 'basarili bir dersti', '2020-09-20', 'fas fa-check text-primary'),
	(580490844, 1, 773330568, 'emin capan', 'emincapan@gmail.com', 'Mobilite Egzersizleri', 'Tum egzersizleri en iyi sekilde yaptik!', '2020-09-20', 'fas fa-check text-primary');
/*!40000 ALTER TABLE `myquestions` ENABLE KEYS */;

-- tablo yapısı dökülüyor gorillas_cntsis.nutrition
CREATE TABLE IF NOT EXISTS `nutrition` (
  `nutritionid` int(11) NOT NULL DEFAULT 1,
  `mylistget` int(11) NOT NULL DEFAULT 1,
  `usersget` int(11) NOT NULL DEFAULT 1,
  `meal` varchar(1500) DEFAULT NULL,
  `nutrition` varchar(500) DEFAULT NULL,
  `descriptions` varchar(1500) DEFAULT NULL,
  `date` date NOT NULL,
  `protein` varchar(50) DEFAULT NULL,
  `carb` varchar(50) DEFAULT NULL,
  `fat` varchar(50) DEFAULT NULL,
  `calori` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `cholesterol` varchar(50) DEFAULT NULL,
  `potassium` varchar(50) DEFAULT NULL,
  `sodium` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`nutritionid`) USING BTREE,
  KEY `usersget` (`usersget`),
  KEY `mylistget` (`mylistget`),
  CONSTRAINT `FK_nutrition_mylist` FOREIGN KEY (`mylistget`) REFERENCES `mylist` (`mylistid`),
  CONSTRAINT `FK_nutrition_users` FOREIGN KEY (`usersget`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- gorillas_cntsis.nutrition: ~1 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `nutrition` DISABLE KEYS */;
INSERT INTO `nutrition` (`nutritionid`, `mylistget`, `usersget`, `meal`, `nutrition`, `descriptions`, `date`, `protein`, `carb`, `fat`, `calori`, `quantity`, `cholesterol`, `potassium`, `sodium`) VALUES
	(213085685, 1, 773330568, 'Aksam', 'Kuskonmaz', 'Saglikli ve Besleyici', '2020-09-20', '1', '1', '1', '0', '1', '0', '100', '1');
/*!40000 ALTER TABLE `nutrition` ENABLE KEYS */;

-- tablo yapısı dökülüyor gorillas_cntsis.onlinecourse
CREATE TABLE IF NOT EXISTS `onlinecourse` (
  `onlinecourse` int(11) NOT NULL DEFAULT 1,
  `mylistget` int(11) NOT NULL DEFAULT 1,
  `usersget` int(11) NOT NULL DEFAULT 1,
  `date` date NOT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `descriptions` varchar(1500) DEFAULT NULL,
  PRIMARY KEY (`onlinecourse`),
  KEY `mylistget` (`mylistget`),
  KEY `usersget` (`usersget`),
  CONSTRAINT `FK_onlinecourse_mylist` FOREIGN KEY (`mylistget`) REFERENCES `mylist` (`mylistid`),
  CONSTRAINT `FK_onlinecourse_users` FOREIGN KEY (`usersget`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- gorillas_cntsis.onlinecourse: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `onlinecourse` DISABLE KEYS */;
/*!40000 ALTER TABLE `onlinecourse` ENABLE KEYS */;

-- tablo yapısı dökülüyor gorillas_cntsis.payment
CREATE TABLE IF NOT EXISTS `payment` (
  `paymentid` int(11) NOT NULL DEFAULT 1,
  `mylistget` int(11) NOT NULL DEFAULT 1,
  `usersget` int(11) NOT NULL DEFAULT 1,
  `date` date NOT NULL,
  `pay1` varchar(50) DEFAULT NULL,
  `pay2` varchar(50) DEFAULT NULL,
  `pay3` varchar(50) DEFAULT NULL,
  `pay4` varchar(50) DEFAULT NULL,
  `pay5` varchar(50) DEFAULT NULL,
  `pay6` varchar(50) DEFAULT NULL,
  `pay7` varchar(50) DEFAULT NULL,
  `pay8` varchar(50) DEFAULT NULL,
  `pay9` varchar(50) DEFAULT NULL,
  `pay10` varchar(50) DEFAULT NULL,
  `pay11` varchar(50) DEFAULT NULL,
  `pay12` varchar(50) DEFAULT NULL,
  `total` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`paymentid`),
  KEY `usersget` (`usersget`),
  KEY `mylistget` (`mylistget`),
  CONSTRAINT `FK_payment_mylist` FOREIGN KEY (`mylistget`) REFERENCES `mylist` (`mylistid`),
  CONSTRAINT `FK_payment_users` FOREIGN KEY (`usersget`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- gorillas_cntsis.payment: ~2 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` (`paymentid`, `mylistget`, `usersget`, `date`, `pay1`, `pay2`, `pay3`, `pay4`, `pay5`, `pay6`, `pay7`, `pay8`, `pay9`, `pay10`, `pay11`, `pay12`, `total`) VALUES
	(730804290, 395999133, 972535663, '2020-09-20', '150', '150', '150', '150', '150', '150', '150', '150', '150', '150', '150', '150', '1500'),
	(792514092, 1, 773330568, '2020-09-20', '150', '150', '150', '150', '150', '150', '150', '150', '150', '150', '150', '150', '1500');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;

-- tablo yapısı dökülüyor gorillas_cntsis.sendusersanalysis
CREATE TABLE IF NOT EXISTS `sendusersanalysis` (
  `sendusersanalysisid` int(11) NOT NULL DEFAULT 1,
  `mylistget` int(11) DEFAULT 1,
  `usersget` int(11) DEFAULT 1,
  `namesurname` varchar(500) DEFAULT NULL,
  `youremail` varchar(500) DEFAULT NULL,
  `Content1` varchar(500) DEFAULT NULL,
  `Content2` varchar(500) DEFAULT NULL,
  `Content3` varchar(500) DEFAULT NULL,
  `color` varchar(500) DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`sendusersanalysisid`),
  KEY `usersget` (`usersget`),
  KEY `mylistget` (`mylistget`),
  CONSTRAINT `FK_sendusersanalysis_mylist` FOREIGN KEY (`mylistget`) REFERENCES `mylist` (`mylistid`),
  CONSTRAINT `FK_sendusersanalysis_users` FOREIGN KEY (`usersget`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- gorillas_cntsis.sendusersanalysis: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `sendusersanalysis` DISABLE KEYS */;
/*!40000 ALTER TABLE `sendusersanalysis` ENABLE KEYS */;

-- tablo yapısı dökülüyor gorillas_cntsis.student
CREATE TABLE IF NOT EXISTS `student` (
  `studentid` int(11) NOT NULL DEFAULT 1,
  `mylistget` int(11) NOT NULL DEFAULT 1,
  `usersget` int(11) NOT NULL DEFAULT 1,
  `viewkey` int(9) DEFAULT 1,
  `gender` varchar(50) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `height` varchar(50) DEFAULT NULL,
  `age` varchar(3) DEFAULT NULL,
  `date` date NOT NULL,
  `bodyfat` varchar(50) DEFAULT NULL,
  `bodymuscle` varchar(50) DEFAULT NULL,
  `neck` varchar(50) DEFAULT NULL,
  `shoulder` varchar(50) DEFAULT NULL,
  `chest` varchar(50) DEFAULT NULL,
  `larm` varchar(50) DEFAULT NULL,
  `lfarm` varchar(50) DEFAULT NULL,
  `rarm` varchar(50) DEFAULT NULL,
  `rfarm` varchar(50) DEFAULT NULL,
  `waist` varchar(50) DEFAULT NULL,
  `hip` varchar(50) DEFAULT NULL,
  `lleg` varchar(50) DEFAULT NULL,
  `lcalves` varchar(50) DEFAULT NULL,
  `rleg` varchar(50) DEFAULT NULL,
  `rcalves` varchar(50) DEFAULT NULL,
  `calori` varchar(50) DEFAULT NULL,
  `protein` varchar(50) DEFAULT NULL,
  `carb` varchar(50) DEFAULT NULL,
  `fat` varchar(50) DEFAULT NULL,
  `caloriedeficit` varchar(50) DEFAULT NULL,
  `content1` varchar(500) DEFAULT NULL,
  `content2` varchar(500) DEFAULT NULL,
  `content3` varchar(500) DEFAULT NULL,
  `inseam` varchar(50) DEFAULT NULL,
  `fatneck` varchar(50) DEFAULT NULL,
  `fatlarm` varchar(50) DEFAULT NULL,
  `fatrarm` varchar(50) DEFAULT NULL,
  `fatbody` varchar(50) DEFAULT NULL,
  `fatlleg` varchar(50) DEFAULT NULL,
  `fatrleg` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`studentid`) USING BTREE,
  KEY `usersget` (`usersget`),
  KEY `mylistget` (`mylistget`),
  CONSTRAINT `FK_student_mylist` FOREIGN KEY (`mylistget`) REFERENCES `mylist` (`mylistid`),
  CONSTRAINT `FK_student_users` FOREIGN KEY (`usersget`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- gorillas_cntsis.student: ~2 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`studentid`, `mylistget`, `usersget`, `viewkey`, `gender`, `weight`, `height`, `age`, `date`, `bodyfat`, `bodymuscle`, `neck`, `shoulder`, `chest`, `larm`, `lfarm`, `rarm`, `rfarm`, `waist`, `hip`, `lleg`, `lcalves`, `rleg`, `rcalves`, `calori`, `protein`, `carb`, `fat`, `caloriedeficit`, `content1`, `content2`, `content3`, `inseam`, `fatneck`, `fatlarm`, `fatrarm`, `fatbody`, `fatlleg`, `fatrleg`) VALUES
	(160075519, 1, 773330568, 536726633, 'Erkek', '62', '171', '33', '2020-09-20', '16', '12', '32', '92', '95', '26', '22', '26', '21', '66', '92', '48', '32', '48', '31', '320', '165', '210', '100', '750', '2.jpg', '1.jpg', '3.jpg', '90', '12', '12', '12', '12', '12', '12'),
	(291276389, 395999133, 972535663, 748578812, 'Kadin', '67', '165', '33', '2020-09-20', '16', '12', '32', '92', '95', '26', '22', '26', '21', '66', '92', '48', '32', '48', '31', '320', '165', '210', '77', '750', 'w2.jpg', 'w3.jpg', 'w1.jpg', '90', '12', '12', '12', '12', '12', '12');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

-- tablo yapısı dökülüyor gorillas_cntsis.users
CREATE TABLE IF NOT EXISTS `users` (
  `userid` int(11) NOT NULL DEFAULT 1,
  `viewkey` int(9) NOT NULL DEFAULT 1,
  `roleid` int(9) NOT NULL DEFAULT 1,
  `viewmylist` int(9) NOT NULL DEFAULT 1,
  `active` varchar(50) DEFAULT NULL,
  `profilephoto` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `usrname` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tc` varchar(11) DEFAULT NULL,
  `tel` varchar(13) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `securitykey` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE,
  KEY `name` (`name`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- gorillas_cntsis.users: ~4 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`userid`, `viewkey`, `roleid`, `viewmylist`, `active`, `profilephoto`, `name`, `usrname`, `password`, `email`, `tc`, `tel`, `role`, `gender`, `securitykey`) VALUES
	(1, 805567691, 832982058, 1, 'fas fa-check text-primary', 'contact-bg.jpg', 'Batuhan Kiraz', 'admin', 'ce9a9e8b25de101abd27cd6043f479df', 'serenityy2996@gmail.com', '1123332442', '+905555489172', 'Admin', 'Erkek', '0936522a31a6c58c99e0a6a553370bcd'),
	(773330568, 502919271, 152035424, 1, 'fas fa-check text-primary', 'blog_05.jpg', 'emin capan', 'emincapan1', 'ce9a9e8b25de101abd27cd6043f479df', 'emincapan@gmail.com', '1123332002', '+905442321989', 'User', 'Erkek', '1a0d4e29bf27ca0fdb2e3eee42aab0b5'),
	(785935587, 673734223, 659782314, 202065655, 'fas fa-check text-primary', 'blog_07.jpg', 'remzi erim', 'remzierim1', 'ce9a9e8b25de101abd27cd6043f479df', 'remzierim@gmail.com', '1123332477', '+905394651686', 'Yonetici', 'Erkek', '523f80fe5b9acc188ed308f60502639b'),
	(972535663, 121843610, 152035424, 202065655, 'fas fa-check text-primary', 'blog_08.jpg', 'Nurhan Alayci', 'hurhanalayci1', 'ce9a9e8b25de101abd27cd6043f479df', 'nurhanalayci@gmail.com', '1123332440', '+905495465160', 'User', 'Kadin', '23a527c0a7e357ca556b1ad8f7e86081');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- tablo yapısı dökülüyor gorillas_cntsis.yuklenenbelgeler
CREATE TABLE IF NOT EXISTS `yuklenenbelgeler` (
  `belgeid` int(11) NOT NULL DEFAULT 1,
  `belge` varchar(500) DEFAULT NULL,
  `date` date NOT NULL,
  `Description` varchar(1500) DEFAULT NULL,
  PRIMARY KEY (`belgeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- gorillas_cntsis.yuklenenbelgeler: ~2 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `yuklenenbelgeler` DISABLE KEYS */;
INSERT INTO `yuklenenbelgeler` (`belgeid`, `belge`, `date`, `Description`) VALUES
	(1, 'lao_-12-234-sdfh8y.pdf', '2020-08-20', 'Ornek Antrenman Programi2'),
	(2, 'adasdas-12312-123_-12-3.pdf', '2020-08-20', 'Ornek Antrenman Programi3');
/*!40000 ALTER TABLE `yuklenenbelgeler` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
