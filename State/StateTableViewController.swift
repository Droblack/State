//
//  StateTableViewController.swift
//  State
//
//  Created by DroBlack on 2/14/18.
//  Copyright © 2018 DroBlack. All rights reserved.
//

import UIKit

class StateTableViewController: UITableViewController {
    
    
    
    let statsNamesArray = [
        
        "Айдахо",
        "Айова",
        "Алабама",
        "Аляска",
        "Аризона",
        "Арканзас",
        "Вайоминг",
        "Вашингтон",
        "Вермонт",
        "Виргиния",
        "Висконсин",
        "Гавайи",
        "Делавэр",
        "Джорджия",
        "Западная",
        "Иллинойс",
        "Индиана",
        "Калифорния",
        "Канзас",
        "Кентукки",
        "Колорадо",
        "Коннектикут",
        "Луизиана",
        "Массачусетс",
        "Миннесота",
        "Миссисипи",
        "Миссури",
        "Мичиган",
        "Мэн",
        "Мэриленд",
        "Небраска",
        "Невада",
        "Нью-Гэмпшир",
        "Нью-Джерси",
        "Нью-Йорк",
        "Нью-Мексико",
        "Огайо",
        "Оклахома",
        "Орегон",
        "Пенсильвания",
        "Род-Айленд",
        "Северная Дакот",
        "Северная Карол",
        "Теннесси",
        "Техас",
        "Флорида",
        "Южная Дакота",
        "Южная Каролина",
        "Юта"
        
    ]
    
    let  stateImageArray = [
        
        
        "1600px-Flag_of_Utah.svg.png",
        "750px-Flag_of_South_Carolina.svg.png",
        "Flag_of_South_Dakota.svg.png",
        "750px-Flag_of_Florida.svg.png",
        "1080px-Flag_of_Texas.svg.png",
        "500px-Flag_of_Tennessee.svg.png",
        "Flag_of_North_Carolina.svg.png",
        "575px-Flag_of_North_Dakota.svg.png",
        "685px-Flag_of_Rhode_Island.svg.png",
        "675px-Flag_of_Pennsylvania.svg.png",
        "750px-Flag_of_Oregon.svg.png",
        "675px-Flag_of_Oklahoma.svg.png",
        "520px-Flag_of_Ohio.svg.png",
        "1200px-Flag_of_New_Mexico.svg.png",
        "900px-Flag_of_New_York.svg.png",
        "512px-Flag_of_New_Jersey.svg.png",
        "660px-Flag_of_New_Hampshire.svg.png",
        "Flag_of_Nevada.svg.png",
        "750px-Flag_of_Nebraska.svg.png",
        "750px-Flag_of_Maryland.svg.png",
        "687px-Flag_of_Maine.svg.png",
        "615px-Flag_of_Montana.svg.png",
        "685px-Flag_of_Michigan.svg.png",
        "1920px-Flag_of_Missouri.svg.png",
        "900px-Flag_of_Mississippi.svg.png",
        "500px-Flag_of_Minnesota.svg.png",
        "1500px-Flag_of_Massachusetts.svg.png",
        "990px-Flag_of_Louisiana.svg.png",
        "594px-Flag_of_Connecticut.svg.png",
        "1800px-Flag_of_Colorado.svg.png",
        "950px-Flag_of_Kentucky.svg.png",
        "1920px-Flag_of_Kansas.svg.png",
        "900px-Flag_of_California.svg.png",
        "750px-Flag_of_Indiana.svg.png",
        "1000px-Flag_of_Illinois.svg.png",
        "760px-Flag_of_West_Virginia.svg.png",
        "1728px-Flag_of_Georgia_(U.S._state).svg.png",
        "600px-Flag_of_Delaware.svg.png",
        "1200px-Flag_of_Hawaii.svg.png",
        "675px-Flag_of_Wisconsin.svg.png",
        "1280px-Flag_of_Virginia.svg.png",
        "750px-Flag_of_Vermont.svg.png",
        "1106px-Flag_of_Washington.svg.png",
        "1000px-Flag_of_Wyoming.svg.png",
        "450px-Flag_of_Arkansas.svg.png",
        "1000px-Flag_of_Arizona.svg.png",
        "1416px-Flag_of_Alaska.svg.png",
        "600px-Flag_of_Alabama.svg.png",
        "670px-Flag_of_Iowa.svg.png",
        "660px-Flag_of_Idaho.svg.png"
        
    ]
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return statsNamesArray.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! StateTableViewCell

       cell.nameLabel.text = statsNamesArray[indexPath.row]
        
    
        
        cell.imageLabel.image = UIImage(named: stateImageArray[indexPath.row])
        
        
        

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue" {
        if let indexPath = tableView.indexPathForSelectedRow {
            let dvc = segue.destination as! StatesDetailViewController
            dvc.imageName = self.stateImageArray[indexPath.row]
        }
    }
        
    }
    
    
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
