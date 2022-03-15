
import Foundation

public class AppSettings {
  // MARK: - Static Properties
  public static let shared = AppSettings()
  
  // MARK: - Object Lifecycle
  private init() { }
}

// MARK: - QuestionStrategyType
public enum QuestionStrategyType: Int, CaseIterable {
  
  case random
  case sequential
  
  // MARK: - Instance Methods
  public func title() -> String {
    switch self {
    case .random:
      return "Random"
    case .sequential:
      return "Sequential"
    }
  }
  
  public func questionStrategy(
    for questionGroup: QuestionGroup) -> QuestionStrategy {
    switch self {
    case .random:
      return RandomQuestionStrategy(
        questionGroup: questionGroup)
    case .sequential:
      return SequentialQuestionStrategy(
        questionGroup: questionGroup)
    }
  }
}
