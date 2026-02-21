# UserCard Swift
This is a SwiftUI project about custom user cards for legendary football players. 
This app uses a reusable component architecture and mock data to visualize 
player stats and details with a modern interface.

## Features
- Reusable components: This project includes two different card styles:
  - `UserCardComponentA`: A simple and clean design, where the image takes the 
  upper part and the information sits on a white background.
  - `UserCardComponentB`: An immersive design that uses the player's image as the 
  full background, applying gradients and `.ultraThinMaterial` to enhance text readability.
- Stats Visualization: Uses the `StatsVisualizer` component to consistently display 
goals, assists, and titles for each player.
- Dynamic Data: The app is structured to receive data through the `PlayerCardData` 
and `PlayerStats` models.

## Project Structure
- Components/: Contains the card component views and the StatsVisualizer.
- Models/: Contains the PlayerCardData and PlayerStats data structures.
- Mock/: Contains mock data for previewing and testing.

## Requirements
- iOS 17.0+
- Xcode 15.0+
- Swift 5.0+

## Screenshots
![paulomantilla04](https://github.com/user-attachments/assets/1cdd0fa0-a611-45bc-b1ca-70eebb858407)


## Inspiration
UI design inspired by a Figma component by [Tran Mau Tri Tam](https://www.figma.com/community/file/1505853580184938911/profile-card).
