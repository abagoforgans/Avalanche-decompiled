contract main {




// =====================  Runtime code  =====================


address stakingAddress;

function staking() payable {
    return stakingAddress
}

function _fallback() payable {
    revert
}

function exec(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < arg1:
        mem[96] = 0xaf14052c00000000000000000000000000000000000000000000000000000000
        require ext_code.size(stakingAddress)
        call stakingAddress.rebase() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function epoch() payable {
    staticcall stakingAddress.0x900cf0cf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64] << 224, uint32(ext_call.return_data[96])
}

function sub_869f43bb(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == uint32(arg2)
    idx = 0
    while idx < arg1:
        mem[96] = 0xaf14052c00000000000000000000000000000000000000000000000000000000
        require ext_code.size(stakingAddress)
        call stakingAddress.rebase() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    staticcall stakingAddress.0x900cf0cf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    if uint32(arg2) < ext_call.return_data[124 len 4]:
        revert with 0, 'fail'
}



}
