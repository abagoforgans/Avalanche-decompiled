contract main {




// =====================  Runtime code  =====================


uint256 sub_b52eea74;

function sub_b52eea74(?) payable {
    return sub_b52eea74
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
    if sub_b52eea74 + (720 * 24 * 3600) < sub_b52eea74:
        revert with 0, 'SafeMath: addition overflow'
    return ext_call.return_data[0], sub_b52eea74 + (720 * 24 * 3600)
}

function Deposit(uint256 arg1) payable {
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
    emit Deposited(arg1, msg.sender);
}

function Withdraw() payable {
    if sub_b52eea74 + (720 * 24 * 3600) < sub_b52eea74:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp <= sub_b52eea74 + (720 * 24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe497420697320746f6f206561726c7920746f2063616c6c20746869732066756e6374696f,
                    mem[201 len 27]
    if 0x3e3f226455119d58574d7c4b9f0fdaa25209dd46 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6e4f6e6c79205265636569766572206d61792075736520746869732066756e6374696f,
                    mem[199 len 29]
    require ext_code.size(0xed46443c18e38064523180fc364c6180b35803d3)
    staticcall 0xed46443c18e38064523180fc364c6180b35803d3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if ext_call.return_data[0] > 5 * 10^11:
            require ext_code.size(0xed46443c18e38064523180fc364c6180b35803d3)
            call 0xed46443c18e38064523180fc364c6180b35803d3.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x3e3f226455119d58574d7c4b9f0fdaa25209dd46, 5 * 10^11
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xed46443c18e38064523180fc364c6180b35803d3)
            call 0xed46443c18e38064523180fc364c6180b35803d3.0xa9059cbb with:
                 gas gas_remaining wei
                args 0x3e3f226455119d58574d7c4b9f0fdaa25209dd46, 5 * 10^11
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Withdrawn(address arg1, uint256 arg2):
                           5 * 10^11,
            emit 0x3e3f2264: 5 * 10^11
        else:
            if ext_call.return_data[0]:
                require ext_code.size(0xed46443c18e38064523180fc364c6180b35803d3)
                call 0xed46443c18e38064523180fc364c6180b35803d3.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x3e3f226455119d58574d7c4b9f0fdaa25209dd46, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xed46443c18e38064523180fc364c6180b35803d3)
                call 0xed46443c18e38064523180fc364c6180b35803d3.0xa9059cbb with:
                     gas gas_remaining wei
                    args 0x3e3f226455119d58574d7c4b9f0fdaa25209dd46, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit Withdrawn(address arg1, uint256 arg2):
                               ext_call.return_data[0],
                emit 0x3e3f2264: ext_call.return_data[0]
    if sub_b52eea74 + (720 * 24 * 3600) < sub_b52eea74:
        revert with 0, 'SafeMath: addition overflow'
    sub_b52eea74 += 720 * 24 * 3600
}



}
