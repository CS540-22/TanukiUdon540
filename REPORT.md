# TanukiUdon
**CS540 Final Report**

Bryce Bible, bbible3;  Damian Seals, dseals3
<hr/>

## Introduction
TanukiUdon is a tool to assist developers in Unity create VRChat content. Specifically, this tool aims to provide features to assist with Udon# code development. 
Udon# is a compiled dialect of C#, allowing programmers to use traditional programming methods over the default node-based Udon programming language commonly used to develop for the VRChat platform.
In addition to Udon# features, we also plan to implement VRC Avatar SDK Creation tools to assist with the animation process, and shader conversion features.
With VRChat now having nearly 15,000 daily active users, the need for development tools to the poorly documented VRChat-specific Udon language grows every day.
Using industry-standard software development techniques, many of which exist in the realm of "Software Supply Chain", we can hopefully save VRChat developers countless hours.
By implementing these techniques, we can allow developers to program more efficiently, more smartly, and with less barrier-to-entry, which is important for a platform that may be home to more less-experienced programmers.
## What we learned
* Version control is hard. Especially so when using specific versions of dev software (VRChat requires very specific versions of Unity), version control becomes complex. Additionally, for this project, we wanted to use a combination of GitHub, Plastic SCM, and Unity's collaboration tools to collaborate. Interfacing with multiple version control systems is complex to say the least. It led to the most frustration of anything during the scope of this project. Additionally, having to manage relatively large assets across multiple machines (my home computer, my laptop, Damian's home computer, Damian's laptop, my lab machine...), a lot of time was spent on version control and collaboration. There must be a better way.
* SDK documentation is incredibly important. The VRChat SDK is not very thorough about actually solving the problems that developers are likely to encounter. I imagine this is par for the course with relatively new tools, as I've encountered very similar documentation for things like Unreal Engine 5. But it's frustrating to have to dig through the SDK's source to actually know what needs to be done to accomplish simple things done a specific way.
* The tool is actually useful. I have used TanukiUdon in my own VRChat projects which have been selling on a Japanese asset marketplace. I would deem it a succesful project all in all!
## Development Process
We used a version of Agile for our project, a standard Iterative design process. After looking into Scrum and XP, we determined they are overkill. Considering there are only two of us, having a separate product owner and scrum master is simply impossible, and daily 15 minute meetings are also unnecessary. Also with only two of us and one semester to complete the project, focusing on culture instead of processes, like in XP, could have very well cost us extra time for no perceivable benefit. Luckily, with our small team size and expected small project overhead, the flexible and low-overhead management and development proccess of Iterative design seems to be ideal. Specifically, we will be doing feature-based milestones and sprints of approximately two weeks.
![image](https://user-images.githubusercontent.com/46682358/168452967-2564c99e-6985-4f15-854f-617386f2b594.png)
Above is a comparison of individual contrubtions, as well as overall commits. Bryce worked on backend code, structure, and U# code - leading to lots of commits due to iterations, but fewer lines per commit, whereas Damian worked on UI, styling, 
We completed through Sprint 4.2 this semester:
![image](https://user-images.githubusercontent.com/46682358/168452997-7bf42e91-1d88-4bc8-90e3-e88d8b91bf8b.png)
Ideally, we would have progressed even further. The following milestones were not accomplished:
![image](https://user-images.githubusercontent.com/46682358/168453004-fdf45439-4a2e-4647-9b26-adc5ce004508.png)
Code Search & Autocomplete was deemed low-priority, and even still likely would not make sense to be the next implemented feature. This owes to the fact that tools like GitHub Copilot and C# Intellisense can mostly cover U# being a dialect of C#. The animation toggles feature was deemed out-of-scope and testing was done internally across iterations rather than formally with external developers.
# End results
## Editor Tools
![image](https://user-images.githubusercontent.com/46682358/168453042-055d28af-d724-4cd7-918f-3abee4c21f5a.png)
TanukiUdon functions as an installable <.unitypackage> file, and displays as an editor tab in Unity.

Editor Tools allows creation of VRChat specific, common features in one’s project. It automates tasks that would take multiple steps when done manually.
## Documentation 
![image](https://user-images.githubusercontent.com/46682358/168453055-e29e12cd-7c56-4796-a55e-2c03ce3a87dd.png)
This feature offers A list of helpful tutorials and documentation to aid in the development process.
It automatically creates links from a remote .tsv database on GitHub so we can dynamically update it.
## Code Snippets
![image](https://user-images.githubusercontent.com/46682358/168453080-49638e22-9a11-4075-a9ec-f5b37951b37b.png)
This tool allows users to automatically download some of the most common and useful Unity assets used in VRChat world creation.

Downloads are also sourced from a remote .tsv file.

## Customer Value
Our primary customer is the VRChat developer who would rather spend their time being productive, contributing to the community with new worlds or avatars, than waste their time completing the same rote tasks over and over again. It doesn't take long to imagine how annoying C would be without standard functions like printf, and it is for this reason we feel that U# needs help. Right now it is young, it needs the ease of use that other languages have had for many years. We will know if we have accomplished this goal when we are able to accomplish tasks in Unity in a fraction of the steps that it currently requires. Ultimately the goal is to increase usability and productivity while also minimizing frustration and time required as much as possible.
## Future work
* Expanded editor tools
* Expanded coding tools
* Including more snippets, and continuously updating remote documentation and asset databases
* Avatar creation tools
* Bugfixes
## Project Management
Specifics on requirements are dependent on which features we are able to fully implement. Details about some of these will be explained below in the *Timeline* subsection.
Initially, our aim is to have some form of UI that is able to be installed in Unity, which we will be focusing on in Sprint 2. To do so, all developers must have access to the repo, to Unity, and to the VRChat SDK.
In general, *the overall goal is to have a platform-independent installable Unity asset that provides some number of helpful resources to aid VRChat content creators in the development process.*
Once we have reached this goal as well as successfully implemented at least one of the above proposed features, we will be allowed to deem this project a success. At that point, our Unity asset is independent and installable, so the only thing to do is continue to provide additional feature.
VRChat development is a constantly changing, new field - so the feasability of some of these features is yet to be fully determined.
However, all of the tools and resources to do so are freely available, and *something* is possible for sure. Luckily there are no social, ethical, or legal constrints that will prevent us from accmplishing these tasks either.
## Use Case
Developing in Unity, especially for VRChat worlds, is very tedious and time consuming. Many tasks could be easily automated, but instead are sucking up hundreds of hours of developers' time. Additionally, lack of easily accessible information (where to learn specific code techniques, where to get specific code snippets, etc) forces developers to spend unreasonable amounts of time preparing when they could instead be working. As our team members are also VRChat developers, the goal is to make the sort of plugin that we ourselves would use: a VRChat world creator that wants to save time and avoid doing easily automatable tasks.
We believe that we achieved these goals in the scope of this semester project.
## Timeline
While some milestones were met earlier or later than expected, by the end-of-semester we achieved a competent, capable and helpful tool with the features we deemed helpful and necessary and worthwhile. This means the project was a success.

Thank you Dr. Mockus for another great semester!
