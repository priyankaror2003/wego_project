class CarParking < ApplicationRecord

  def available_car_parking(params={})
    lat = params['latitude']
    lng = params['longitude']
    page1 = params['page'].present? ? params['page'] : 1
    per_page = params['per_page'].present? ? params['per_page'] : 20
    get_available_carparking = CarParking.select("id,
( 6371 * acos( cos( radians(37) ) * cos( radians( x_cord ) ) *
 cos( radians( y_cord ) - radians(-122) ) + sin( radians(37) )*
 sin( radians( x_cord ) ) ) ) AS distance,free_parking").where("free_parking != 'NO'").order("distance").offset(page1.to_i*per_page.to_i).limit(per_page.to_i)

return get_available_carparking
  end
end
