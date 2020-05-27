//
//  ViewController.swift
//  BarCharts
//
//  Created by omrobbie on 27/05/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var barChartView: BarChartView = {
        let barChartView = BarChartView()
        barChartView.frame = view.frame
        return barChartView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        loadDummyData()
    }

    func loadDummyData() {
        barChartView.dataEntries = [
            BarEntry(score: 45, title: "Stark"),
            BarEntry(score: 35, title: "Thor"),
            BarEntry(score: 55, title: "Evans"),
            BarEntry(score: 3, title: "Vision"),
            BarEntry(score: 10, title: "Thanos")
        ]
        view.addSubview(barChartView)
    }
}
