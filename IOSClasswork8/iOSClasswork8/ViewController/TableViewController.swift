//
//  TableVC.swift
//  TableViewTemplate
//
//  Created by Safeyah on 6/12/20.
//  Copyright © 2020 Safeyah Coding. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cities.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CityCellTAbleViewCell
        
        let city = cities[indexPath.row]
        cell.cityLabel.text = city.name
        cell.weather.image = UIImage(named: city.cardName)

        //📌أعرض الـ card للمدينة مع اسمها في الخلية
        // Configure the cell...
        return cell
    }
    
    //Dont touch this func ⛔️
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //📌قم بالانتقال الى الواجهة التالية بعد وضع اسم الـ Segue و انقل هيكل الـCity المختار من قبل المستخدم
        //📌استخدم دالةperformSegue(withIdentifier: , sender: T##Any?)
        let city = cities[indexPath.row]
        
        performSegue(withIdentifier: "goweatherdetails", sender: city)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //📌عين الواجهة الجديدة للانتقال اليها عبر الـ Segue
        // Get the new view controller using segue.destination.
        let vc = segue.destination as! weatherDetails
        let city = sender as! City
        vc.city = city
       
        //📌مرر هيكل City الى الواجهة الجديدة
        // Pass the selected object to the new view controller.
    
    }

}
