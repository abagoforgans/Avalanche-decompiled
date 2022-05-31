contract main {




// =====================  Runtime code  =====================


#
#  - sub_5279efc2(?)
#  - sub_5ecfeb99(?)
#
address policyAddress;
address stor1;
uint256 sub_4f62cf3b;
uint256 sub_5ddfd057;
uint256 sub_24cbf3b1;

function policy() payable {
    return policyAddress
}

function sub_24cbf3b1(?) payable {
    return sub_24cbf3b1
}

function sub_4f62cf3b(?) payable {
    return sub_4f62cf3b
}

function sub_5ddfd057(?) payable {
    return sub_5ddfd057
}

function _fallback() payable {
    revert
}

function pullPolicy() payable {
    require msg.sender == stor1
    emit 0x728be007: policyAddress, stor1
    policyAddress = stor1
}

function renouncePolicy() payable {
    if policyAddress != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit 0x728be007: policyAddress, 0
    policyAddress = 0
}

function pushPolicy(address arg1) payable {
    require calldata.size - 4 >= 32
    if policyAddress != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    stor1 = arg1
}

function sub_ca6224ed(?) payable {
    require calldata.size - 4 >= 64
    if policyAddress != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}



}
