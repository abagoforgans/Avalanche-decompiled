contract main {




// =====================  Runtime code  =====================


const name = '', 0

const decimals = 9

const wMEMO = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b

const sub_6a4ee1a3(?) = 0xc172c84587bea6d593269bfe08632bf2da2bc0f6

const symbol = '', 0


function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return 0
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return 0
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    return 0
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xc172c84587bea6d593269bfe08632bf2da2bc0f6)
    staticcall 0xc172c84587bea6d593269bfe08632bf2da2bc0f6.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
    staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.wMEMOToMEMO(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
