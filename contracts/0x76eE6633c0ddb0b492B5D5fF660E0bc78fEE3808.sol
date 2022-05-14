contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;

function approved(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(uint8(stor0[arg1]))
}

function _fallback() payable {
    revert
}

function toggleApprove(address arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor0[msg.sender]):
        revert with 0, 'Not approved'
    uint256(stor0[address(arg1)]) = not uint8(stor0[address(arg1)]) or Mask(248, 8, uint256(stor0[address(arg1)]))
}

function withdraw(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not uint8(stor0[msg.sender]):
        revert with 0, 'Not approved'
    if not ext_code.size(arg2):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    mem[324 len 0] = 0
    call arg2 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg1
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}



}
