
import UIKit

public class SafariActivity: UIActivity {
    var url: URL?
    
    public override var activityType: UIActivity.ActivityType? {
        .init(String(describing: self))
    }
    
    public override var activityTitle: String? {
        Bundle.module.localizedString(forKey: "Open in Safari", value: "Open in Safari", table: "TUSafariActivity")
    }
    
    public override var activityImage: UIImage? {
        UIImage(systemName: "safari")
    }
    
    public override func canPerform(withActivityItems activityItems: [Any]) -> Bool {
        activityItems.contains { item in
            guard let url = item as? URL else { return false }
            return UIApplication.shared.canOpenURL(url)
        }
    }
    
    public override func prepare(withActivityItems activityItems: [Any]) {
        self.url = activityItems
            .compactMap { $0 as? URL }
            .first
    }
    
    public override func perform() {
        guard let url = self.url else {
            activityDidFinish(false)
            return
        }
        
        UIApplication.shared.open(url) { [weak self] result in
            self?.activityDidFinish(result)
        }
    }
}

