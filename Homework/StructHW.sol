// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Product_details {

    struct product {

        string product_name;
        uint quantity;
        uint  manufact_date;
        uint expire_date;
        uint id_number;
        uint price;
        uint discount;
        uint discounted_price;
        string status;
        uint set_quantity;
    }
    product[] public all_detail;

    function details (string memory product_name,
                      uint quantity,
                      uint manufact_date,
                      uint expire_date, 
                      uint id_number, 
                      uint price, 
                      uint discount,
                      uint currentDate,
                      uint set_quantity ) public{
                      uint discounted_price = price - (price * discount / 100);

                      string memory status;

        if(currentDate > expire_date){
            status = "Expired";
        } else {
            status = "Valid";
        }

        uint remaining_qty = set_quantity - quantity;

        require(set_quantity >= quantity, "Not enough stock");

        all_detail.push(product( product_name, quantity, manufact_date, expire_date, id_number, price, discount, discounted_price,status,remaining_qty)
        );
    }

    function getAllProducts() public view returns(product[] memory) {
        return all_detail;
    }
}
