
https://github.com/MatthewBCooke/Pathfinder?tab=readme-ov-file

Main Window

    Platform Position: X and Y coordinates entered x,y of the centre of the escape platform.

    Automatic determination will attempt to automatically calculate the position based on where the animal is located at the end of a trial

    Platform Diameter: The diameter of the escape platform in cm

    Automatic determination will attempt to estimate the diameter by taking the min and max x and y coordinates for the complete set of trials. The software will attempt to exclude outliers (e.g. probe trials included in the dataset).

    Pool Diameter: The (inner) diameter of the water maze in cm.

    Automatic determination will take the maximum X coordinate and subtract the minimum X coordinate, as well as for Y, and average the two.

    Pool Centre: The centre of the water maze in X and Y entered x,y

    Automatic determination will take the middle of the diameter in both the X and Y directions.

    Old Platform Position: This variable is not currently used for any of the 8 basic strategies, however, we included this field so that it can easily be implemented for strategies such as perseverance or others that rely on multiple platforms. Centre of the position of the previous platform entered x,y.

    Corridor Width: The width of the swimming corridor for Directed Search in degrees. This corridor begins at the start position of the trial and expands centred on the middle of the platform ½ of the entered value on each side.

    E.g. A 40 degree corridor would start at the x,y start point of the trial and continue 20 degrees to the left and 20 degrees to the right of the centre of the platform.

    Chaining width: The diameter (in cm) of the Chaining annulus zone that is centred at middle of the escape platform.

    E.g. A chaining width of 30 cm would create an annulus zone 15 cm to each side of the platform spanning all quadrants, centred at the pool centre.

    Thigmotaxis Zone Size: The distance from the pool wall (in cm) to be considered for Thigmotaxis. In the custom parameters pane a smaller thigmotaxis zone is also calculated as half of the width of the standard zone.

    E.g. A thigmotaxis zone size of 15 cm would create the standard thigmotaxis zone from 0 to 15 cm from the pool wall. It will also generate a smaller thigmotaxis zone that is 0 to 7.5 cm from the pool wall.

    Pixels/cm: This will convert the inputted data from pixels to cm if it is not already that way. This is important only if you have your above defined measurements in cm however your water maze data is not outputted in the same units. Your data will be divided by the value entered here, if Scale values is selected.

    Output File: The file in which the results are stored. The pathfinder/results/ prefix indicates the folder to store the result files in.

    Default is just results current date and time

    Scale values: Whether or not to use the Pixels/cm scaling defined above.

    Manual categorization for uncategorized trials: This will display the Manual Categorization Window for any trial that Pathfinder cannot automatically categorize into search strategies.

    Manual categorization for all trials: Pathfinder will not automatically categorize search strategies, instead the Manual Categorization Window will appear for each trial and prompt for manual categorization.

    Run entropy calculation: Requires the MATLAB engine Will enable the entropy calculation to be run in order to provide another measure of performance for the water maze. This process is slow and very intensive.

Custom Parameters Pane

The custom parameters pane allows you to set minima and maxima for classification into the specific strategies. Below I will define the parameters used, however, the custom pane is asking for bounds on these parameters.

    Ideal Path Error: This is a measure of deviation from the optimal path.

    At every time point we take the animal's average velocity for the trial and calculate how far the animal would be from the platform if it swam at that velocity in a straight line towards the platform. We then check how far the animal actually is after this time point and subtract the ideal distance. This gives us an error value for every time point in a trial. The sum of these errors is the Ideal Path Error.

    Average Heading error: The heading error is calculated between every data point and averaged. Heading error is defined as degrees off of a straight line to the centre of the platform at every time point.

    Initial Heading error: The initial heading error is calculated at the beginning of the trial. We average the heading error for the first 1 second of the trial.

    Distance to swim path centroid: This is the mean position of all of the animals coordinates over a given trial. For Focal Search, we calculate the mean distance to the centre of the swim path centroid.

    Distance to platform: The mean distance to the centre of the platform.

    Distance covered: Total distance the animal swims.

    Angular corridor percent: The percent of the trial that the animal must spend in the corridor defined on the main page for Directed Search

    Time in annulus zone: The percent of time of the trial the animal must spend in the annulus zone defined on the main page for Chaining

    Quadrants visited: The number of quadrants the animal enters (NE, SE, SW, NW).

    Pool coverage: How much area of the pool has been traversed.

    In order to gain insight into how much of the pool has been traversed, the pool is divided into a (pool diameter)/10 x (pool diameter)/10 grid, and when the animal visits any of these bins they are marked as visited. Area traversed is defined as number of bins traversed / total number of bins.

    Average distance to centre: The average distance of the animal to the centre of the pool.

    Full Thigmotaxis zone: Percent of trial duration that the animal must spend in the standard thigmotaxis zone.

    Small thigmotaxis zone: Percent of trial duration that the animal must spend in the smaller thigmotaxis zone.

Note: the % time spent in the small thigmotaxis zone must be ≤ % time spent in the standard thigmotaxis zone. For users that wish to only use a single thigmotaxis zone for classification of this strategy, they should set Small thigmotaxis zone = 0.



