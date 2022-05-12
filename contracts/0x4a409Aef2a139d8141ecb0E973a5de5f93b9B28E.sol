contract main {




// =====================  Runtime code  =====================


#
#  - Unstake()
#
mapping of uint8 stor1;
uint256 sub_75edb325;

function ismember(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function sub_75edb325(?) payable {
    return sub_75edb325
}

function _fallback() payable {
    revert
}

function info() payable {
    require ext_code.size(0xed46443c18e38064523180fc364c6180b35803d3)
    staticcall 0xed46443c18e38064523180fc364c6180b35803d3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x2ac4ccbc98a6680bbd9dd0a2eafbb13becf09644)
    staticcall 0x2ac4ccbc98a6680bbd9dd0a2eafbb13becf09644.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_75edb325 < sub_75edb325:
        revert with 0, 'SafeMath: addition overflow'
    return ext_call.return_data[0], ext_call.return_data[0], sub_75edb325
}

function Stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xed46443c18e38064523180fc364c6180b35803d3):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(0xed46443c18e38064523180fc364c6180b35803d3):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call 0xed46443c18e38064523180fc364c6180b35803d3 with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(0xed46443c18e38064523180fc364c6180b35803d3)
    staticcall 0xed46443c18e38064523180fc364c6180b35803d3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xed46443c18e38064523180fc364c6180b35803d3)
    call 0xed46443c18e38064523180fc364c6180b35803d3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x5b92738b2de8331bee366378f27d146dcbad85c5, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x5b92738b2de8331bee366378f27d146dcbad85c5)
    call 0x5b92738b2de8331bee366378f27d146dcbad85c5.0x7acb7757 with:
         gas gas_remaining wei
        args ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit AddStake(arg1, ext_call.return_data[0], msg.sender);
}



}
