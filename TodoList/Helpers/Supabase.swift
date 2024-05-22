//
//  Supabase.swift
//  TodoList
//
//  Created by David Li on 2024-05-22.
//

import Foundation
import Supabase

let supabase = SupabaseClient(
  supabaseURL: URL(string: "https://ixhvadvehdinfglufitg.supabase.co")!,
  supabaseKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Iml4aHZhZHZlaGRpbmZnbHVmaXRnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTYzMTg1MTYsImV4cCI6MjAzMTg5NDUxNn0.KfCqCa3B0nCCm14hY-k4nLviRK6Q3Z7LaYyBtxjhQc0"
)
