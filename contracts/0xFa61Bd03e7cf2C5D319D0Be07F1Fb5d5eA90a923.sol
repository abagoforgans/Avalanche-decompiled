contract main {




// =====================  Runtime code  =====================


const getAddressETH = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee

const getWETH = 0xd500b1d8e8ef31e21c99d1db9a6444d3adf1270


function _fallback() payable {
    revert
}

function wrap(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0xd500b1d8e8ef31e21c99d1db9a6444d3adf1270)
    call 0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270.deposit() with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2 > 0:
        require ext_code.size(this.address)
        staticcall this.address.0x7b103999 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x46904840 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        call ext_call.return_data[12 len 20] with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0xa17c303d: arg1, arg1, arg2
    emit 0xd500b1d8: arg1, arg1, arg2
    emit 0xeeeeeeee: arg1, arg1, arg2
}

function sub_8163053d(?) payable {
    require calldata.size - 4 >= 64
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(0xd500b1d8e8ef31e21c99d1db9a6444d3adf1270)
    call 0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270.0x2e1a7d4d with:
         gas gas_remaining wei
        args (arg1 + arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2 > 0:
        require ext_code.size(this.address)
        staticcall this.address.0x7b103999 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x46904840 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        call ext_call.return_data[12 len 20] with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0xa17c303d: arg1, arg1, arg2
    emit 0xeeeeeeee: arg1, arg1, arg2
    emit 0xd500b1d8: arg1, arg1, arg2
}



}
