contract main {




// =====================  Runtime code  =====================


const soul = ext_code.hash(this.address)


function _fallback() payable {
    revert
}

function run() payable {
    require ext_code.size(0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c)
    call 0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c.drip(bytes32 arg1) with:
         gas gas_remaining wei
        args 'STKTDJAVAXJOE-A'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c)
    call 0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c.file(bytes32 arg1, bytes32 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 'STKTDJAVAXJOE-A', 'duty', 999999992924164415875054601
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Rate(ext_call.return_data[0], 'STKTDJAVAXJOE-A');
    require ext_code.size(0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c)
    call 0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c.drip(bytes32 arg1) with:
         gas gas_remaining wei
        args 'STKTDJAVAXWETH-A'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c)
    call 0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c.file(bytes32 arg1, bytes32 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 'STKTDJAVAXWETH-A', 'duty', 999999998037943815809569514
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Rate(ext_call.return_data[0], 'STKTDJAVAXWETH-A');
    require ext_code.size(0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c)
    call 0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c.drip(bytes32 arg1) with:
         gas gas_remaining wei
        args 'STKTDJAVAXWBTC-A'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c)
    call 0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c.file(bytes32 arg1, bytes32 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 'STKTDJAVAXWBTC-A', 'duty', 999999998037943815809569514
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Rate(ext_call.return_data[0], 'STKTDJAVAXWBTC-A');
    require ext_code.size(0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c)
    call 0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c.drip(bytes32 arg1) with:
         gas gas_remaining wei
        args 'STKTDJAVAXDAI-A'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c)
    call 0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c.file(bytes32 arg1, bytes32 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 'STKTDJAVAXDAI-A', 'duty', 999999997355986547376005547
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Rate(ext_call.return_data[0], 'STKTDJAVAXDAI-A');
    require ext_code.size(0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c)
    call 0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c.drip(bytes32 arg1) with:
         gas gas_remaining wei
        args 'STKTDJAVAXUSDC-A'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c)
    call 0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c.file(bytes32 arg1, bytes32 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 'STKTDJAVAXUSDC-A', 'duty', 999999997355986547376005547
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Rate(ext_call.return_data[0], 'STKTDJAVAXUSDC-A');
    require ext_code.size(0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c)
    call 0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c.drip(bytes32 arg1) with:
         gas gas_remaining wei
        args 'STKTDJAVAXUSDT-A'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c)
    call 0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c.file(bytes32 arg1, bytes32 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 'STKTDJAVAXUSDT-A', 'duty', 999999997355986547376005547
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Rate(ext_call.return_data[0], 'STKTDJAVAXUSDT-A');
    require ext_code.size(0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c)
    call 0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c.drip(bytes32 arg1) with:
         gas gas_remaining wei
        args 'STKTDJAVAXLINK-A'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c)
    call 0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c.file(bytes32 arg1, bytes32 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 'STKTDJAVAXLINK-A', 'duty', 999999998373500287307535928
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Rate(ext_call.return_data[0], 'STKTDJAVAXLINK-A');
    require ext_code.size(0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c)
    call 0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c.drip(bytes32 arg1) with:
         gas gas_remaining wei
        args 'STKTDJAVAXMIM-A'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c)
    call 0xb2d474eaab89dd0134b8a98a9ab38ac41a537c6c.file(bytes32 arg1, bytes32 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 'STKTDJAVAXMIM-A', 'duty', 999999997355986547376005547
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Rate(ext_call.return_data[0], 'STKTDJAVAXMIM-A');
}



}
