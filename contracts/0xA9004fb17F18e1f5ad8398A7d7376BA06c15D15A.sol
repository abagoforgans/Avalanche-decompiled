contract main {




// =====================  Runtime code  =====================


#
#  - liquidateSNWithPrice(bytes[] arg1, bytes[] arg2, string[] arg3, address[] arg4, address[] arg5)
#  - pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
uint32 stor0;
address stor0;
uint256 stor0;
address stor1;
uint256 stor2;
uint8 stor3;
address comptrollerAddress;
address priceOracleAddress;
uint256 stor6;
uint256 stor7;

function priceOracle() {
    return priceOracleAddress
}

function comptroller() {
    return comptrollerAddress
}

function kill() {
    if address(stor0) != msg.sender:
        revert with 0, 'Unauthorized'
    selfdestruct(address(stor0))
}

function _fallback() payable {
    revert
}

function recipientChange() {
    return stor1, stor2, bool(stor3)
}

function initiateRecipientChange(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor0) != msg.sender:
        revert with 0, 'Unauthorized'
    stor1 = arg1
    stor2 = block.timestamp + (24 * 3600)
    stor3 = 1
    return arg1
}

function confirmRecipientChange() {
    if address(stor0) != msg.sender:
        revert with 0, 'Unauthorized'
    if not stor3:
        revert with 0, 'Initiate change first'
    if block.timestamp <= stor2:
        revert with 0, 'Wait longer'
    address(stor0) = stor1
    emit RecipientChanged(stor1);
    stor1 = 0
    stor2 = 0
    stor3 = 0
}

function setComptroller(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor0) != msg.sender:
        revert with 0, 'Unauthorized'
    comptrollerAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.oracle() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    priceOracleAddress = ext_call.return_data[12 len 20]
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.closeFactorMantissa() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor6 = ext_call.return_data[0]
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.liquidationIncentiveMantissa() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor7 = ext_call.return_data[0]
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        call address(stor0) with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit RevenueWithdrawn(address(stor0), address(arg1), eth.balance(this.address));
    else:
        mem[100] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 132] = address(stor0)
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit RevenueWithdrawn(address(stor0), address(arg1), ext_call.return_data[0]);
}

function liquidate(address arg1, address arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 == arg3:
        require ext_code.size(arg2)
        staticcall arg2.underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
        if ext_call.return_data[12 len 20] >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            staticcall address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 413] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 413] = 0xd21220a700000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            staticcall address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                    gas gas_remaining wei
                   args mem[(2 * ceil32(return_data.size)) + 417 len ceil32(return_data.size)]
            mem[(2 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                mem[(4 * ceil32(return_data.size)) + 417] = arg4
                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                    mem[(4 * ceil32(return_data.size)) + 449] = arg4
                else:
                    mem[(4 * ceil32(return_data.size)) + 449] = 0
            else:
                mem[(4 * ceil32(return_data.size)) + 417] = 0
                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                    mem[(4 * ceil32(return_data.size)) + 449] = arg4
                else:
                    mem[(4 * ceil32(return_data.size)) + 449] = 0
            mem[(4 * ceil32(return_data.size)) + 481] = this.address
            mem[(4 * ceil32(return_data.size)) + 513] = 128
            mem[(4 * ceil32(return_data.size)) + 545] = 96
            mem[(4 * ceil32(return_data.size)) + 577 len 96] = address(arg1), address(arg2), arg3
            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 417 len (5 * ceil32(return_data.size)) + 256]
        else:
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 413] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 413] = 0xd21220a700000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                    gas gas_remaining wei
                   args mem[(2 * ceil32(return_data.size)) + 417 len ceil32(return_data.size)]
            mem[(2 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                mem[(4 * ceil32(return_data.size)) + 417] = arg4
                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                    mem[(4 * ceil32(return_data.size)) + 449] = arg4
                else:
                    mem[(4 * ceil32(return_data.size)) + 449] = 0
            else:
                mem[(4 * ceil32(return_data.size)) + 417] = 0
                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                    mem[(4 * ceil32(return_data.size)) + 449] = arg4
                else:
                    mem[(4 * ceil32(return_data.size)) + 449] = 0
            mem[(4 * ceil32(return_data.size)) + 481] = this.address
            mem[(4 * ceil32(return_data.size)) + 513] = 128
            mem[(4 * ceil32(return_data.size)) + 545] = 96
            mem[(4 * ceil32(return_data.size)) + 577 len 96] = address(arg1), address(arg2), arg3
            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 417 len (5 * ceil32(return_data.size)) + 256]
    else:
        if 0x5c0401e81bc07ca70fad469b451682c0d747ef1c == arg3:
            require ext_code.size(arg2)
            staticcall arg2.underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
            if ext_call.return_data[12 len 20] >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                require ext_code.size(address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                staticcall address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 413] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 413] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                staticcall address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                        gas gas_remaining wei
                       args mem[(2 * ceil32(return_data.size)) + 417 len ceil32(return_data.size)]
                mem[(2 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                    mem[(4 * ceil32(return_data.size)) + 417] = arg4
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        mem[(4 * ceil32(return_data.size)) + 449] = arg4
                    else:
                        mem[(4 * ceil32(return_data.size)) + 449] = 0
                else:
                    mem[(4 * ceil32(return_data.size)) + 417] = 0
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        mem[(4 * ceil32(return_data.size)) + 449] = arg4
                    else:
                        mem[(4 * ceil32(return_data.size)) + 449] = 0
                mem[(4 * ceil32(return_data.size)) + 481] = this.address
                mem[(4 * ceil32(return_data.size)) + 513] = 128
                mem[(4 * ceil32(return_data.size)) + 545] = 96
                mem[(4 * ceil32(return_data.size)) + 577 len 96] = address(arg1), address(arg2), arg3
                require ext_code.size(address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 417 len (5 * ceil32(return_data.size)) + 256]
            else:
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 413] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 413] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                        gas gas_remaining wei
                       args mem[(2 * ceil32(return_data.size)) + 417 len ceil32(return_data.size)]
                mem[(2 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                    mem[(4 * ceil32(return_data.size)) + 417] = arg4
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        mem[(4 * ceil32(return_data.size)) + 449] = arg4
                    else:
                        mem[(4 * ceil32(return_data.size)) + 449] = 0
                else:
                    mem[(4 * ceil32(return_data.size)) + 417] = 0
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        mem[(4 * ceil32(return_data.size)) + 449] = arg4
                    else:
                        mem[(4 * ceil32(return_data.size)) + 449] = 0
                mem[(4 * ceil32(return_data.size)) + 481] = this.address
                mem[(4 * ceil32(return_data.size)) + 513] = 128
                mem[(4 * ceil32(return_data.size)) + 545] = 96
                mem[(4 * ceil32(return_data.size)) + 577 len 96] = address(arg1), address(arg2), arg3
                require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 417 len (5 * ceil32(return_data.size)) + 256]
        else:
            if 0x5c0401e81bc07ca70fad469b451682c0d747ef1c == arg2:
                require ext_code.size(arg3)
                staticcall arg3.underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == ext_call.return_data[12 len 20]:
                    revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 < ext_call.return_data[12 len 20]:
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 413] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 413] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                            gas gas_remaining wei
                           args mem[(2 * ceil32(return_data.size)) + 417 len ceil32(return_data.size)]
                    mem[(2 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[(4 * ceil32(return_data.size)) + 417] = arg4
                        if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                            mem[(4 * ceil32(return_data.size)) + 449] = arg4
                        else:
                            mem[(4 * ceil32(return_data.size)) + 449] = 0
                    else:
                        mem[(4 * ceil32(return_data.size)) + 417] = 0
                        if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                            mem[(4 * ceil32(return_data.size)) + 449] = arg4
                        else:
                            mem[(4 * ceil32(return_data.size)) + 449] = 0
                    mem[(4 * ceil32(return_data.size)) + 481] = this.address
                    mem[(4 * ceil32(return_data.size)) + 513] = 128
                    mem[(4 * ceil32(return_data.size)) + 545] = 96
                    mem[(4 * ceil32(return_data.size)) + 577 len 96] = address(arg1), address(arg2), arg3
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + 417 len (5 * ceil32(return_data.size)) + 256]
                else:
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 413] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 413] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                            gas gas_remaining wei
                           args mem[(2 * ceil32(return_data.size)) + 417 len ceil32(return_data.size)]
                    mem[(2 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[(4 * ceil32(return_data.size)) + 417] = arg4
                        if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                            mem[(4 * ceil32(return_data.size)) + 449] = arg4
                        else:
                            mem[(4 * ceil32(return_data.size)) + 449] = 0
                    else:
                        mem[(4 * ceil32(return_data.size)) + 417] = 0
                        if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                            mem[(4 * ceil32(return_data.size)) + 449] = arg4
                        else:
                            mem[(4 * ceil32(return_data.size)) + 449] = 0
                    mem[(4 * ceil32(return_data.size)) + 481] = this.address
                    mem[(4 * ceil32(return_data.size)) + 513] = 128
                    mem[(4 * ceil32(return_data.size)) + 545] = 96
                    mem[(4 * ceil32(return_data.size)) + 577 len 96] = address(arg1), address(arg2), arg3
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + 417 len (5 * ceil32(return_data.size)) + 256]
            else:
                require ext_code.size(arg2)
                staticcall arg2.underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(arg3)
                staticcall arg3.underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                    revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
                    if not address(ext_call.return_data[0]):
                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                else:
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                    revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
                    if not address(ext_call.return_data[0]):
                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                else:
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                if not uint32(ext_code.size(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                    if 100000 * arg4 <= 0:
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(4 * ceil32(return_data.size)) + 413] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                gas gas_remaining wei
                               args mem[(4 * ceil32(return_data.size)) + 417 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            mem[(4 * ceil32(return_data.size)) + 417] = arg4
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                mem[(4 * ceil32(return_data.size)) + 449] = arg4
                            else:
                                mem[(4 * ceil32(return_data.size)) + 449] = 0
                        else:
                            mem[(4 * ceil32(return_data.size)) + 417] = 0
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                mem[(4 * ceil32(return_data.size)) + 449] = arg4
                            else:
                                mem[(4 * ceil32(return_data.size)) + 449] = 0
                        mem[(4 * ceil32(return_data.size)) + 481] = this.address
                        mem[(4 * ceil32(return_data.size)) + 513] = 128
                        mem[(4 * ceil32(return_data.size)) + 545] = 96
                        mem[(4 * ceil32(return_data.size)) + 577 len 96] = address(arg1), address(arg2), arg3
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 417 len (7 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 289] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 321] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                        staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(4 * ceil32(return_data.size)) + 317] = arg1
                        mem[(4 * ceil32(return_data.size)) + 349] = arg2
                        mem[(4 * ceil32(return_data.size)) + 381] = arg3
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        mem[(4 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(6 * ceil32(return_data.size)) + 413] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                               args mem[(6 * ceil32(return_data.size)) + 417 len 8 * ceil32(return_data.size)]
                        mem[(6 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(8 * ceil32(return_data.size)) + 413] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            mem[(8 * ceil32(return_data.size)) + 417] = arg4
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                mem[(8 * ceil32(return_data.size)) + 449] = arg4
                            else:
                                mem[(8 * ceil32(return_data.size)) + 449] = 0
                        else:
                            mem[(8 * ceil32(return_data.size)) + 417] = 0
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                mem[(8 * ceil32(return_data.size)) + 449] = arg4
                            else:
                                mem[(8 * ceil32(return_data.size)) + 449] = 0
                        mem[(8 * ceil32(return_data.size)) + 481] = this.address
                        mem[(8 * ceil32(return_data.size)) + 513] = 128
                        mem[(8 * ceil32(return_data.size)) + 545] = (5 * ceil32(return_data.size)) + 96
                        mem[(8 * ceil32(return_data.size)) + 577 len ceil32(5 * ceil32(return_data.size)) + 3] = mem[(4 * ceil32(return_data.size)) + 317 len ceil32(5 * ceil32(return_data.size)) + 3]
                        if ceil32(5 * ceil32(return_data.size)) + 3 > (5 * ceil32(return_data.size)) + 96:
                            mem[(14 * ceil32(return_data.size)) + 673] = 0
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 417 len ceil32(5 * ceil32(return_data.size)) + (13 * ceil32(return_data.size)) + 163]
                else:
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 285 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                        if 100000 * arg4 <= 985 * ext_call.return_data[18 len 14]:
                            mem[(4 * ceil32(return_data.size)) + 317] = arg1
                            mem[(4 * ceil32(return_data.size)) + 349] = arg2
                            mem[(4 * ceil32(return_data.size)) + 381] = arg3
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                    gas gas_remaining wei
                            mem[(4 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(6 * ceil32(return_data.size)) + 413] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                    gas gas_remaining wei
                                   args mem[(6 * ceil32(return_data.size)) + 417 len 8 * ceil32(return_data.size)]
                            mem[(6 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(8 * ceil32(return_data.size)) + 413] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                mem[(8 * ceil32(return_data.size)) + 417] = arg4
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    mem[(8 * ceil32(return_data.size)) + 449] = arg4
                                else:
                                    mem[(8 * ceil32(return_data.size)) + 449] = 0
                            else:
                                mem[(8 * ceil32(return_data.size)) + 417] = 0
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    mem[(8 * ceil32(return_data.size)) + 449] = arg4
                                else:
                                    mem[(8 * ceil32(return_data.size)) + 449] = 0
                            mem[(8 * ceil32(return_data.size)) + 481] = this.address
                            mem[(8 * ceil32(return_data.size)) + 513] = 128
                            mem[(8 * ceil32(return_data.size)) + 545] = (5 * ceil32(return_data.size)) + 96
                            mem[(8 * ceil32(return_data.size)) + 577 len ceil32(5 * ceil32(return_data.size)) + 3] = mem[(4 * ceil32(return_data.size)) + 317 len ceil32(5 * ceil32(return_data.size)) + 3]
                            if ceil32(5 * ceil32(return_data.size)) + 3 > (5 * ceil32(return_data.size)) + 96:
                                mem[(14 * ceil32(return_data.size)) + 673] = 0
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 417 len ceil32(5 * ceil32(return_data.size)) + (13 * ceil32(return_data.size)) + 163]
                        else:
                            mem[(4 * ceil32(return_data.size)) + 289] = address(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 321] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[(4 * ceil32(return_data.size)) + 289 len (5 * ceil32(return_data.size)) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(4 * ceil32(return_data.size)) + 317] = arg1
                            mem[(4 * ceil32(return_data.size)) + 349] = arg2
                            mem[(4 * ceil32(return_data.size)) + 381] = arg3
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token0() with:
                                    gas gas_remaining wei
                            mem[(4 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(6 * ceil32(return_data.size)) + 413] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token1() with:
                                    gas gas_remaining wei
                                   args mem[(6 * ceil32(return_data.size)) + 417 len 8 * ceil32(return_data.size)]
                            mem[(6 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(8 * ceil32(return_data.size)) + 413] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                mem[(8 * ceil32(return_data.size)) + 417] = arg4
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    mem[(8 * ceil32(return_data.size)) + 449] = arg4
                                else:
                                    mem[(8 * ceil32(return_data.size)) + 449] = 0
                            else:
                                mem[(8 * ceil32(return_data.size)) + 417] = 0
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    mem[(8 * ceil32(return_data.size)) + 449] = arg4
                                else:
                                    mem[(8 * ceil32(return_data.size)) + 449] = 0
                            mem[(8 * ceil32(return_data.size)) + 481] = this.address
                            mem[(8 * ceil32(return_data.size)) + 513] = 128
                            mem[(8 * ceil32(return_data.size)) + 545] = (7 * ceil32(return_data.size)) + 96
                            mem[(8 * ceil32(return_data.size)) + 577 len ceil32(7 * ceil32(return_data.size)) + 3] = mem[(4 * ceil32(return_data.size)) + 317 len ceil32(7 * ceil32(return_data.size)) + 3]
                            if ceil32(7 * ceil32(return_data.size)) + 3 > (7 * ceil32(return_data.size)) + 96:
                                mem[(16 * ceil32(return_data.size)) + 673] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 417 len ceil32(7 * ceil32(return_data.size)) + (13 * ceil32(return_data.size)) + 163]
                    else:
                        if 100000 * arg4 <= 985 * ext_call.return_data[50 len 14]:
                            mem[(4 * ceil32(return_data.size)) + 317] = arg1
                            mem[(4 * ceil32(return_data.size)) + 349] = arg2
                            mem[(4 * ceil32(return_data.size)) + 381] = arg3
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                    gas gas_remaining wei
                            mem[(4 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(6 * ceil32(return_data.size)) + 413] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                    gas gas_remaining wei
                                   args mem[(6 * ceil32(return_data.size)) + 417 len 8 * ceil32(return_data.size)]
                            mem[(6 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(8 * ceil32(return_data.size)) + 413] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                mem[(8 * ceil32(return_data.size)) + 417] = arg4
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    mem[(8 * ceil32(return_data.size)) + 449] = arg4
                                else:
                                    mem[(8 * ceil32(return_data.size)) + 449] = 0
                            else:
                                mem[(8 * ceil32(return_data.size)) + 417] = 0
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    mem[(8 * ceil32(return_data.size)) + 449] = arg4
                                else:
                                    mem[(8 * ceil32(return_data.size)) + 449] = 0
                            mem[(8 * ceil32(return_data.size)) + 481] = this.address
                            mem[(8 * ceil32(return_data.size)) + 513] = 128
                            mem[(8 * ceil32(return_data.size)) + 545] = (5 * ceil32(return_data.size)) + 96
                            mem[(8 * ceil32(return_data.size)) + 577 len ceil32(5 * ceil32(return_data.size)) + 3] = mem[(4 * ceil32(return_data.size)) + 317 len ceil32(5 * ceil32(return_data.size)) + 3]
                            if ceil32(5 * ceil32(return_data.size)) + 3 > (5 * ceil32(return_data.size)) + 96:
                                mem[(14 * ceil32(return_data.size)) + 673] = 0
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 417 len ceil32(5 * ceil32(return_data.size)) + (13 * ceil32(return_data.size)) + 163]
                        else:
                            mem[(4 * ceil32(return_data.size)) + 289] = address(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 321] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[(4 * ceil32(return_data.size)) + 289 len (5 * ceil32(return_data.size)) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(4 * ceil32(return_data.size)) + 317] = arg1
                            mem[(4 * ceil32(return_data.size)) + 349] = arg2
                            mem[(4 * ceil32(return_data.size)) + 381] = arg3
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token0() with:
                                    gas gas_remaining wei
                            mem[(4 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(6 * ceil32(return_data.size)) + 413] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token1() with:
                                    gas gas_remaining wei
                                   args mem[(6 * ceil32(return_data.size)) + 417 len 8 * ceil32(return_data.size)]
                            mem[(6 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(8 * ceil32(return_data.size)) + 413] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                mem[(8 * ceil32(return_data.size)) + 417] = arg4
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    mem[(8 * ceil32(return_data.size)) + 449] = arg4
                                else:
                                    mem[(8 * ceil32(return_data.size)) + 449] = 0
                            else:
                                mem[(8 * ceil32(return_data.size)) + 417] = 0
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    mem[(8 * ceil32(return_data.size)) + 449] = arg4
                                else:
                                    mem[(8 * ceil32(return_data.size)) + 449] = 0
                            mem[(8 * ceil32(return_data.size)) + 481] = this.address
                            mem[(8 * ceil32(return_data.size)) + 513] = 128
                            mem[(8 * ceil32(return_data.size)) + 545] = (7 * ceil32(return_data.size)) + 96
                            mem[(8 * ceil32(return_data.size)) + 577 len ceil32(7 * ceil32(return_data.size)) + 3] = mem[(4 * ceil32(return_data.size)) + 317 len ceil32(7 * ceil32(return_data.size)) + 3]
                            if ceil32(7 * ceil32(return_data.size)) + 3 > (7 * ceil32(return_data.size)) + 96:
                                mem[(16 * ceil32(return_data.size)) + 673] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 417 len ceil32(7 * ceil32(return_data.size)) + (13 * ceil32(return_data.size)) + 163]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function liquidateS(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.getAccountLiquidity(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[32]:
        require ext_code.size(arg2)
        call arg2.borrowBalanceCurrent(address rg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg3)
        call arg3.balanceOfUnderlying(address rg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require stor7
        require ext_code.size(priceOracleAddress)
        staticcall priceOracleAddress.getUnderlyingPrice(address rg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(priceOracleAddress)
        staticcall priceOracleAddress.getUnderlyingPrice(address rg1) with:
                gas gas_remaining wei
               args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 < 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0]:
            if arg2 == arg3:
                require ext_code.size(arg2)
                staticcall arg2.underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                if ext_call.return_data[12 len 20] >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                            gas gas_remaining wei
                    mem[(8 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(10 * ceil32(return_data.size)) + 413] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                            gas gas_remaining wei
                           args mem[(10 * ceil32(return_data.size)) + 417 len 16 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                    else:
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                else:
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                            gas gas_remaining wei
                    mem[(8 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(10 * ceil32(return_data.size)) + 413] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                            gas gas_remaining wei
                           args mem[(10 * ceil32(return_data.size)) + 417 len 16 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                    else:
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
            else:
                if 0x5c0401e81bc07ca70fad469b451682c0d747ef1c == arg3:
                    require ext_code.size(arg2)
                    staticcall arg2.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                    if ext_call.return_data[12 len 20] >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                gas gas_remaining wei
                        mem[(8 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(10 * ceil32(return_data.size)) + 413] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                gas gas_remaining wei
                               args mem[(10 * ceil32(return_data.size)) + 417 len 16 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                    else:
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                gas gas_remaining wei
                        mem[(8 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(10 * ceil32(return_data.size)) + 413] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                gas gas_remaining wei
                               args mem[(10 * ceil32(return_data.size)) + 417 len 16 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                else:
                    if 0x5c0401e81bc07ca70fad469b451682c0d747ef1c == arg2:
                        require ext_code.size(arg3)
                        staticcall arg3.underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == ext_call.return_data[12 len 20]:
                            revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 < ext_call.return_data[12 len 20]:
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                    gas gas_remaining wei
                            mem[(8 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(10 * ceil32(return_data.size)) + 413] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                    gas gas_remaining wei
                                   args mem[(10 * ceil32(return_data.size)) + 417 len 16 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                            else:
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                        else:
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                    gas gas_remaining wei
                            mem[(8 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(10 * ceil32(return_data.size)) + 413] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                    gas gas_remaining wei
                                   args mem[(10 * ceil32(return_data.size)) + 417 len 16 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                            else:
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                    else:
                        require ext_code.size(arg2)
                        staticcall arg2.underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(arg3)
                        staticcall arg3.underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                            revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                        if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
                            if not address(ext_call.return_data[0]):
                                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                        else:
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                            revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                        if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
                            if not address(ext_call.return_data[0]):
                                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                        else:
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                        if not uint32(ext_code.size(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                            if 100000 * ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0] <= 0:
                                require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(13 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                    else:
                                        call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(13 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                else:
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(13 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                    else:
                                        call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(13 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                            else:
                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                    else:
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                else:
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                    else:
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                        else:
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                    gas gas_remaining wei
                            mem[(10 * ceil32(return_data.size)) + 285 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                if 100000 * ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0] <= 985 * ext_call.return_data[18 len 14]:
                                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                        else:
                                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                    else:
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                        else:
                                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                else:
                                    mem[(11 * ceil32(return_data.size)) + 321] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                    require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                    staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                            gas gas_remaining wei
                                           args address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(13 * ceil32(return_data.size)) + 317] = arg1
                                    mem[(13 * ceil32(return_data.size)) + 349] = arg2
                                    mem[(13 * ceil32(return_data.size)) + 381] = arg3
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).token0() with:
                                            gas gas_remaining wei
                                    mem[(13 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).token1() with:
                                            gas gas_remaining wei
                                    mem[(14 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(16 * ceil32(return_data.size)) + 413] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        mem[(16 * ceil32(return_data.size)) + 417] = ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0]
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            mem[(16 * ceil32(return_data.size)) + 449] = ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0]
                                        else:
                                            mem[(16 * ceil32(return_data.size)) + 449] = 0
                                    else:
                                        mem[(16 * ceil32(return_data.size)) + 417] = 0
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            mem[(16 * ceil32(return_data.size)) + 449] = ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0]
                                        else:
                                            mem[(16 * ceil32(return_data.size)) + 449] = 0
                                    mem[(16 * ceil32(return_data.size)) + 481] = this.address
                                    mem[(16 * ceil32(return_data.size)) + 513] = 128
                                    mem[(16 * ceil32(return_data.size)) + 545] = (4 * ceil32(return_data.size)) + 96
                                    mem[(16 * ceil32(return_data.size)) + 577 len ceil32(4 * ceil32(return_data.size)) + 3] = mem[(13 * ceil32(return_data.size)) + 317 len ceil32(4 * ceil32(return_data.size)) + 3]
                                    if ceil32(4 * ceil32(return_data.size)) + 3 > (4 * ceil32(return_data.size)) + 96:
                                        mem[(22 * ceil32(return_data.size)) + 673] = 0
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[(16 * ceil32(return_data.size)) + 417 len ceil32(4 * ceil32(return_data.size)) + (5 * ceil32(return_data.size)) + 163]
                            else:
                                if 100000 * ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0] <= 985 * ext_call.return_data[50 len 14]:
                                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                        else:
                                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                    else:
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                        else:
                                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                else:
                                    mem[(11 * ceil32(return_data.size)) + 321] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                    require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                    staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                            gas gas_remaining wei
                                           args address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(13 * ceil32(return_data.size)) + 317] = arg1
                                    mem[(13 * ceil32(return_data.size)) + 349] = arg2
                                    mem[(13 * ceil32(return_data.size)) + 381] = arg3
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).token0() with:
                                            gas gas_remaining wei
                                    mem[(13 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).token1() with:
                                            gas gas_remaining wei
                                    mem[(14 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(16 * ceil32(return_data.size)) + 413] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        mem[(16 * ceil32(return_data.size)) + 417] = ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0]
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            mem[(16 * ceil32(return_data.size)) + 449] = ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0]
                                        else:
                                            mem[(16 * ceil32(return_data.size)) + 449] = 0
                                    else:
                                        mem[(16 * ceil32(return_data.size)) + 417] = 0
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            mem[(16 * ceil32(return_data.size)) + 449] = ext_call.return_data[0] * ext_call.return_data[0] * stor6 / 10^18 / ext_call.return_data[0]
                                        else:
                                            mem[(16 * ceil32(return_data.size)) + 449] = 0
                                    mem[(16 * ceil32(return_data.size)) + 481] = this.address
                                    mem[(16 * ceil32(return_data.size)) + 513] = 128
                                    mem[(16 * ceil32(return_data.size)) + 545] = (4 * ceil32(return_data.size)) + 96
                                    mem[(16 * ceil32(return_data.size)) + 577 len ceil32(4 * ceil32(return_data.size)) + 3] = mem[(13 * ceil32(return_data.size)) + 317 len ceil32(4 * ceil32(return_data.size)) + 3]
                                    if ceil32(4 * ceil32(return_data.size)) + 3 > (4 * ceil32(return_data.size)) + 96:
                                        mem[(22 * ceil32(return_data.size)) + 673] = 0
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[(16 * ceil32(return_data.size)) + 417 len ceil32(4 * ceil32(return_data.size)) + (5 * ceil32(return_data.size)) + 163]
        else:
            if arg2 == arg3:
                require ext_code.size(arg2)
                staticcall arg2.underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                if ext_call.return_data[12 len 20] >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                            gas gas_remaining wei
                    mem[(8 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(10 * ceil32(return_data.size)) + 413] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                            gas gas_remaining wei
                           args mem[(10 * ceil32(return_data.size)) + 417 len 16 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                    else:
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                else:
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                            gas gas_remaining wei
                    mem[(8 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(10 * ceil32(return_data.size)) + 413] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                            gas gas_remaining wei
                           args mem[(10 * ceil32(return_data.size)) + 417 len 16 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                    else:
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
            else:
                if 0x5c0401e81bc07ca70fad469b451682c0d747ef1c == arg3:
                    require ext_code.size(arg2)
                    staticcall arg2.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                    if ext_call.return_data[12 len 20] >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                gas gas_remaining wei
                        mem[(8 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(10 * ceil32(return_data.size)) + 413] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                gas gas_remaining wei
                               args mem[(10 * ceil32(return_data.size)) + 417 len 16 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                    else:
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                gas gas_remaining wei
                        mem[(8 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(10 * ceil32(return_data.size)) + 413] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                gas gas_remaining wei
                               args mem[(10 * ceil32(return_data.size)) + 417 len 16 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                else:
                    if 0x5c0401e81bc07ca70fad469b451682c0d747ef1c == arg2:
                        require ext_code.size(arg3)
                        staticcall arg3.underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == ext_call.return_data[12 len 20]:
                            revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 < ext_call.return_data[12 len 20]:
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                    gas gas_remaining wei
                            mem[(8 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(10 * ceil32(return_data.size)) + 413] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                    gas gas_remaining wei
                                   args mem[(10 * ceil32(return_data.size)) + 417 len 16 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                            else:
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                        else:
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                    gas gas_remaining wei
                            mem[(8 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(10 * ceil32(return_data.size)) + 413] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                    gas gas_remaining wei
                                   args mem[(10 * ceil32(return_data.size)) + 417 len 16 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                            else:
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                    else:
                        require ext_code.size(arg2)
                        staticcall arg2.underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(arg3)
                        staticcall arg3.underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                            revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                        if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
                            if not address(ext_call.return_data[0]):
                                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                        else:
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                            revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                        if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
                            if not address(ext_call.return_data[0]):
                                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                        else:
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                        if not uint32(ext_code.size(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                            if 100000 * 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                                require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(13 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                    else:
                                        call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(13 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                else:
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(13 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                    else:
                                        call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(13 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                            else:
                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                    else:
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                else:
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                    else:
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                        else:
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                    gas gas_remaining wei
                            mem[(10 * ceil32(return_data.size)) + 285 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                if 100000 * 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0] <= 985 * ext_call.return_data[18 len 14]:
                                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                        else:
                                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                    else:
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                        else:
                                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                else:
                                    mem[(11 * ceil32(return_data.size)) + 321] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                    require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                    staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                            gas gas_remaining wei
                                           args address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(13 * ceil32(return_data.size)) + 317] = arg1
                                    mem[(13 * ceil32(return_data.size)) + 349] = arg2
                                    mem[(13 * ceil32(return_data.size)) + 381] = arg3
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).token0() with:
                                            gas gas_remaining wei
                                    mem[(13 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).token1() with:
                                            gas gas_remaining wei
                                    mem[(14 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(16 * ceil32(return_data.size)) + 413] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        mem[(16 * ceil32(return_data.size)) + 417] = 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0]
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            mem[(16 * ceil32(return_data.size)) + 449] = 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0]
                                        else:
                                            mem[(16 * ceil32(return_data.size)) + 449] = 0
                                    else:
                                        mem[(16 * ceil32(return_data.size)) + 417] = 0
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            mem[(16 * ceil32(return_data.size)) + 449] = 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0]
                                        else:
                                            mem[(16 * ceil32(return_data.size)) + 449] = 0
                                    mem[(16 * ceil32(return_data.size)) + 481] = this.address
                                    mem[(16 * ceil32(return_data.size)) + 513] = 128
                                    mem[(16 * ceil32(return_data.size)) + 545] = (4 * ceil32(return_data.size)) + 96
                                    mem[(16 * ceil32(return_data.size)) + 577 len ceil32(4 * ceil32(return_data.size)) + 3] = mem[(13 * ceil32(return_data.size)) + 317 len ceil32(4 * ceil32(return_data.size)) + 3]
                                    if ceil32(4 * ceil32(return_data.size)) + 3 > (4 * ceil32(return_data.size)) + 96:
                                        mem[(22 * ceil32(return_data.size)) + 673] = 0
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[(16 * ceil32(return_data.size)) + 417 len ceil32(4 * ceil32(return_data.size)) + (5 * ceil32(return_data.size)) + 163]
                            else:
                                if 100000 * 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0] <= 985 * ext_call.return_data[50 len 14]:
                                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    staticcall address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                        else:
                                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                    else:
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                        else:
                                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3, mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                else:
                                    mem[(11 * ceil32(return_data.size)) + 321] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                    require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                    staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                            gas gas_remaining wei
                                           args address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(13 * ceil32(return_data.size)) + 317] = arg1
                                    mem[(13 * ceil32(return_data.size)) + 349] = arg2
                                    mem[(13 * ceil32(return_data.size)) + 381] = arg3
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).token0() with:
                                            gas gas_remaining wei
                                    mem[(13 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).token1() with:
                                            gas gas_remaining wei
                                    mem[(14 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(16 * ceil32(return_data.size)) + 413] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        mem[(16 * ceil32(return_data.size)) + 417] = 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0]
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            mem[(16 * ceil32(return_data.size)) + 449] = 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0]
                                        else:
                                            mem[(16 * ceil32(return_data.size)) + 449] = 0
                                    else:
                                        mem[(16 * ceil32(return_data.size)) + 417] = 0
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            mem[(16 * ceil32(return_data.size)) + 449] = 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0]
                                        else:
                                            mem[(16 * ceil32(return_data.size)) + 449] = 0
                                    mem[(16 * ceil32(return_data.size)) + 481] = this.address
                                    mem[(16 * ceil32(return_data.size)) + 513] = 128
                                    mem[(16 * ceil32(return_data.size)) + 545] = (4 * ceil32(return_data.size)) + 96
                                    mem[(16 * ceil32(return_data.size)) + 577 len ceil32(4 * ceil32(return_data.size)) + 3] = mem[(13 * ceil32(return_data.size)) + 317 len ceil32(4 * ceil32(return_data.size)) + 3]
                                    if ceil32(4 * ceil32(return_data.size)) + 3 > (4 * ceil32(return_data.size)) + 96:
                                        mem[(22 * ceil32(return_data.size)) + 673] = 0
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[(16 * ceil32(return_data.size)) + 417 len ceil32(4 * ceil32(return_data.size)) + (5 * ceil32(return_data.size)) + 163]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function liquidateSWithPrice(bytes[] arg1, bytes[] arg2, string[] arg3, address arg4, address arg5, address arg6) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    mem[96] = 0xecc1e98400000000000000000000000000000000000000000000000000000000
    mem[100] = 96
    mem[196] = arg1.length
    idx = 0
    s = arg1 + 36
    t = (32 * arg1.length) + 228
    u = 228
    while idx < arg1.length:
        mem[u] = t - 228
        require cd[s] < calldata.size + -arg1 - 67
        require cd[(arg1 + cd[s] + 36)] <= test266151307()
        require arg1 + 36 <= calldata.size - cd[(arg1 + cd[s] + 36)]
        mem[t] = cd[(arg1 + cd[s] + 36)]
        mem[t + 32 len cd[(arg1 + cd[s] + 36)]] = call.data[arg1 + cd[s] + 68 len cd[(arg1 + cd[s] + 36)]]
        mem[t + cd[(arg1 + cd[s] + 36)] + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(arg1 + cd[s] + 36)]) + 32
        u = u + 32
        continue 
    mem[132] = (64 * arg1.length) + 128
    mem[(64 * arg1.length) + 228] = arg2.length
    idx = 0
    s = arg2 + 36
    t = (64 * arg1.length) + (32 * arg2.length) + 260
    u = (64 * arg1.length) + 260
    while idx < arg2.length:
        mem[u] = t + -(64 * arg1.length) - 260
        require cd[s] < calldata.size + -arg2 - 67
        require cd[(arg2 + cd[s] + 36)] <= test266151307()
        require arg2 + 36 <= calldata.size - cd[(arg2 + cd[s] + 36)]
        mem[t] = cd[(arg2 + cd[s] + 36)]
        mem[t + 32 len cd[(arg2 + cd[s] + 36)]] = call.data[arg2 + cd[s] + 68 len cd[(arg2 + cd[s] + 36)]]
        mem[t + cd[(arg2 + cd[s] + 36)] + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(arg2 + cd[s] + 36)]) + 32
        u = u + 32
        continue 
    mem[164] = (64 * arg1.length) + (64 * arg2.length) + 160
    mem[(64 * arg1.length) + (64 * arg2.length) + 260] = arg3.length
    idx = 0
    s = arg3 + 36
    t = (64 * arg1.length) + (64 * arg2.length) + (32 * arg3.length) + 292
    u = (64 * arg1.length) + (64 * arg2.length) + 292
    while idx < arg3.length:
        mem[u] = t + -(64 * arg1.length) + -(64 * arg2.length) - 292
        require cd[s] < calldata.size + -arg3 - 67
        require cd[(arg3 + cd[s] + 36)] <= test266151307()
        require arg3 + 36 <= calldata.size - cd[(arg3 + cd[s] + 36)]
        mem[t] = cd[(arg3 + cd[s] + 36)]
        mem[t + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
        mem[t + cd[(arg3 + cd[s] + 36)] + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(arg3 + cd[s] + 36)]) + 32
        u = u + 32
        continue 
    require ext_code.size(priceOracleAddress)
    call priceOracleAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (64 * arg1.length) + (64 * arg2.length) + (64 * arg3.length) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.getAccountLiquidity(address rg1) with:
            gas gas_remaining wei
           args address(arg4)
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _7406 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    if not mem[_7406 + 32]:
        mem[mem[64] + 4] = arg4
        require ext_code.size(arg5)
        call arg5.borrowBalanceCurrent(address rg1) with:
             gas gas_remaining wei
            args address(arg4)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7412 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _7413 = mem[_7412]
        mem[mem[64] + 4] = arg4
        require ext_code.size(arg6)
        call arg6.balanceOfUnderlying(address rg1) with:
             gas gas_remaining wei
            args address(arg4)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7416 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _7417 = mem[_7416]
        require stor7
        mem[mem[64] + 4] = arg5
        require ext_code.size(priceOracleAddress)
        staticcall priceOracleAddress.getUnderlyingPrice(address rg1) with:
                gas gas_remaining wei
               args address(arg5)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7420 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _7421 = mem[_7420]
        mem[mem[64] + 4] = arg6
        require ext_code.size(priceOracleAddress)
        staticcall priceOracleAddress.getUnderlyingPrice(address rg1) with:
                gas gas_remaining wei
               args address(arg6)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7424 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _7425 = mem[_7424]
        require _7421
        if _7421 * _7413 * stor6 / 10^18 < 10^18 * _7417 / stor7 * mem[_7424]:
            if arg5 == arg6:
                require ext_code.size(arg5)
                staticcall arg5.underlying() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7434 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7446 = mem[_7434]
                require mem[_7434] == mem[_7434 + 12 len 20]
                if mem[_7434 + 12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                if mem[_7434 + 12 len 20] >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                    mem[mem[64] + 52] = address(_7446)
                    _7498 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7498 + 32 len mem[_7498]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7498 + 32 len mem[_7498]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7498 + 32 len mem[_7498]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7498 + 32 len mem[_7498]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7498 + 32 len mem[_7498]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    if ext_call.return_data[12 len 20] == address(_7446):
                        if ext_call.return_data[12 len 20] == address(_7446):
                            call address(sha3(0, 17269419903419772280, sha3(mem[_7498 + 32 len mem[_7498]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _7421 * _7413 * stor6 / 10^18 / _7421, _7421 * _7413 * stor6 / 10^18 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(mem[_7498 + 32 len mem[_7498]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _7421 * _7413 * stor6 / 10^18 / _7421, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                    else:
                        if ext_call.return_data[12 len 20] == address(_7446):
                            call address(sha3(0, 17269419903419772280, sha3(mem[_7498 + 32 len mem[_7498]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _7421 * _7413 * stor6 / 10^18 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(mem[_7498 + 32 len mem[_7498]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                else:
                    if not mem[_7434 + 12 len 20]:
                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                    mem[mem[64] + 32] = address(mem[_7434])
                    mem[mem[64] + 52] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                    _7494 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7494 + 32 len mem[_7494]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7494 + 32 len mem[_7494]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7494 + 32 len mem[_7494]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7494 + 32 len mem[_7494]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7494 + 32 len mem[_7494]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    if ext_call.return_data[12 len 20] == address(_7446):
                        if ext_call.return_data[12 len 20] == address(_7446):
                            call address(sha3(0, 17269419903419772280, sha3(mem[_7494 + 32 len mem[_7494]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _7421 * _7413 * stor6 / 10^18 / _7421, _7421 * _7413 * stor6 / 10^18 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(mem[_7494 + 32 len mem[_7494]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _7421 * _7413 * stor6 / 10^18 / _7421, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                    else:
                        if ext_call.return_data[12 len 20] == address(_7446):
                            call address(sha3(0, 17269419903419772280, sha3(mem[_7494 + 32 len mem[_7494]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _7421 * _7413 * stor6 / 10^18 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(mem[_7494 + 32 len mem[_7494]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
            else:
                if 0x5c0401e81bc07ca70fad469b451682c0d747ef1c == arg6:
                    require ext_code.size(arg5)
                    staticcall arg5.underlying() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7444 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7452 = mem[_7444]
                    require mem[_7444] == mem[_7444 + 12 len 20]
                    if mem[_7444 + 12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                    if mem[_7444 + 12 len 20] >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                        mem[mem[64] + 52] = address(_7452)
                        _7521 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7521 + 32 len mem[_7521]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7521 + 32 len mem[_7521]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7521 + 32 len mem[_7521]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7521 + 32 len mem[_7521]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7521 + 32 len mem[_7521]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        if ext_call.return_data[12 len 20] == address(_7452):
                            if ext_call.return_data[12 len 20] == address(_7452):
                                call address(sha3(0, 17269419903419772280, sha3(mem[_7521 + 32 len mem[_7521]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _7421 * _7413 * stor6 / 10^18 / _7421, _7421 * _7413 * stor6 / 10^18 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(mem[_7521 + 32 len mem[_7521]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _7421 * _7413 * stor6 / 10^18 / _7421, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                        else:
                            if ext_call.return_data[12 len 20] == address(_7452):
                                call address(sha3(0, 17269419903419772280, sha3(mem[_7521 + 32 len mem[_7521]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _7421 * _7413 * stor6 / 10^18 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(mem[_7521 + 32 len mem[_7521]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                    else:
                        if not mem[_7444 + 12 len 20]:
                            revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 32] = address(mem[_7444])
                        mem[mem[64] + 52] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                        _7517 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7517 + 32 len mem[_7517]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7517 + 32 len mem[_7517]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7517 + 32 len mem[_7517]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7517 + 32 len mem[_7517]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7517 + 32 len mem[_7517]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        if ext_call.return_data[12 len 20] == address(_7452):
                            if ext_call.return_data[12 len 20] == address(_7452):
                                call address(sha3(0, 17269419903419772280, sha3(mem[_7517 + 32 len mem[_7517]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _7421 * _7413 * stor6 / 10^18 / _7421, _7421 * _7413 * stor6 / 10^18 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(mem[_7517 + 32 len mem[_7517]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _7421 * _7413 * stor6 / 10^18 / _7421, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                        else:
                            if ext_call.return_data[12 len 20] == address(_7452):
                                call address(sha3(0, 17269419903419772280, sha3(mem[_7517 + 32 len mem[_7517]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _7421 * _7413 * stor6 / 10^18 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(mem[_7517 + 32 len mem[_7517]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                else:
                    if 0x5c0401e81bc07ca70fad469b451682c0d747ef1c == arg5:
                        require ext_code.size(arg6)
                        staticcall arg6.underlying() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7448 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7455 = mem[_7448]
                        require mem[_7448] == mem[_7448 + 12 len 20]
                        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == mem[_7448 + 12 len 20]:
                            revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 < mem[_7448 + 12 len 20]:
                            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                            mem[mem[64] + 52] = address(_7455)
                            _7540 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7540 + 32 len mem[_7540]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7540 + 32 len mem[_7540]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7540 + 32 len mem[_7540]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7540 + 32 len mem[_7540]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7540 + 32 len mem[_7540]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_7540 + 32 len mem[_7540]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _7421 * _7413 * stor6 / 10^18 / _7421, _7421 * _7413 * stor6 / 10^18 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_7540 + 32 len mem[_7540]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _7421 * _7413 * stor6 / 10^18 / _7421, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                            else:
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_7540 + 32 len mem[_7540]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _7421 * _7413 * stor6 / 10^18 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_7540 + 32 len mem[_7540]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                        else:
                            if not mem[_7448 + 12 len 20]:
                                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                            mem[mem[64] + 32] = address(mem[_7448])
                            mem[mem[64] + 52] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                            _7544 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7544 + 32 len mem[_7544]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7544 + 32 len mem[_7544]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7544 + 32 len mem[_7544]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7544 + 32 len mem[_7544]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7544 + 32 len mem[_7544]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_7544 + 32 len mem[_7544]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _7421 * _7413 * stor6 / 10^18 / _7421, _7421 * _7413 * stor6 / 10^18 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_7544 + 32 len mem[_7544]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _7421 * _7413 * stor6 / 10^18 / _7421, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                            else:
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_7544 + 32 len mem[_7544]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _7421 * _7413 * stor6 / 10^18 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_7544 + 32 len mem[_7544]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                    else:
                        require ext_code.size(arg5)
                        staticcall arg5.underlying() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7447 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7454 = mem[_7447]
                        require mem[_7447] == mem[_7447 + 12 len 20]
                        require ext_code.size(arg6)
                        staticcall arg6.underlying() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7464 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7473 = mem[_7464]
                        require mem[_7464] == mem[_7464 + 12 len 20]
                        if address(_7454) == mem[_7464 + 12 len 20]:
                            revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                        if address(_7454) < mem[_7464 + 12 len 20]:
                            if not address(_7454):
                                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                            if address(_7454) == mem[_7464 + 12 len 20]:
                                revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                            if address(_7454) < mem[_7464 + 12 len 20]:
                                if not address(_7454):
                                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                _7686 = mem[64]
                                mem[mem[64] + 32] = address(_7454)
                                mem[mem[64] + 52] = address(_7473)
                                _7718 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _7720 = sha3(mem[_7718 + 32 len mem[_7718]])
                                if not uint32(ext_code.size(sha3(0, 17269419903419772280, sha3(mem[_7718 + 32 len mem[_7718]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                    if 100000 * _7421 * _7413 * stor6 / 10^18 / _7421 <= 0:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7718 + 32 len mem[_7718]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7718 + 32 len mem[_7718]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7718 + 32 len mem[_7718]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7718 + 32 len mem[_7718]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7718 + 32 len mem[_7718]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        if ext_call.return_data[12 len 20] == address(_7454):
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7718 + 32 len mem[_7718]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args _7421 * _7413 * stor6 / 10^18 / _7421, _7421 * _7413 * stor6 / 10^18 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7718 + 32 len mem[_7718]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args _7421 * _7413 * stor6 / 10^18 / _7421, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                        else:
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7718 + 32 len mem[_7718]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, _7421 * _7413 * stor6 / 10^18 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7718 + 32 len mem[_7718]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                    else:
                                        require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                        staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                gas gas_remaining wei
                                               args address(_7454), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token0() with:
                                                gas gas_remaining wei
                                        mem[_7686 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_7686 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token1() with:
                                                gas gas_remaining wei
                                               args mem[_7686 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                        mem[_7686 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if ext_call.return_data[12 len 20] == address(_7454):
                                            mem[_7686 + (4 * ceil32(return_data.size)) + 321] = _7421 * _7413 * stor6 / 10^18 / _7421
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                mem[_7686 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                            else:
                                                mem[_7686 + (4 * ceil32(return_data.size)) + 353] = 0
                                        else:
                                            mem[_7686 + (4 * ceil32(return_data.size)) + 321] = 0
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                mem[_7686 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                            else:
                                                mem[_7686 + (4 * ceil32(return_data.size)) + 353] = 0
                                        mem[_7686 + (4 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_7686 + (4 * ceil32(return_data.size)) + 417] = 128
                                        mem[_7686 + (4 * ceil32(return_data.size)) + 449] = 96
                                        mem[_7686 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[_7686 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                else:
                                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7718 + 32 len mem[_7718]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7718 + 32 len mem[_7718]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                    if address(_7454) == address(_7454):
                                        if 100000 * _7421 * _7413 * stor6 / 10^18 / _7421 <= 985 * ext_call.return_data[18 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7718 + 32 len mem[_7718]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7718 + 32 len mem[_7718]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7686 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7686 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7720, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _7720, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7686 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_7686 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                mem[_7686 + (4 * ceil32(return_data.size)) + 321] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7686 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7686 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7686 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7686 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7686 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7686 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7686 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7686 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7686 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7720, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _7720, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7686 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_7454), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7686 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7686 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7686 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                mem[_7686 + (4 * ceil32(return_data.size)) + 321] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7686 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7686 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7686 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7686 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7686 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7686 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7686 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7686 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7686 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7686 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                    else:
                                        if 100000 * _7421 * _7413 * stor6 / 10^18 / _7421 <= 985 * ext_call.return_data[50 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7718 + 32 len mem[_7718]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7718 + 32 len mem[_7718]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7686 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7686 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7720, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _7720, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7686 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_7686 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                mem[_7686 + (4 * ceil32(return_data.size)) + 321] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7686 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7686 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7686 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7686 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7686 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7686 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7686 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7686 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7686 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7720, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _7720, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7686 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_7454), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7686 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7686 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7686 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                mem[_7686 + (4 * ceil32(return_data.size)) + 321] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7686 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7686 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7686 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7686 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7686 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7686 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7686 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7686 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7686 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7686 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                            else:
                                if not mem[_7464 + 12 len 20]:
                                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                _7687 = mem[64]
                                mem[mem[64] + 32] = address(mem[_7464])
                                mem[mem[64] + 52] = address(_7454)
                                _7722 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _7724 = sha3(mem[_7722 + 32 len mem[_7722]])
                                if not uint32(ext_code.size(sha3(0, 17269419903419772280, sha3(mem[_7722 + 32 len mem[_7722]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                    if 100000 * _7421 * _7413 * stor6 / 10^18 / _7421 <= 0:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7722 + 32 len mem[_7722]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7722 + 32 len mem[_7722]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7722 + 32 len mem[_7722]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7722 + 32 len mem[_7722]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7722 + 32 len mem[_7722]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        if ext_call.return_data[12 len 20] == address(_7454):
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7722 + 32 len mem[_7722]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args _7421 * _7413 * stor6 / 10^18 / _7421, _7421 * _7413 * stor6 / 10^18 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7722 + 32 len mem[_7722]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args _7421 * _7413 * stor6 / 10^18 / _7421, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                        else:
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7722 + 32 len mem[_7722]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, _7421 * _7413 * stor6 / 10^18 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7722 + 32 len mem[_7722]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                    else:
                                        require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                        staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                gas gas_remaining wei
                                               args address(_7454), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token0() with:
                                                gas gas_remaining wei
                                        mem[_7687 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_7687 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token1() with:
                                                gas gas_remaining wei
                                               args mem[_7687 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                        mem[_7687 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if ext_call.return_data[12 len 20] == address(_7454):
                                            mem[_7687 + (4 * ceil32(return_data.size)) + 321] = _7421 * _7413 * stor6 / 10^18 / _7421
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                mem[_7687 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                            else:
                                                mem[_7687 + (4 * ceil32(return_data.size)) + 353] = 0
                                        else:
                                            mem[_7687 + (4 * ceil32(return_data.size)) + 321] = 0
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                mem[_7687 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                            else:
                                                mem[_7687 + (4 * ceil32(return_data.size)) + 353] = 0
                                        mem[_7687 + (4 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_7687 + (4 * ceil32(return_data.size)) + 417] = 128
                                        mem[_7687 + (4 * ceil32(return_data.size)) + 449] = 96
                                        mem[_7687 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[_7687 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                else:
                                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7722 + 32 len mem[_7722]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7722 + 32 len mem[_7722]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                    if address(_7454) == address(_7454):
                                        if 100000 * _7421 * _7413 * stor6 / 10^18 / _7421 <= 985 * ext_call.return_data[18 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7722 + 32 len mem[_7722]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7722 + 32 len mem[_7722]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7687 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7687 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7724, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _7724, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7687 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_7687 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                mem[_7687 + (4 * ceil32(return_data.size)) + 321] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7687 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7687 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7687 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7687 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7687 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7687 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7687 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7687 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7687 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7724, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _7724, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7687 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_7454), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7687 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7687 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7687 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                mem[_7687 + (4 * ceil32(return_data.size)) + 321] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7687 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7687 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7687 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7687 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7687 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7687 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7687 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7687 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7687 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7687 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                    else:
                                        if 100000 * _7421 * _7413 * stor6 / 10^18 / _7421 <= 985 * ext_call.return_data[50 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7722 + 32 len mem[_7722]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7722 + 32 len mem[_7722]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7687 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7687 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7724, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _7724, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7687 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_7687 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                mem[_7687 + (4 * ceil32(return_data.size)) + 321] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7687 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7687 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7687 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7687 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7687 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7687 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7687 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7687 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7687 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7724, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _7724, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7687 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_7454), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7687 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7687 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7687 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                mem[_7687 + (4 * ceil32(return_data.size)) + 321] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7687 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7687 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7687 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7687 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7687 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7687 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7687 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7687 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7687 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7687 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                        else:
                            if not mem[_7464 + 12 len 20]:
                                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                            if address(_7454) == mem[_7464 + 12 len 20]:
                                revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                            if address(_7454) < mem[_7464 + 12 len 20]:
                                if not address(_7454):
                                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                _7688 = mem[64]
                                mem[mem[64] + 32] = address(_7454)
                                mem[mem[64] + 52] = address(_7473)
                                _7726 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _7728 = sha3(mem[_7726 + 32 len mem[_7726]])
                                if not uint32(ext_code.size(sha3(0, 17269419903419772280, sha3(mem[_7726 + 32 len mem[_7726]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                    if 100000 * _7421 * _7413 * stor6 / 10^18 / _7421 <= 0:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7726 + 32 len mem[_7726]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7726 + 32 len mem[_7726]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7726 + 32 len mem[_7726]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7726 + 32 len mem[_7726]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7726 + 32 len mem[_7726]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        if ext_call.return_data[12 len 20] == address(_7454):
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7726 + 32 len mem[_7726]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args _7421 * _7413 * stor6 / 10^18 / _7421, _7421 * _7413 * stor6 / 10^18 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7726 + 32 len mem[_7726]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args _7421 * _7413 * stor6 / 10^18 / _7421, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                        else:
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7726 + 32 len mem[_7726]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, _7421 * _7413 * stor6 / 10^18 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7726 + 32 len mem[_7726]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                    else:
                                        require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                        staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                gas gas_remaining wei
                                               args address(_7454), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token0() with:
                                                gas gas_remaining wei
                                        mem[_7688 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_7688 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token1() with:
                                                gas gas_remaining wei
                                               args mem[_7688 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                        mem[_7688 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if ext_call.return_data[12 len 20] == address(_7454):
                                            mem[_7688 + (4 * ceil32(return_data.size)) + 321] = _7421 * _7413 * stor6 / 10^18 / _7421
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                mem[_7688 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                            else:
                                                mem[_7688 + (4 * ceil32(return_data.size)) + 353] = 0
                                        else:
                                            mem[_7688 + (4 * ceil32(return_data.size)) + 321] = 0
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                mem[_7688 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                            else:
                                                mem[_7688 + (4 * ceil32(return_data.size)) + 353] = 0
                                        mem[_7688 + (4 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_7688 + (4 * ceil32(return_data.size)) + 417] = 128
                                        mem[_7688 + (4 * ceil32(return_data.size)) + 449] = 96
                                        mem[_7688 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[_7688 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                else:
                                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7726 + 32 len mem[_7726]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7726 + 32 len mem[_7726]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                    if address(_7454) == address(_7473):
                                        if 100000 * _7421 * _7413 * stor6 / 10^18 / _7421 <= 985 * ext_call.return_data[18 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7726 + 32 len mem[_7726]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7726 + 32 len mem[_7726]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7688 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7688 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7728, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _7728, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7688 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_7688 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                mem[_7688 + (4 * ceil32(return_data.size)) + 321] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7688 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7688 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7688 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7688 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7688 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7688 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7688 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7688 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7688 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7728, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _7728, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7688 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_7454), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7688 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7688 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7688 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                mem[_7688 + (4 * ceil32(return_data.size)) + 321] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7688 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7688 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7688 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7688 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7688 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7688 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7688 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7688 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7688 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7688 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                    else:
                                        if 100000 * _7421 * _7413 * stor6 / 10^18 / _7421 <= 985 * ext_call.return_data[50 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7726 + 32 len mem[_7726]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7726 + 32 len mem[_7726]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7688 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7688 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7728, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _7728, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7688 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_7688 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                mem[_7688 + (4 * ceil32(return_data.size)) + 321] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7688 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7688 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7688 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7688 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7688 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7688 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7688 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7688 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7688 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7728, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _7728, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7688 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_7454), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7688 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7688 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7688 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                mem[_7688 + (4 * ceil32(return_data.size)) + 321] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7688 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7688 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7688 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7688 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7688 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7688 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7688 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7688 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7688 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7688 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                            else:
                                if not mem[_7464 + 12 len 20]:
                                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                _7689 = mem[64]
                                mem[mem[64] + 32] = address(mem[_7464])
                                mem[mem[64] + 52] = address(_7454)
                                _7730 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _7732 = sha3(mem[_7730 + 32 len mem[_7730]])
                                if not uint32(ext_code.size(sha3(0, 17269419903419772280, sha3(mem[_7730 + 32 len mem[_7730]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                    if 100000 * _7421 * _7413 * stor6 / 10^18 / _7421 <= 0:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7730 + 32 len mem[_7730]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7730 + 32 len mem[_7730]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7730 + 32 len mem[_7730]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7730 + 32 len mem[_7730]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7730 + 32 len mem[_7730]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        if ext_call.return_data[12 len 20] == address(_7454):
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7730 + 32 len mem[_7730]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args _7421 * _7413 * stor6 / 10^18 / _7421, _7421 * _7413 * stor6 / 10^18 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7730 + 32 len mem[_7730]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args _7421 * _7413 * stor6 / 10^18 / _7421, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                        else:
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7730 + 32 len mem[_7730]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, _7421 * _7413 * stor6 / 10^18 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7730 + 32 len mem[_7730]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                    else:
                                        require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                        staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                gas gas_remaining wei
                                               args address(_7454), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token0() with:
                                                gas gas_remaining wei
                                        mem[_7689 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_7689 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token1() with:
                                                gas gas_remaining wei
                                               args mem[_7689 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                        mem[_7689 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if ext_call.return_data[12 len 20] == address(_7454):
                                            mem[_7689 + (4 * ceil32(return_data.size)) + 321] = _7421 * _7413 * stor6 / 10^18 / _7421
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                mem[_7689 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                            else:
                                                mem[_7689 + (4 * ceil32(return_data.size)) + 353] = 0
                                        else:
                                            mem[_7689 + (4 * ceil32(return_data.size)) + 321] = 0
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                mem[_7689 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                            else:
                                                mem[_7689 + (4 * ceil32(return_data.size)) + 353] = 0
                                        mem[_7689 + (4 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_7689 + (4 * ceil32(return_data.size)) + 417] = 128
                                        mem[_7689 + (4 * ceil32(return_data.size)) + 449] = 96
                                        mem[_7689 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[_7689 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                else:
                                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7730 + 32 len mem[_7730]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7730 + 32 len mem[_7730]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                    if address(_7454) == address(_7473):
                                        if 100000 * _7421 * _7413 * stor6 / 10^18 / _7421 <= 985 * ext_call.return_data[18 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7730 + 32 len mem[_7730]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7730 + 32 len mem[_7730]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7689 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7689 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7732, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _7732, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7689 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_7689 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                mem[_7689 + (4 * ceil32(return_data.size)) + 321] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7689 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7689 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7689 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7689 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7689 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7689 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7689 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7689 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7689 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7732, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _7732, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7689 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_7454), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7689 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7689 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7689 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                mem[_7689 + (4 * ceil32(return_data.size)) + 321] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7689 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7689 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7689 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7689 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7689 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7689 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7689 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7689 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7689 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7689 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                    else:
                                        if 100000 * _7421 * _7413 * stor6 / 10^18 / _7421 <= 985 * ext_call.return_data[50 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7730 + 32 len mem[_7730]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7730 + 32 len mem[_7730]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7689 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7689 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7732, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _7732, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7689 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_7689 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                mem[_7689 + (4 * ceil32(return_data.size)) + 321] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7689 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7689 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7689 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7689 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7689 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7689 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7689 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7689 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7689 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7732, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _7732, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7689 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_7454), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7689 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7689 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7689 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7454):
                                                mem[_7689 + (4 * ceil32(return_data.size)) + 321] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7689 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7689 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7689 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7454):
                                                    mem[_7689 + (4 * ceil32(return_data.size)) + 353] = _7421 * _7413 * stor6 / 10^18 / _7421
                                                else:
                                                    mem[_7689 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7689 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7689 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7689 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7689 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7689 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
        else:
            if arg5 == arg6:
                require ext_code.size(arg5)
                staticcall arg5.underlying() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7439 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7449 = mem[_7439]
                require mem[_7439] == mem[_7439 + 12 len 20]
                if mem[_7439 + 12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                if mem[_7439 + 12 len 20] >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                    mem[mem[64] + 52] = address(_7449)
                    _7509 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7509 + 32 len mem[_7509]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7509 + 32 len mem[_7509]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7509 + 32 len mem[_7509]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7509 + 32 len mem[_7509]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7509 + 32 len mem[_7509]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    if ext_call.return_data[12 len 20] == address(_7449):
                        if ext_call.return_data[12 len 20] == address(_7449):
                            call address(sha3(0, 17269419903419772280, sha3(mem[_7509 + 32 len mem[_7509]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 10^18 * _7417 / stor7 * _7425 / _7421, 10^18 * _7417 / stor7 * _7425 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(mem[_7509 + 32 len mem[_7509]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 10^18 * _7417 / stor7 * _7425 / _7421, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                    else:
                        if ext_call.return_data[12 len 20] == address(_7449):
                            call address(sha3(0, 17269419903419772280, sha3(mem[_7509 + 32 len mem[_7509]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 10^18 * _7417 / stor7 * _7425 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(mem[_7509 + 32 len mem[_7509]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                else:
                    if not mem[_7439 + 12 len 20]:
                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                    mem[mem[64] + 32] = address(mem[_7439])
                    mem[mem[64] + 52] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                    _7505 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7505 + 32 len mem[_7505]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7505 + 32 len mem[_7505]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7505 + 32 len mem[_7505]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7505 + 32 len mem[_7505]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7505 + 32 len mem[_7505]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    if ext_call.return_data[12 len 20] == address(_7449):
                        if ext_call.return_data[12 len 20] == address(_7449):
                            call address(sha3(0, 17269419903419772280, sha3(mem[_7505 + 32 len mem[_7505]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 10^18 * _7417 / stor7 * _7425 / _7421, 10^18 * _7417 / stor7 * _7425 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(mem[_7505 + 32 len mem[_7505]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 10^18 * _7417 / stor7 * _7425 / _7421, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                    else:
                        if ext_call.return_data[12 len 20] == address(_7449):
                            call address(sha3(0, 17269419903419772280, sha3(mem[_7505 + 32 len mem[_7505]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 10^18 * _7417 / stor7 * _7425 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(mem[_7505 + 32 len mem[_7505]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
            else:
                if 0x5c0401e81bc07ca70fad469b451682c0d747ef1c == arg6:
                    require ext_code.size(arg5)
                    staticcall arg5.underlying() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7445 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7453 = mem[_7445]
                    require mem[_7445] == mem[_7445 + 12 len 20]
                    if mem[_7445 + 12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                    if mem[_7445 + 12 len 20] >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                        mem[mem[64] + 52] = address(_7453)
                        _7530 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7530 + 32 len mem[_7530]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7530 + 32 len mem[_7530]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7530 + 32 len mem[_7530]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7530 + 32 len mem[_7530]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7530 + 32 len mem[_7530]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        if ext_call.return_data[12 len 20] == address(_7453):
                            if ext_call.return_data[12 len 20] == address(_7453):
                                call address(sha3(0, 17269419903419772280, sha3(mem[_7530 + 32 len mem[_7530]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 10^18 * _7417 / stor7 * _7425 / _7421, 10^18 * _7417 / stor7 * _7425 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(mem[_7530 + 32 len mem[_7530]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 10^18 * _7417 / stor7 * _7425 / _7421, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                        else:
                            if ext_call.return_data[12 len 20] == address(_7453):
                                call address(sha3(0, 17269419903419772280, sha3(mem[_7530 + 32 len mem[_7530]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 10^18 * _7417 / stor7 * _7425 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(mem[_7530 + 32 len mem[_7530]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                    else:
                        if not mem[_7445 + 12 len 20]:
                            revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 32] = address(mem[_7445])
                        mem[mem[64] + 52] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                        _7526 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7526 + 32 len mem[_7526]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7526 + 32 len mem[_7526]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7526 + 32 len mem[_7526]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7526 + 32 len mem[_7526]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7526 + 32 len mem[_7526]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        if ext_call.return_data[12 len 20] == address(_7453):
                            if ext_call.return_data[12 len 20] == address(_7453):
                                call address(sha3(0, 17269419903419772280, sha3(mem[_7526 + 32 len mem[_7526]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 10^18 * _7417 / stor7 * _7425 / _7421, 10^18 * _7417 / stor7 * _7425 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(mem[_7526 + 32 len mem[_7526]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 10^18 * _7417 / stor7 * _7425 / _7421, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                        else:
                            if ext_call.return_data[12 len 20] == address(_7453):
                                call address(sha3(0, 17269419903419772280, sha3(mem[_7526 + 32 len mem[_7526]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 10^18 * _7417 / stor7 * _7425 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(mem[_7526 + 32 len mem[_7526]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                else:
                    if 0x5c0401e81bc07ca70fad469b451682c0d747ef1c == arg5:
                        require ext_code.size(arg6)
                        staticcall arg6.underlying() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7451 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7457 = mem[_7451]
                        require mem[_7451] == mem[_7451 + 12 len 20]
                        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == mem[_7451 + 12 len 20]:
                            revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 < mem[_7451 + 12 len 20]:
                            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                            mem[mem[64] + 52] = address(_7457)
                            _7554 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7554 + 32 len mem[_7554]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7554 + 32 len mem[_7554]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7554 + 32 len mem[_7554]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7554 + 32 len mem[_7554]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7554 + 32 len mem[_7554]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_7554 + 32 len mem[_7554]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 10^18 * _7417 / stor7 * _7425 / _7421, 10^18 * _7417 / stor7 * _7425 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_7554 + 32 len mem[_7554]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 10^18 * _7417 / stor7 * _7425 / _7421, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                            else:
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_7554 + 32 len mem[_7554]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 10^18 * _7417 / stor7 * _7425 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_7554 + 32 len mem[_7554]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                        else:
                            if not mem[_7451 + 12 len 20]:
                                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                            mem[mem[64] + 32] = address(mem[_7451])
                            mem[mem[64] + 52] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                            _7558 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7558 + 32 len mem[_7558]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7558 + 32 len mem[_7558]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7558 + 32 len mem[_7558]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7558 + 32 len mem[_7558]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7558 + 32 len mem[_7558]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_7558 + 32 len mem[_7558]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 10^18 * _7417 / stor7 * _7425 / _7421, 10^18 * _7417 / stor7 * _7425 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_7558 + 32 len mem[_7558]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 10^18 * _7417 / stor7 * _7425 / _7421, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                            else:
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_7558 + 32 len mem[_7558]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 10^18 * _7417 / stor7 * _7425 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_7558 + 32 len mem[_7558]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                    else:
                        require ext_code.size(arg5)
                        staticcall arg5.underlying() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7450 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7456 = mem[_7450]
                        require mem[_7450] == mem[_7450 + 12 len 20]
                        require ext_code.size(arg6)
                        staticcall arg6.underlying() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7466 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7476 = mem[_7466]
                        require mem[_7466] == mem[_7466 + 12 len 20]
                        if address(_7456) == mem[_7466 + 12 len 20]:
                            revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                        if address(_7456) < mem[_7466 + 12 len 20]:
                            if not address(_7456):
                                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                            if address(_7456) == mem[_7466 + 12 len 20]:
                                revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                            if address(_7456) < mem[_7466 + 12 len 20]:
                                if not address(_7456):
                                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                _7690 = mem[64]
                                mem[mem[64] + 32] = address(_7456)
                                mem[mem[64] + 52] = address(_7476)
                                _7742 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _7744 = sha3(mem[_7742 + 32 len mem[_7742]])
                                if not uint32(ext_code.size(sha3(0, 17269419903419772280, sha3(mem[_7742 + 32 len mem[_7742]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                    if 100000 * 10^18 * _7417 / stor7 * _7425 / _7421 <= 0:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7742 + 32 len mem[_7742]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7742 + 32 len mem[_7742]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7742 + 32 len mem[_7742]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7742 + 32 len mem[_7742]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7742 + 32 len mem[_7742]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        if ext_call.return_data[12 len 20] == address(_7456):
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7742 + 32 len mem[_7742]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 10^18 * _7417 / stor7 * _7425 / _7421, 10^18 * _7417 / stor7 * _7425 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7742 + 32 len mem[_7742]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 10^18 * _7417 / stor7 * _7425 / _7421, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                        else:
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7742 + 32 len mem[_7742]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 10^18 * _7417 / stor7 * _7425 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7742 + 32 len mem[_7742]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                    else:
                                        require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                        staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                gas gas_remaining wei
                                               args address(_7456), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token0() with:
                                                gas gas_remaining wei
                                        mem[_7690 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_7690 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token1() with:
                                                gas gas_remaining wei
                                               args mem[_7690 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                        mem[_7690 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if ext_call.return_data[12 len 20] == address(_7456):
                                            mem[_7690 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _7417 / stor7 * _7425 / _7421
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                mem[_7690 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                            else:
                                                mem[_7690 + (4 * ceil32(return_data.size)) + 353] = 0
                                        else:
                                            mem[_7690 + (4 * ceil32(return_data.size)) + 321] = 0
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                mem[_7690 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                            else:
                                                mem[_7690 + (4 * ceil32(return_data.size)) + 353] = 0
                                        mem[_7690 + (4 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_7690 + (4 * ceil32(return_data.size)) + 417] = 128
                                        mem[_7690 + (4 * ceil32(return_data.size)) + 449] = 96
                                        mem[_7690 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[_7690 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                else:
                                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7742 + 32 len mem[_7742]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7742 + 32 len mem[_7742]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                    if address(_7456) == address(_7456):
                                        if 100000 * 10^18 * _7417 / stor7 * _7425 / _7421 <= 985 * ext_call.return_data[18 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7742 + 32 len mem[_7742]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7742 + 32 len mem[_7742]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7690 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7690 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7744, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _7744, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7690 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_7690 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                mem[_7690 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7690 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7690 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7690 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7690 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7690 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7690 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7690 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7690 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7690 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7744, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _7744, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7690 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_7456), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7690 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7690 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7690 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                mem[_7690 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7690 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7690 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7690 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7690 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7690 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7690 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7690 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7690 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7690 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7690 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                    else:
                                        if 100000 * 10^18 * _7417 / stor7 * _7425 / _7421 <= 985 * ext_call.return_data[50 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7742 + 32 len mem[_7742]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7742 + 32 len mem[_7742]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7690 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7690 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7744, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _7744, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7690 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_7690 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                mem[_7690 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7690 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7690 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7690 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7690 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7690 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7690 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7690 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7690 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7690 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7744, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _7744, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7690 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_7456), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7690 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7690 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7690 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                mem[_7690 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7690 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7690 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7690 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7690 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7690 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7690 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7690 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7690 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7690 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7690 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                            else:
                                if not mem[_7466 + 12 len 20]:
                                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                _7691 = mem[64]
                                mem[mem[64] + 32] = address(mem[_7466])
                                mem[mem[64] + 52] = address(_7456)
                                _7746 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _7748 = sha3(mem[_7746 + 32 len mem[_7746]])
                                if not uint32(ext_code.size(sha3(0, 17269419903419772280, sha3(mem[_7746 + 32 len mem[_7746]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                    if 100000 * 10^18 * _7417 / stor7 * _7425 / _7421 <= 0:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7746 + 32 len mem[_7746]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7746 + 32 len mem[_7746]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7746 + 32 len mem[_7746]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7746 + 32 len mem[_7746]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7746 + 32 len mem[_7746]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        if ext_call.return_data[12 len 20] == address(_7456):
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7746 + 32 len mem[_7746]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 10^18 * _7417 / stor7 * _7425 / _7421, 10^18 * _7417 / stor7 * _7425 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7746 + 32 len mem[_7746]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 10^18 * _7417 / stor7 * _7425 / _7421, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                        else:
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7746 + 32 len mem[_7746]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 10^18 * _7417 / stor7 * _7425 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7746 + 32 len mem[_7746]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                    else:
                                        require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                        staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                gas gas_remaining wei
                                               args address(_7456), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token0() with:
                                                gas gas_remaining wei
                                        mem[_7691 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_7691 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token1() with:
                                                gas gas_remaining wei
                                               args mem[_7691 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                        mem[_7691 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if ext_call.return_data[12 len 20] == address(_7456):
                                            mem[_7691 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _7417 / stor7 * _7425 / _7421
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                mem[_7691 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                            else:
                                                mem[_7691 + (4 * ceil32(return_data.size)) + 353] = 0
                                        else:
                                            mem[_7691 + (4 * ceil32(return_data.size)) + 321] = 0
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                mem[_7691 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                            else:
                                                mem[_7691 + (4 * ceil32(return_data.size)) + 353] = 0
                                        mem[_7691 + (4 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_7691 + (4 * ceil32(return_data.size)) + 417] = 128
                                        mem[_7691 + (4 * ceil32(return_data.size)) + 449] = 96
                                        mem[_7691 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[_7691 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                else:
                                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7746 + 32 len mem[_7746]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7746 + 32 len mem[_7746]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                    if address(_7456) == address(_7456):
                                        if 100000 * 10^18 * _7417 / stor7 * _7425 / _7421 <= 985 * ext_call.return_data[18 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7746 + 32 len mem[_7746]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7746 + 32 len mem[_7746]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7691 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7691 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7748, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _7748, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7691 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_7691 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                mem[_7691 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7691 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7691 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7691 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7691 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7691 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7691 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7691 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7691 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7691 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7748, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _7748, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7691 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_7456), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7691 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7691 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7691 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                mem[_7691 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7691 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7691 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7691 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7691 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7691 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7691 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7691 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7691 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7691 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7691 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                    else:
                                        if 100000 * 10^18 * _7417 / stor7 * _7425 / _7421 <= 985 * ext_call.return_data[50 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7746 + 32 len mem[_7746]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7746 + 32 len mem[_7746]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7691 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7691 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7748, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _7748, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7691 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_7691 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                mem[_7691 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7691 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7691 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7691 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7691 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7691 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7691 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7691 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7691 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7691 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7748, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _7748, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7691 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_7456), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7691 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7691 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7691 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                mem[_7691 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7691 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7691 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7691 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7691 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7691 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7691 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7691 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7691 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7691 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7691 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                        else:
                            if not mem[_7466 + 12 len 20]:
                                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                            if address(_7456) == mem[_7466 + 12 len 20]:
                                revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                            if address(_7456) < mem[_7466 + 12 len 20]:
                                if not address(_7456):
                                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                _7692 = mem[64]
                                mem[mem[64] + 32] = address(_7456)
                                mem[mem[64] + 52] = address(_7476)
                                _7750 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _7752 = sha3(mem[_7750 + 32 len mem[_7750]])
                                if not uint32(ext_code.size(sha3(0, 17269419903419772280, sha3(mem[_7750 + 32 len mem[_7750]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                    if 100000 * 10^18 * _7417 / stor7 * _7425 / _7421 <= 0:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7750 + 32 len mem[_7750]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7750 + 32 len mem[_7750]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7750 + 32 len mem[_7750]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7750 + 32 len mem[_7750]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7750 + 32 len mem[_7750]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        if ext_call.return_data[12 len 20] == address(_7456):
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7750 + 32 len mem[_7750]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 10^18 * _7417 / stor7 * _7425 / _7421, 10^18 * _7417 / stor7 * _7425 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7750 + 32 len mem[_7750]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 10^18 * _7417 / stor7 * _7425 / _7421, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                        else:
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7750 + 32 len mem[_7750]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 10^18 * _7417 / stor7 * _7425 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7750 + 32 len mem[_7750]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                    else:
                                        require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                        staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                gas gas_remaining wei
                                               args address(_7456), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token0() with:
                                                gas gas_remaining wei
                                        mem[_7692 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_7692 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token1() with:
                                                gas gas_remaining wei
                                               args mem[_7692 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                        mem[_7692 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if ext_call.return_data[12 len 20] == address(_7456):
                                            mem[_7692 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _7417 / stor7 * _7425 / _7421
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                mem[_7692 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                            else:
                                                mem[_7692 + (4 * ceil32(return_data.size)) + 353] = 0
                                        else:
                                            mem[_7692 + (4 * ceil32(return_data.size)) + 321] = 0
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                mem[_7692 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                            else:
                                                mem[_7692 + (4 * ceil32(return_data.size)) + 353] = 0
                                        mem[_7692 + (4 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_7692 + (4 * ceil32(return_data.size)) + 417] = 128
                                        mem[_7692 + (4 * ceil32(return_data.size)) + 449] = 96
                                        mem[_7692 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[_7692 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                else:
                                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7750 + 32 len mem[_7750]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7750 + 32 len mem[_7750]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                    if address(_7456) == address(_7476):
                                        if 100000 * 10^18 * _7417 / stor7 * _7425 / _7421 <= 985 * ext_call.return_data[18 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7750 + 32 len mem[_7750]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7750 + 32 len mem[_7750]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7692 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7692 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7752, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _7752, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7692 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_7692 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                mem[_7692 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7692 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7692 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7692 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7692 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7692 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7692 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7692 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7692 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7692 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7752, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _7752, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7692 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_7456), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7692 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7692 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7692 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                mem[_7692 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7692 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7692 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7692 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7692 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7692 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7692 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7692 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7692 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7692 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7692 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                    else:
                                        if 100000 * 10^18 * _7417 / stor7 * _7425 / _7421 <= 985 * ext_call.return_data[50 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7750 + 32 len mem[_7750]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7750 + 32 len mem[_7750]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7692 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7692 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7752, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _7752, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7692 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_7692 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                mem[_7692 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7692 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7692 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7692 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7692 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7692 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7692 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7692 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7692 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7692 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7752, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _7752, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7692 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_7456), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7692 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7692 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7692 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                mem[_7692 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7692 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7692 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7692 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7692 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7692 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7692 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7692 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7692 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7692 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7692 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                            else:
                                if not mem[_7466 + 12 len 20]:
                                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                _7693 = mem[64]
                                mem[mem[64] + 32] = address(mem[_7466])
                                mem[mem[64] + 52] = address(_7456)
                                _7754 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _7756 = sha3(mem[_7754 + 32 len mem[_7754]])
                                if not uint32(ext_code.size(sha3(0, 17269419903419772280, sha3(mem[_7754 + 32 len mem[_7754]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                    if 100000 * 10^18 * _7417 / stor7 * _7425 / _7421 <= 0:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7754 + 32 len mem[_7754]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7754 + 32 len mem[_7754]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7754 + 32 len mem[_7754]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7754 + 32 len mem[_7754]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7754 + 32 len mem[_7754]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        if ext_call.return_data[12 len 20] == address(_7456):
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7754 + 32 len mem[_7754]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 10^18 * _7417 / stor7 * _7425 / _7421, 10^18 * _7417 / stor7 * _7425 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7754 + 32 len mem[_7754]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 10^18 * _7417 / stor7 * _7425 / _7421, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                        else:
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7754 + 32 len mem[_7754]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 10^18 * _7417 / stor7 * _7425 / _7421, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_7754 + 32 len mem[_7754]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, address(this.address), 128, 96, address(arg4), address(arg5), arg6
                                    else:
                                        require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                        staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                gas gas_remaining wei
                                               args address(_7456), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token0() with:
                                                gas gas_remaining wei
                                        mem[_7693 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_7693 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token1() with:
                                                gas gas_remaining wei
                                               args mem[_7693 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                        mem[_7693 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if ext_call.return_data[12 len 20] == address(_7456):
                                            mem[_7693 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _7417 / stor7 * _7425 / _7421
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                mem[_7693 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                            else:
                                                mem[_7693 + (4 * ceil32(return_data.size)) + 353] = 0
                                        else:
                                            mem[_7693 + (4 * ceil32(return_data.size)) + 321] = 0
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                mem[_7693 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                            else:
                                                mem[_7693 + (4 * ceil32(return_data.size)) + 353] = 0
                                        mem[_7693 + (4 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_7693 + (4 * ceil32(return_data.size)) + 417] = 128
                                        mem[_7693 + (4 * ceil32(return_data.size)) + 449] = 96
                                        mem[_7693 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[_7693 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                else:
                                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7754 + 32 len mem[_7754]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7754 + 32 len mem[_7754]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                    if address(_7456) == address(_7476):
                                        if 100000 * 10^18 * _7417 / stor7 * _7425 / _7421 <= 985 * ext_call.return_data[18 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7754 + 32 len mem[_7754]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7754 + 32 len mem[_7754]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7693 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7693 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7756, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _7756, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7693 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_7693 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                mem[_7693 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7693 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7693 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7693 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7693 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7693 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7693 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7693 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7693 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7693 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7756, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _7756, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7693 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_7456), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7693 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7693 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7693 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                mem[_7693 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7693 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7693 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7693 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7693 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7693 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7693 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7693 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7693 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7693 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7693 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                    else:
                                        if 100000 * 10^18 * _7417 / stor7 * _7425 / _7421 <= 985 * ext_call.return_data[50 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_7754 + 32 len mem[_7754]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_7754 + 32 len mem[_7754]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7693 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7693 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7756, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _7756, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7693 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_7693 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                mem[_7693 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7693 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7693 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7693 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7693 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7693 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7693 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7693 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7693 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7693 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _7756, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _7756, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7693 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_7456), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_7693 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_7693 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_7693 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_7456):
                                                mem[_7693 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7693 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7693 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_7693 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_7456):
                                                    mem[_7693 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _7417 / stor7 * _7425 / _7421
                                                else:
                                                    mem[_7693 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_7693 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_7693 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_7693 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_7693 + (4 * ceil32(return_data.size)) + 481 len 96] = address(arg4), address(arg5), arg6
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_7693 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function liquidateSN(address[] arg1, address[] arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        require 2 * idx < arg2.length
        require cd[((64 * idx) + arg2 + 36)] == address(cd[((64 * idx) + arg2 + 36)])
        require (2 * idx) + 1 < arg2.length
        require cd[((32 * (2 * idx) + 1) + arg2 + 36)] == address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
        require ext_code.size(comptrollerAddress)
        staticcall comptrollerAddress.getAccountLiquidity(address rg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2469 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        if not mem[_2469 + 32]:
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(cd[((64 * idx) + arg2 + 36)]))
            call address(cd[((64 * idx) + arg2 + 36)]).borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2475 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2476 = mem[_2475]
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(cd[((32 * (2 * idx) + 1) + arg2 + 36)]))
            call address(cd[((32 * (2 * idx) + 1) + arg2 + 36)]).balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2479 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2480 = mem[_2479]
            require stor7
            mem[mem[64] + 4] = address(cd[((64 * idx) + arg2 + 36)])
            require ext_code.size(priceOracleAddress)
            staticcall priceOracleAddress.getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[((64 * idx) + arg2 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2483 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2484 = mem[_2483]
            mem[mem[64] + 4] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
            require ext_code.size(priceOracleAddress)
            staticcall priceOracleAddress.getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2487 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2488 = mem[_2487]
            require _2484
            if _2484 * _2476 * stor6 / 10^18 < 10^18 * _2480 / stor7 * mem[_2487]:
                if address(cd[((64 * idx) + arg2 + 36)]) == address(cd[((32 * (2 * idx) + 1) + arg2 + 36)]):
                    require ext_code.size(address(cd[((64 * idx) + arg2 + 36)]))
                    staticcall address(cd[((64 * idx) + arg2 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2497 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2509 = mem[_2497]
                    require mem[_2497] == mem[_2497 + 12 len 20]
                    if mem[_2497 + 12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                    if mem[_2497 + 12 len 20] >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        _2542 = mem[64]
                        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                        mem[mem[64] + 52] = address(_2509)
                        _2561 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _2563 = sha3(mem[_2561 + 32 len mem[_2561]])
                        mem[_2542 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2542 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                        mem[_2542 + 125] = _2563
                        mem[_2542 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                        mem[_2542 + 72] = 85
                        mem[_2542 + 221] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_2542 + 253] = address(cd[((64 * idx) + arg2 + 36)])
                        mem[_2542 + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                        mem[_2542 + 189] = 96
                        require ext_code.size(address(sha3(0, 17269419903419772280, _2563, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, _2563, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                gas gas_remaining wei
                        mem[_2542 + 317] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17269419903419772280, _2563, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, _2563, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                gas gas_remaining wei
                        mem[_2542 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _2542 + (2 * ceil32(return_data.size)) + 317
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_2542 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if ext_call.return_data[12 len 20] == address(_2509):
                            mem[_2542 + (2 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                            if ext_call.return_data[12 len 20] == address(_2509):
                                mem[_2542 + (2 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                mem[_2542 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_2542 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_2542 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[s + _2542 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2542 + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _2563, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _2563, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2484 * _2476 * stor6 / 10^18 / _2484, _2484 * _2476 * stor6 / 10^18 / _2484, address(this.address), 128, 96, mem[_2542 + (2 * ceil32(return_data.size)) + 481 len 96]
                            else:
                                mem[_2542 + (2 * ceil32(return_data.size)) + 353] = 0
                                mem[_2542 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_2542 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_2542 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[s + _2542 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2542 + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _2563, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _2563, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2484 * _2476 * stor6 / 10^18 / _2484, 0, address(this.address), 128, 96, mem[_2542 + (2 * ceil32(return_data.size)) + 481 len 96]
                        else:
                            mem[_2542 + (2 * ceil32(return_data.size)) + 321] = 0
                            if ext_call.return_data[12 len 20] == address(_2509):
                                mem[_2542 + (2 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                mem[_2542 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_2542 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_2542 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[s + _2542 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2542 + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _2563, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _2563, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _2484 * _2476 * stor6 / 10^18 / _2484, address(this.address), 128, 96, mem[_2542 + (2 * ceil32(return_data.size)) + 481 len 96]
                            else:
                                mem[_2542 + (2 * ceil32(return_data.size)) + 353] = 0
                                mem[_2542 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_2542 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_2542 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[s + _2542 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2542 + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _2563, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _2563, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 96, mem[_2542 + (2 * ceil32(return_data.size)) + 481 len 96]
                    else:
                        if not mem[_2497 + 12 len 20]:
                            revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                        _2541 = mem[64]
                        mem[mem[64] + 32] = address(mem[_2497])
                        mem[mem[64] + 52] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                        _2557 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _2559 = sha3(mem[_2557 + 32 len mem[_2557]])
                        mem[_2541 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2541 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                        mem[_2541 + 125] = _2559
                        mem[_2541 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                        mem[_2541 + 72] = 85
                        mem[_2541 + 221] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_2541 + 253] = address(cd[((64 * idx) + arg2 + 36)])
                        mem[_2541 + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                        mem[_2541 + 189] = 96
                        require ext_code.size(address(sha3(0, 17269419903419772280, _2559, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, _2559, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                gas gas_remaining wei
                        mem[_2541 + 317] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17269419903419772280, _2559, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, _2559, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                gas gas_remaining wei
                        mem[_2541 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _2541 + (2 * ceil32(return_data.size)) + 317
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_2541 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if ext_call.return_data[12 len 20] == address(_2509):
                            mem[_2541 + (2 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                            if ext_call.return_data[12 len 20] == address(_2509):
                                mem[_2541 + (2 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                mem[_2541 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_2541 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_2541 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[s + _2541 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2541 + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _2559, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _2559, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2484 * _2476 * stor6 / 10^18 / _2484, _2484 * _2476 * stor6 / 10^18 / _2484, address(this.address), 128, 96, mem[_2541 + (2 * ceil32(return_data.size)) + 481 len 96]
                            else:
                                mem[_2541 + (2 * ceil32(return_data.size)) + 353] = 0
                                mem[_2541 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_2541 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_2541 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[s + _2541 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2541 + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _2559, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _2559, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2484 * _2476 * stor6 / 10^18 / _2484, 0, address(this.address), 128, 96, mem[_2541 + (2 * ceil32(return_data.size)) + 481 len 96]
                        else:
                            mem[_2541 + (2 * ceil32(return_data.size)) + 321] = 0
                            if ext_call.return_data[12 len 20] == address(_2509):
                                mem[_2541 + (2 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                mem[_2541 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_2541 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_2541 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[s + _2541 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2541 + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _2559, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _2559, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _2484 * _2476 * stor6 / 10^18 / _2484, address(this.address), 128, 96, mem[_2541 + (2 * ceil32(return_data.size)) + 481 len 96]
                            else:
                                mem[_2541 + (2 * ceil32(return_data.size)) + 353] = 0
                                mem[_2541 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_2541 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_2541 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[s + _2541 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2541 + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _2559, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _2559, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 96, mem[_2541 + (2 * ceil32(return_data.size)) + 481 len 96]
                else:
                    if 0x5c0401e81bc07ca70fad469b451682c0d747ef1c == address(cd[((32 * (2 * idx) + 1) + arg2 + 36)]):
                        require ext_code.size(address(cd[((64 * idx) + arg2 + 36)]))
                        staticcall address(cd[((64 * idx) + arg2 + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2507 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2515 = mem[_2507]
                        require mem[_2507] == mem[_2507 + 12 len 20]
                        if mem[_2507 + 12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                            revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                        if mem[_2507 + 12 len 20] >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                            _2552 = mem[64]
                            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                            mem[mem[64] + 52] = address(_2515)
                            _2584 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _2586 = sha3(mem[_2584 + 32 len mem[_2584]])
                            mem[_2552 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_2552 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                            mem[_2552 + 125] = _2586
                            mem[_2552 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                            mem[_2552 + 72] = 85
                            mem[_2552 + 221] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_2552 + 253] = address(cd[((64 * idx) + arg2 + 36)])
                            mem[_2552 + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                            mem[_2552 + 189] = 96
                            require ext_code.size(address(sha3(0, 17269419903419772280, _2586, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _2586, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                    gas gas_remaining wei
                            mem[_2552 + 317] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(sha3(0, 17269419903419772280, _2586, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _2586, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                    gas gas_remaining wei
                            mem[_2552 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _2552 + (2 * ceil32(return_data.size)) + 317
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_2552 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if ext_call.return_data[12 len 20] == address(_2515):
                                mem[_2552 + (2 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                                if ext_call.return_data[12 len 20] == address(_2515):
                                    mem[_2552 + (2 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                    mem[_2552 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_2552 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_2552 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[s + _2552 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2552 + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2586, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _2586, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _2484 * _2476 * stor6 / 10^18 / _2484, _2484 * _2476 * stor6 / 10^18 / _2484, address(this.address), 128, 96, mem[_2552 + (2 * ceil32(return_data.size)) + 481 len 96]
                                else:
                                    mem[_2552 + (2 * ceil32(return_data.size)) + 353] = 0
                                    mem[_2552 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_2552 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_2552 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[s + _2552 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2552 + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2586, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _2586, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _2484 * _2476 * stor6 / 10^18 / _2484, 0, address(this.address), 128, 96, mem[_2552 + (2 * ceil32(return_data.size)) + 481 len 96]
                            else:
                                mem[_2552 + (2 * ceil32(return_data.size)) + 321] = 0
                                if ext_call.return_data[12 len 20] == address(_2515):
                                    mem[_2552 + (2 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                    mem[_2552 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_2552 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_2552 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[s + _2552 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2552 + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2586, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _2586, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _2484 * _2476 * stor6 / 10^18 / _2484, address(this.address), 128, 96, mem[_2552 + (2 * ceil32(return_data.size)) + 481 len 96]
                                else:
                                    mem[_2552 + (2 * ceil32(return_data.size)) + 353] = 0
                                    mem[_2552 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_2552 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_2552 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[s + _2552 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2552 + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2586, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _2586, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, mem[_2552 + (2 * ceil32(return_data.size)) + 481 len 96]
                        else:
                            if not mem[_2507 + 12 len 20]:
                                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                            _2551 = mem[64]
                            mem[mem[64] + 32] = address(mem[_2507])
                            mem[mem[64] + 52] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                            _2580 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _2582 = sha3(mem[_2580 + 32 len mem[_2580]])
                            mem[_2551 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_2551 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                            mem[_2551 + 125] = _2582
                            mem[_2551 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                            mem[_2551 + 72] = 85
                            mem[_2551 + 221] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_2551 + 253] = address(cd[((64 * idx) + arg2 + 36)])
                            mem[_2551 + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                            mem[_2551 + 189] = 96
                            require ext_code.size(address(sha3(0, 17269419903419772280, _2582, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _2582, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                    gas gas_remaining wei
                            mem[_2551 + 317] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(sha3(0, 17269419903419772280, _2582, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _2582, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                    gas gas_remaining wei
                            mem[_2551 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _2551 + (2 * ceil32(return_data.size)) + 317
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_2551 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if ext_call.return_data[12 len 20] == address(_2515):
                                mem[_2551 + (2 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                                if ext_call.return_data[12 len 20] == address(_2515):
                                    mem[_2551 + (2 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                    mem[_2551 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_2551 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_2551 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[s + _2551 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2551 + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2582, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _2582, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _2484 * _2476 * stor6 / 10^18 / _2484, _2484 * _2476 * stor6 / 10^18 / _2484, address(this.address), 128, 96, mem[_2551 + (2 * ceil32(return_data.size)) + 481 len 96]
                                else:
                                    mem[_2551 + (2 * ceil32(return_data.size)) + 353] = 0
                                    mem[_2551 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_2551 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_2551 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[s + _2551 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2551 + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2582, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _2582, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _2484 * _2476 * stor6 / 10^18 / _2484, 0, address(this.address), 128, 96, mem[_2551 + (2 * ceil32(return_data.size)) + 481 len 96]
                            else:
                                mem[_2551 + (2 * ceil32(return_data.size)) + 321] = 0
                                if ext_call.return_data[12 len 20] == address(_2515):
                                    mem[_2551 + (2 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                    mem[_2551 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_2551 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_2551 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[s + _2551 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2551 + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2582, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _2582, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _2484 * _2476 * stor6 / 10^18 / _2484, address(this.address), 128, 96, mem[_2551 + (2 * ceil32(return_data.size)) + 481 len 96]
                                else:
                                    mem[_2551 + (2 * ceil32(return_data.size)) + 353] = 0
                                    mem[_2551 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_2551 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_2551 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[s + _2551 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2551 + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2582, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _2582, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, mem[_2551 + (2 * ceil32(return_data.size)) + 481 len 96]
                    else:
                        if 0x5c0401e81bc07ca70fad469b451682c0d747ef1c == address(cd[((64 * idx) + arg2 + 36)]):
                            require ext_code.size(address(cd[((32 * (2 * idx) + 1) + arg2 + 36)]))
                            staticcall address(cd[((32 * (2 * idx) + 1) + arg2 + 36)]).underlying() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2511 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2518 = mem[_2511]
                            require mem[_2511] == mem[_2511 + 12 len 20]
                            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == mem[_2511 + 12 len 20]:
                                revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 < mem[_2511 + 12 len 20]:
                                _2565 = mem[64]
                                mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                                mem[mem[64] + 52] = address(_2518)
                                _2603 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2605 = sha3(mem[_2603 + 32 len mem[_2603]])
                                mem[_2565 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2565 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                mem[_2565 + 125] = _2605
                                mem[_2565 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                mem[_2565 + 72] = 85
                                mem[_2565 + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                mem[_2565 + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                mem[_2565 + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                mem[_2565 + 189] = 96
                                require ext_code.size(address(sha3(0, 17269419903419772280, _2605, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                staticcall address(sha3(0, 17269419903419772280, _2605, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                        gas gas_remaining wei
                                mem[_2565 + 317] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(sha3(0, 17269419903419772280, _2605, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                staticcall address(sha3(0, 17269419903419772280, _2605, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                        gas gas_remaining wei
                                mem[_2565 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _2565 + (2 * ceil32(return_data.size)) + 317
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[_2565 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    mem[_2565 + (2 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                                    if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                        mem[_2565 + (2 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                        mem[_2565 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_2565 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_2565 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[s + _2565 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2565 + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _2605, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _2605, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2484 * _2476 * stor6 / 10^18 / _2484, _2484 * _2476 * stor6 / 10^18 / _2484, address(this.address), 128, 96, mem[_2565 + (2 * ceil32(return_data.size)) + 481 len 96]
                                    else:
                                        mem[_2565 + (2 * ceil32(return_data.size)) + 353] = 0
                                        mem[_2565 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_2565 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_2565 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[s + _2565 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2565 + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _2605, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _2605, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2484 * _2476 * stor6 / 10^18 / _2484, 0, address(this.address), 128, 96, mem[_2565 + (2 * ceil32(return_data.size)) + 481 len 96]
                                else:
                                    mem[_2565 + (2 * ceil32(return_data.size)) + 321] = 0
                                    if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                        mem[_2565 + (2 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                        mem[_2565 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_2565 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_2565 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[s + _2565 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2565 + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _2605, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _2605, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2484 * _2476 * stor6 / 10^18 / _2484, address(this.address), 128, 96, mem[_2565 + (2 * ceil32(return_data.size)) + 481 len 96]
                                    else:
                                        mem[_2565 + (2 * ceil32(return_data.size)) + 353] = 0
                                        mem[_2565 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_2565 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_2565 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[s + _2565 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2565 + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _2605, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _2605, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 96, mem[_2565 + (2 * ceil32(return_data.size)) + 481 len 96]
                            else:
                                if not mem[_2511 + 12 len 20]:
                                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                _2566 = mem[64]
                                mem[mem[64] + 32] = address(mem[_2511])
                                mem[mem[64] + 52] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                                _2607 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2609 = sha3(mem[_2607 + 32 len mem[_2607]])
                                mem[_2566 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2566 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                mem[_2566 + 125] = _2609
                                mem[_2566 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                mem[_2566 + 72] = 85
                                mem[_2566 + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                mem[_2566 + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                mem[_2566 + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                mem[_2566 + 189] = 96
                                require ext_code.size(address(sha3(0, 17269419903419772280, _2609, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                staticcall address(sha3(0, 17269419903419772280, _2609, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                        gas gas_remaining wei
                                mem[_2566 + 317] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(sha3(0, 17269419903419772280, _2609, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                staticcall address(sha3(0, 17269419903419772280, _2609, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                        gas gas_remaining wei
                                mem[_2566 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _2566 + (2 * ceil32(return_data.size)) + 317
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[_2566 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    mem[_2566 + (2 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                                    if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                        mem[_2566 + (2 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                        mem[_2566 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_2566 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_2566 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[s + _2566 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2566 + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _2609, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _2609, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2484 * _2476 * stor6 / 10^18 / _2484, _2484 * _2476 * stor6 / 10^18 / _2484, address(this.address), 128, 96, mem[_2566 + (2 * ceil32(return_data.size)) + 481 len 96]
                                    else:
                                        mem[_2566 + (2 * ceil32(return_data.size)) + 353] = 0
                                        mem[_2566 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_2566 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_2566 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[s + _2566 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2566 + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _2609, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _2609, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2484 * _2476 * stor6 / 10^18 / _2484, 0, address(this.address), 128, 96, mem[_2566 + (2 * ceil32(return_data.size)) + 481 len 96]
                                else:
                                    mem[_2566 + (2 * ceil32(return_data.size)) + 321] = 0
                                    if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                        mem[_2566 + (2 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                        mem[_2566 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_2566 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_2566 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[s + _2566 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2566 + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _2609, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _2609, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2484 * _2476 * stor6 / 10^18 / _2484, address(this.address), 128, 96, mem[_2566 + (2 * ceil32(return_data.size)) + 481 len 96]
                                    else:
                                        mem[_2566 + (2 * ceil32(return_data.size)) + 353] = 0
                                        mem[_2566 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_2566 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_2566 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[s + _2566 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2566 + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _2609, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _2609, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 96, mem[_2566 + (2 * ceil32(return_data.size)) + 481 len 96]
                        else:
                            require ext_code.size(address(cd[((64 * idx) + arg2 + 36)]))
                            staticcall address(cd[((64 * idx) + arg2 + 36)]).underlying() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2510 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2517 = mem[_2510]
                            require mem[_2510] == mem[_2510 + 12 len 20]
                            require ext_code.size(address(cd[((32 * (2 * idx) + 1) + arg2 + 36)]))
                            staticcall address(cd[((32 * (2 * idx) + 1) + arg2 + 36)]).underlying() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2527 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2536 = mem[_2527]
                            require mem[_2527] == mem[_2527 + 12 len 20]
                            if address(_2517) == mem[_2527 + 12 len 20]:
                                revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                            if address(_2517) < mem[_2527 + 12 len 20]:
                                if not address(_2517):
                                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                if address(_2517) == mem[_2527 + 12 len 20]:
                                    revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                                if address(_2517) < mem[_2527 + 12 len 20]:
                                    if not address(_2517):
                                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                    _2749 = mem[64]
                                    mem[mem[64] + 32] = address(_2517)
                                    mem[mem[64] + 52] = address(_2536)
                                    _2781 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _2783 = sha3(mem[_2781 + 32 len mem[_2781]])
                                    mem[_2749 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2749 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_2749 + 125] = _2783
                                    mem[_2749 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_2749 + 72] = 85
                                    if not uint32(ext_code.size(sha3(0, 17269419903419772280, _2783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                        if 100000 * _2484 * _2476 * stor6 / 10^18 / _2484 <= 0:
                                            mem[_2749 + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                            mem[_2749 + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                            mem[_2749 + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                            mem[_2749 + 189] = 96
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _2783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _2783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_2749 + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _2783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _2783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                            mem[_2749 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _2749 + (2 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2749 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_2517):
                                                mem[_2749 + (2 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2749 + (2 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    mem[_2749 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2749 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2749 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2749 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2749 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args _2484 * _2476 * stor6 / 10^18 / _2484, _2484 * _2476 * stor6 / 10^18 / _2484, address(this.address), 128, 96, mem[_2749 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_2749 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_2749 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2749 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2749 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2749 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2749 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args _2484 * _2476 * stor6 / 10^18 / _2484, 0, address(this.address), 128, 96, mem[_2749 + (2 * ceil32(return_data.size)) + 481 len 96]
                                            else:
                                                mem[_2749 + (2 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2749 + (2 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    mem[_2749 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2749 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2749 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2749 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2749 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, _2484 * _2476 * stor6 / 10^18 / _2484, address(this.address), 128, 96, mem[_2749 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_2749 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_2749 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2749 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2749 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2749 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2749 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, address(this.address), 128, 96, mem[_2749 + (2 * ceil32(return_data.size)) + 481 len 96]
                                        else:
                                            mem[_2749 + 193] = address(_2517)
                                            mem[_2749 + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_2517), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            mem[_2749 + 189] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2749 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                            mem[_2749 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                            mem[_2749 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                            mem[_2749 + ceil32(return_data.size) + 189] = 96
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_2749 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2749 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_2749 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_2749 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _2749 + (4 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2749 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_2517):
                                                mem[_2749 + (4 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2749 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                else:
                                                    mem[_2749 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_2749 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2749 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                else:
                                                    mem[_2749 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_2749 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_2749 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_2749 + (4 * ceil32(return_data.size)) + 449] = 96
                                            s = 0
                                            while s < 96:
                                                mem[s + _2749 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2749 + ceil32(return_data.size) + 221]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_2749 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                    else:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _2783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, _2783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2749 + 189 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                        if address(_2517) == address(_2517):
                                            if 100000 * _2484 * _2476 * stor6 / 10^18 / _2484 <= 985 * ext_call.return_data[18 len 14]:
                                                mem[_2749 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2749 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2749 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2749 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2749 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2749 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2749 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_2749 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2749 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2749 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2749 + (4 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2749 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2749 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2749 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2749 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2749 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2749 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2749 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2749 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[s + _2749 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2749 + ceil32(return_data.size) + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _2783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2749 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_2749 + ceil32(return_data.size) + 193] = address(_2517)
                                                mem[_2749 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_2517), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_2749 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2749 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2749 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2749 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2749 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2749 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2749 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2749 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2749 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2749 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2749 + (4 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2749 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2749 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2749 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2749 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2749 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2749 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2749 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2749 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_2749 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[s + _2749 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2749 + (2 * ceil32(return_data.size)) + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2749 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                        else:
                                            if 100000 * _2484 * _2476 * stor6 / 10^18 / _2484 <= 985 * ext_call.return_data[50 len 14]:
                                                mem[_2749 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2749 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2749 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2749 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2749 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2749 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2749 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_2749 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2749 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2749 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2749 + (4 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2749 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2749 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2749 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2749 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2749 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2749 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2749 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2749 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[s + _2749 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2749 + ceil32(return_data.size) + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _2783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2749 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_2749 + ceil32(return_data.size) + 193] = address(_2517)
                                                mem[_2749 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_2517), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_2749 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2749 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2749 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2749 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2749 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2749 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2749 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2749 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2749 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2749 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2749 + (4 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2749 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2749 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2749 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2749 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2749 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2749 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2749 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2749 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_2749 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[s + _2749 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2749 + (2 * ceil32(return_data.size)) + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2749 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                else:
                                    if not mem[_2527 + 12 len 20]:
                                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                    _2750 = mem[64]
                                    mem[mem[64] + 32] = address(mem[_2527])
                                    mem[mem[64] + 52] = address(_2517)
                                    _2785 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _2787 = sha3(mem[_2785 + 32 len mem[_2785]])
                                    mem[_2750 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2750 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_2750 + 125] = _2787
                                    mem[_2750 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_2750 + 72] = 85
                                    if not uint32(ext_code.size(sha3(0, 17269419903419772280, _2787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                        if 100000 * _2484 * _2476 * stor6 / 10^18 / _2484 <= 0:
                                            mem[_2750 + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                            mem[_2750 + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                            mem[_2750 + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                            mem[_2750 + 189] = 96
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _2787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _2787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_2750 + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _2787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _2787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                            mem[_2750 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _2750 + (2 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2750 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_2517):
                                                mem[_2750 + (2 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2750 + (2 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    mem[_2750 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2750 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2750 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2750 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2750 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args _2484 * _2476 * stor6 / 10^18 / _2484, _2484 * _2476 * stor6 / 10^18 / _2484, address(this.address), 128, 96, mem[_2750 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_2750 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_2750 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2750 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2750 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2750 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2750 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args _2484 * _2476 * stor6 / 10^18 / _2484, 0, address(this.address), 128, 96, mem[_2750 + (2 * ceil32(return_data.size)) + 481 len 96]
                                            else:
                                                mem[_2750 + (2 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2750 + (2 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    mem[_2750 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2750 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2750 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2750 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2750 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, _2484 * _2476 * stor6 / 10^18 / _2484, address(this.address), 128, 96, mem[_2750 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_2750 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_2750 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2750 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2750 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2750 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2750 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, address(this.address), 128, 96, mem[_2750 + (2 * ceil32(return_data.size)) + 481 len 96]
                                        else:
                                            mem[_2750 + 193] = address(_2517)
                                            mem[_2750 + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_2517), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            mem[_2750 + 189] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2750 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                            mem[_2750 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                            mem[_2750 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                            mem[_2750 + ceil32(return_data.size) + 189] = 96
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_2750 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2750 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_2750 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_2750 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _2750 + (4 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2750 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_2517):
                                                mem[_2750 + (4 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2750 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                else:
                                                    mem[_2750 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_2750 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2750 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                else:
                                                    mem[_2750 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_2750 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_2750 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_2750 + (4 * ceil32(return_data.size)) + 449] = 96
                                            s = 0
                                            while s < 96:
                                                mem[s + _2750 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2750 + ceil32(return_data.size) + 221]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_2750 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                    else:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _2787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, _2787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2750 + 189 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                        if address(_2517) == address(_2517):
                                            if 100000 * _2484 * _2476 * stor6 / 10^18 / _2484 <= 985 * ext_call.return_data[18 len 14]:
                                                mem[_2750 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2750 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2750 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2750 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2750 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2750 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2750 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_2750 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2750 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2750 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2750 + (4 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2750 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2750 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2750 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2750 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2750 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2750 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2750 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2750 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[s + _2750 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2750 + ceil32(return_data.size) + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _2787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2750 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_2750 + ceil32(return_data.size) + 193] = address(_2517)
                                                mem[_2750 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_2517), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_2750 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2750 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2750 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2750 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2750 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2750 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2750 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2750 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2750 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2750 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2750 + (4 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2750 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2750 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2750 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2750 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2750 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2750 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2750 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2750 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_2750 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[s + _2750 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2750 + (2 * ceil32(return_data.size)) + 221]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_2750 + (2 * ceil32(return_data.size)) + 189]) > mem[_2750 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_2750 + (4 * ceil32(return_data.size)) + mem[_2750 + (2 * ceil32(return_data.size)) + 189] + 481] = 0
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2750 + (4 * ceil32(return_data.size)) + 321 len ceil32(mem[_2750 + (2 * ceil32(return_data.size)) + 189]) + (7 * ceil32(return_data.size)) + 160]
                                        else:
                                            if 100000 * _2484 * _2476 * stor6 / 10^18 / _2484 <= 985 * ext_call.return_data[50 len 14]:
                                                mem[_2750 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2750 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2750 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2750 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2750 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2750 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2750 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_2750 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2750 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2750 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2750 + (4 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2750 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2750 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2750 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2750 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2750 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2750 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2750 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2750 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[s + _2750 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2750 + ceil32(return_data.size) + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _2787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2750 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_2750 + ceil32(return_data.size) + 193] = address(_2517)
                                                mem[_2750 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_2517), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_2750 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2750 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2750 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2750 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2750 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2750 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2750 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2750 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2750 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2750 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2750 + (4 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2750 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2750 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2750 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2750 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2750 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2750 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2750 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2750 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_2750 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[s + _2750 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2750 + (2 * ceil32(return_data.size)) + 221]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_2750 + (2 * ceil32(return_data.size)) + 189]) > mem[_2750 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_2750 + (4 * ceil32(return_data.size)) + mem[_2750 + (2 * ceil32(return_data.size)) + 189] + 481] = 0
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2750 + (4 * ceil32(return_data.size)) + 321 len ceil32(mem[_2750 + (2 * ceil32(return_data.size)) + 189]) + (7 * ceil32(return_data.size)) + 160]
                            else:
                                if not mem[_2527 + 12 len 20]:
                                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                if address(_2517) == mem[_2527 + 12 len 20]:
                                    revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                                if address(_2517) < mem[_2527 + 12 len 20]:
                                    if not address(_2517):
                                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                    _2751 = mem[64]
                                    mem[mem[64] + 32] = address(_2517)
                                    mem[mem[64] + 52] = address(_2536)
                                    _2789 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _2791 = sha3(mem[_2789 + 32 len mem[_2789]])
                                    mem[_2751 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2751 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_2751 + 125] = _2791
                                    mem[_2751 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_2751 + 72] = 85
                                    if not uint32(ext_code.size(sha3(0, 17269419903419772280, _2791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                        if 100000 * _2484 * _2476 * stor6 / 10^18 / _2484 <= 0:
                                            mem[_2751 + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                            mem[_2751 + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                            mem[_2751 + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                            mem[_2751 + 189] = 96
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _2791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _2791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_2751 + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _2791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _2791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                            mem[_2751 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _2751 + (2 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2751 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_2517):
                                                mem[_2751 + (2 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2751 + (2 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    mem[_2751 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2751 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2751 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2751 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2751 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args _2484 * _2476 * stor6 / 10^18 / _2484, _2484 * _2476 * stor6 / 10^18 / _2484, address(this.address), 128, 96, mem[_2751 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_2751 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_2751 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2751 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2751 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2751 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2751 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args _2484 * _2476 * stor6 / 10^18 / _2484, 0, address(this.address), 128, 96, mem[_2751 + (2 * ceil32(return_data.size)) + 481 len 96]
                                            else:
                                                mem[_2751 + (2 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2751 + (2 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    mem[_2751 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2751 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2751 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2751 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2751 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, _2484 * _2476 * stor6 / 10^18 / _2484, address(this.address), 128, 96, mem[_2751 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_2751 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_2751 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2751 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2751 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2751 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2751 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, address(this.address), 128, 96, mem[_2751 + (2 * ceil32(return_data.size)) + 481 len 96]
                                        else:
                                            mem[_2751 + 193] = address(_2517)
                                            mem[_2751 + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_2517), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            mem[_2751 + 189] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2751 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                            mem[_2751 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                            mem[_2751 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                            mem[_2751 + ceil32(return_data.size) + 189] = 96
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_2751 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2751 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_2751 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_2751 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _2751 + (4 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2751 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_2517):
                                                mem[_2751 + (4 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2751 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                else:
                                                    mem[_2751 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_2751 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2751 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                else:
                                                    mem[_2751 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_2751 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_2751 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_2751 + (4 * ceil32(return_data.size)) + 449] = 96
                                            s = 0
                                            while s < 96:
                                                mem[s + _2751 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2751 + ceil32(return_data.size) + 221]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_2751 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                    else:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _2791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, _2791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2751 + 189 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                        if address(_2517) == address(_2536):
                                            if 100000 * _2484 * _2476 * stor6 / 10^18 / _2484 <= 985 * ext_call.return_data[18 len 14]:
                                                mem[_2751 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2751 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2751 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2751 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2751 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2751 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2751 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_2751 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2751 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2751 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2751 + (4 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2751 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2751 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2751 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2751 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2751 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2751 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2751 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2751 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[s + _2751 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2751 + ceil32(return_data.size) + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _2791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2751 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_2751 + ceil32(return_data.size) + 193] = address(_2517)
                                                mem[_2751 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_2517), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_2751 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2751 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2751 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2751 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2751 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2751 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2751 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2751 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2751 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2751 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2751 + (4 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2751 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2751 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2751 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2751 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2751 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2751 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2751 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2751 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_2751 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[s + _2751 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2751 + (2 * ceil32(return_data.size)) + 221]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_2751 + (2 * ceil32(return_data.size)) + 189]) > mem[_2751 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_2751 + (4 * ceil32(return_data.size)) + mem[_2751 + (2 * ceil32(return_data.size)) + 189] + 481] = 0
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2751 + (4 * ceil32(return_data.size)) + 321 len ceil32(mem[_2751 + (2 * ceil32(return_data.size)) + 189]) + (7 * ceil32(return_data.size)) + 160]
                                        else:
                                            if 100000 * _2484 * _2476 * stor6 / 10^18 / _2484 <= 985 * ext_call.return_data[50 len 14]:
                                                mem[_2751 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2751 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2751 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2751 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2751 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2751 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2751 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_2751 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2751 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2751 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2751 + (4 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2751 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2751 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2751 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2751 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2751 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2751 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2751 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2751 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[s + _2751 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2751 + ceil32(return_data.size) + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _2791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2751 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_2751 + ceil32(return_data.size) + 193] = address(_2517)
                                                mem[_2751 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_2517), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_2751 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2751 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2751 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2751 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2751 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2751 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2751 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2751 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2751 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2751 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2751 + (4 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2751 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2751 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2751 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2751 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2751 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2751 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2751 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2751 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_2751 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[s + _2751 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2751 + (2 * ceil32(return_data.size)) + 221]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_2751 + (2 * ceil32(return_data.size)) + 189]) > mem[_2751 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_2751 + (4 * ceil32(return_data.size)) + mem[_2751 + (2 * ceil32(return_data.size)) + 189] + 481] = 0
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2751 + (4 * ceil32(return_data.size)) + 321 len ceil32(mem[_2751 + (2 * ceil32(return_data.size)) + 189]) + (7 * ceil32(return_data.size)) + 160]
                                else:
                                    if not mem[_2527 + 12 len 20]:
                                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                    _2752 = mem[64]
                                    mem[mem[64] + 32] = address(mem[_2527])
                                    mem[mem[64] + 52] = address(_2517)
                                    _2793 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _2795 = sha3(mem[_2793 + 32 len mem[_2793]])
                                    mem[_2752 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2752 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_2752 + 125] = _2795
                                    mem[_2752 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_2752 + 72] = 85
                                    if not uint32(ext_code.size(sha3(0, 17269419903419772280, _2795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                        if 100000 * _2484 * _2476 * stor6 / 10^18 / _2484 <= 0:
                                            mem[_2752 + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                            mem[_2752 + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                            mem[_2752 + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                            mem[_2752 + 189] = 96
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _2795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _2795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_2752 + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _2795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _2795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                            mem[_2752 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _2752 + (2 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2752 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_2517):
                                                mem[_2752 + (2 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2752 + (2 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    mem[_2752 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2752 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2752 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2752 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2752 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args _2484 * _2476 * stor6 / 10^18 / _2484, _2484 * _2476 * stor6 / 10^18 / _2484, address(this.address), 128, 96, mem[_2752 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_2752 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_2752 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2752 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2752 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2752 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2752 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args _2484 * _2476 * stor6 / 10^18 / _2484, 0, address(this.address), 128, 96, mem[_2752 + (2 * ceil32(return_data.size)) + 481 len 96]
                                            else:
                                                mem[_2752 + (2 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2752 + (2 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    mem[_2752 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2752 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2752 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2752 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2752 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, _2484 * _2476 * stor6 / 10^18 / _2484, address(this.address), 128, 96, mem[_2752 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_2752 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_2752 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2752 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2752 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2752 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2752 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, address(this.address), 128, 96, mem[_2752 + (2 * ceil32(return_data.size)) + 481 len 96]
                                        else:
                                            mem[_2752 + 193] = address(_2517)
                                            mem[_2752 + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_2517), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            mem[_2752 + 189] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2752 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                            mem[_2752 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                            mem[_2752 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                            mem[_2752 + ceil32(return_data.size) + 189] = 96
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_2752 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2752 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_2752 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_2752 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _2752 + (4 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2752 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_2517):
                                                mem[_2752 + (4 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2752 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                else:
                                                    mem[_2752 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_2752 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2752 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                else:
                                                    mem[_2752 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_2752 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_2752 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_2752 + (4 * ceil32(return_data.size)) + 449] = 96
                                            s = 0
                                            while s < 96:
                                                mem[s + _2752 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2752 + ceil32(return_data.size) + 221]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_2752 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                    else:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _2795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, _2795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2752 + 189 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                        if address(_2517) == address(_2536):
                                            if 100000 * _2484 * _2476 * stor6 / 10^18 / _2484 <= 985 * ext_call.return_data[18 len 14]:
                                                mem[_2752 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2752 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2752 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2752 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2752 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2752 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2752 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_2752 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2752 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2752 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2752 + (4 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2752 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2752 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2752 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2752 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2752 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2752 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2752 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2752 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[s + _2752 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2752 + ceil32(return_data.size) + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _2795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2752 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_2752 + ceil32(return_data.size) + 193] = address(_2517)
                                                mem[_2752 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_2517), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_2752 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2752 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2752 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2752 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2752 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2752 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2752 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2752 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2752 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2752 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2752 + (4 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2752 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2752 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2752 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2752 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2752 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2752 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2752 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2752 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_2752 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[s + _2752 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2752 + (2 * ceil32(return_data.size)) + 221]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_2752 + (2 * ceil32(return_data.size)) + 189]) > mem[_2752 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_2752 + (4 * ceil32(return_data.size)) + mem[_2752 + (2 * ceil32(return_data.size)) + 189] + 481] = 0
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2752 + (4 * ceil32(return_data.size)) + 321 len ceil32(mem[_2752 + (2 * ceil32(return_data.size)) + 189]) + (7 * ceil32(return_data.size)) + 160]
                                        else:
                                            if 100000 * _2484 * _2476 * stor6 / 10^18 / _2484 <= 985 * ext_call.return_data[50 len 14]:
                                                mem[_2752 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2752 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2752 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2752 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2752 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2752 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2752 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_2752 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2752 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2752 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2752 + (4 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2752 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2752 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2752 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2752 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2752 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2752 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2752 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2752 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[s + _2752 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2752 + ceil32(return_data.size) + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _2795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2752 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_2752 + ceil32(return_data.size) + 193] = address(_2517)
                                                mem[_2752 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_2517), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_2752 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2752 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2752 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2752 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2752 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2752 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2752 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2752 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2752 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2752 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2517):
                                                    mem[_2752 + (4 * ceil32(return_data.size)) + 321] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2752 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2752 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2752 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2517):
                                                        mem[_2752 + (4 * ceil32(return_data.size)) + 353] = _2484 * _2476 * stor6 / 10^18 / _2484
                                                    else:
                                                        mem[_2752 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2752 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2752 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2752 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_2752 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[s + _2752 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2752 + (2 * ceil32(return_data.size)) + 221]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_2752 + (2 * ceil32(return_data.size)) + 189]) > mem[_2752 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_2752 + (4 * ceil32(return_data.size)) + mem[_2752 + (2 * ceil32(return_data.size)) + 189] + 481] = 0
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2752 + (4 * ceil32(return_data.size)) + 321 len ceil32(mem[_2752 + (2 * ceil32(return_data.size)) + 189]) + (7 * ceil32(return_data.size)) + 160]
            else:
                if address(cd[((64 * idx) + arg2 + 36)]) == address(cd[((32 * (2 * idx) + 1) + arg2 + 36)]):
                    require ext_code.size(address(cd[((64 * idx) + arg2 + 36)]))
                    staticcall address(cd[((64 * idx) + arg2 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2502 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2512 = mem[_2502]
                    require mem[_2502] == mem[_2502 + 12 len 20]
                    if mem[_2502 + 12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                    if mem[_2502 + 12 len 20] >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        _2546 = mem[64]
                        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                        mem[mem[64] + 52] = address(_2512)
                        _2572 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _2574 = sha3(mem[_2572 + 32 len mem[_2572]])
                        mem[_2546 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2546 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                        mem[_2546 + 125] = _2574
                        mem[_2546 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                        mem[_2546 + 72] = 85
                        mem[_2546 + 221] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_2546 + 253] = address(cd[((64 * idx) + arg2 + 36)])
                        mem[_2546 + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                        mem[_2546 + 189] = 96
                        require ext_code.size(address(sha3(0, 17269419903419772280, _2574, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, _2574, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                gas gas_remaining wei
                        mem[_2546 + 317] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17269419903419772280, _2574, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, _2574, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                gas gas_remaining wei
                        mem[_2546 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _2546 + (2 * ceil32(return_data.size)) + 317
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_2546 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if ext_call.return_data[12 len 20] == address(_2512):
                            mem[_2546 + (2 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                            if ext_call.return_data[12 len 20] == address(_2512):
                                mem[_2546 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                mem[_2546 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_2546 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_2546 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[s + _2546 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2546 + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _2574, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _2574, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 10^18 * _2480 / stor7 * _2488 / _2484, 10^18 * _2480 / stor7 * _2488 / _2484, address(this.address), 128, 96, mem[_2546 + (2 * ceil32(return_data.size)) + 481 len 96]
                            else:
                                mem[_2546 + (2 * ceil32(return_data.size)) + 353] = 0
                                mem[_2546 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_2546 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_2546 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[s + _2546 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2546 + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _2574, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _2574, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 10^18 * _2480 / stor7 * _2488 / _2484, 0, address(this.address), 128, 96, mem[_2546 + (2 * ceil32(return_data.size)) + 481 len 96]
                        else:
                            mem[_2546 + (2 * ceil32(return_data.size)) + 321] = 0
                            if ext_call.return_data[12 len 20] == address(_2512):
                                mem[_2546 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                mem[_2546 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_2546 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_2546 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[s + _2546 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2546 + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _2574, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _2574, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 10^18 * _2480 / stor7 * _2488 / _2484, address(this.address), 128, 96, mem[_2546 + (2 * ceil32(return_data.size)) + 481 len 96]
                            else:
                                mem[_2546 + (2 * ceil32(return_data.size)) + 353] = 0
                                mem[_2546 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_2546 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_2546 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[s + _2546 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2546 + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _2574, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _2574, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 96, mem[_2546 + (2 * ceil32(return_data.size)) + 481 len 96]
                    else:
                        if not mem[_2502 + 12 len 20]:
                            revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                        _2545 = mem[64]
                        mem[mem[64] + 32] = address(mem[_2502])
                        mem[mem[64] + 52] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                        _2568 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _2570 = sha3(mem[_2568 + 32 len mem[_2568]])
                        mem[_2545 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2545 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                        mem[_2545 + 125] = _2570
                        mem[_2545 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                        mem[_2545 + 72] = 85
                        mem[_2545 + 221] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_2545 + 253] = address(cd[((64 * idx) + arg2 + 36)])
                        mem[_2545 + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                        mem[_2545 + 189] = 96
                        require ext_code.size(address(sha3(0, 17269419903419772280, _2570, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, _2570, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                gas gas_remaining wei
                        mem[_2545 + 317] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17269419903419772280, _2570, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, _2570, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                gas gas_remaining wei
                        mem[_2545 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _2545 + (2 * ceil32(return_data.size)) + 317
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_2545 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if ext_call.return_data[12 len 20] == address(_2512):
                            mem[_2545 + (2 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                            if ext_call.return_data[12 len 20] == address(_2512):
                                mem[_2545 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                mem[_2545 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_2545 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_2545 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[s + _2545 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2545 + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _2570, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _2570, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 10^18 * _2480 / stor7 * _2488 / _2484, 10^18 * _2480 / stor7 * _2488 / _2484, address(this.address), 128, 96, mem[_2545 + (2 * ceil32(return_data.size)) + 481 len 96]
                            else:
                                mem[_2545 + (2 * ceil32(return_data.size)) + 353] = 0
                                mem[_2545 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_2545 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_2545 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[s + _2545 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2545 + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _2570, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _2570, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 10^18 * _2480 / stor7 * _2488 / _2484, 0, address(this.address), 128, 96, mem[_2545 + (2 * ceil32(return_data.size)) + 481 len 96]
                        else:
                            mem[_2545 + (2 * ceil32(return_data.size)) + 321] = 0
                            if ext_call.return_data[12 len 20] == address(_2512):
                                mem[_2545 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                mem[_2545 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_2545 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_2545 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[s + _2545 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2545 + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _2570, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _2570, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 10^18 * _2480 / stor7 * _2488 / _2484, address(this.address), 128, 96, mem[_2545 + (2 * ceil32(return_data.size)) + 481 len 96]
                            else:
                                mem[_2545 + (2 * ceil32(return_data.size)) + 353] = 0
                                mem[_2545 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_2545 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_2545 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[s + _2545 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2545 + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _2570, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _2570, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 96, mem[_2545 + (2 * ceil32(return_data.size)) + 481 len 96]
                else:
                    if 0x5c0401e81bc07ca70fad469b451682c0d747ef1c == address(cd[((32 * (2 * idx) + 1) + arg2 + 36)]):
                        require ext_code.size(address(cd[((64 * idx) + arg2 + 36)]))
                        staticcall address(cd[((64 * idx) + arg2 + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2508 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2516 = mem[_2508]
                        require mem[_2508] == mem[_2508 + 12 len 20]
                        if mem[_2508 + 12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                            revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                        if mem[_2508 + 12 len 20] >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                            _2556 = mem[64]
                            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                            mem[mem[64] + 52] = address(_2516)
                            _2593 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _2595 = sha3(mem[_2593 + 32 len mem[_2593]])
                            mem[_2556 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_2556 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                            mem[_2556 + 125] = _2595
                            mem[_2556 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                            mem[_2556 + 72] = 85
                            mem[_2556 + 221] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_2556 + 253] = address(cd[((64 * idx) + arg2 + 36)])
                            mem[_2556 + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                            mem[_2556 + 189] = 96
                            require ext_code.size(address(sha3(0, 17269419903419772280, _2595, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _2595, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                    gas gas_remaining wei
                            mem[_2556 + 317] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(sha3(0, 17269419903419772280, _2595, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _2595, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                    gas gas_remaining wei
                            mem[_2556 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _2556 + (2 * ceil32(return_data.size)) + 317
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_2556 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if ext_call.return_data[12 len 20] == address(_2516):
                                mem[_2556 + (2 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                                if ext_call.return_data[12 len 20] == address(_2516):
                                    mem[_2556 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                    mem[_2556 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_2556 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_2556 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[s + _2556 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2556 + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2595, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _2595, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 10^18 * _2480 / stor7 * _2488 / _2484, 10^18 * _2480 / stor7 * _2488 / _2484, address(this.address), 128, 96, mem[_2556 + (2 * ceil32(return_data.size)) + 481 len 96]
                                else:
                                    mem[_2556 + (2 * ceil32(return_data.size)) + 353] = 0
                                    mem[_2556 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_2556 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_2556 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[s + _2556 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2556 + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2595, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _2595, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 10^18 * _2480 / stor7 * _2488 / _2484, 0, address(this.address), 128, 96, mem[_2556 + (2 * ceil32(return_data.size)) + 481 len 96]
                            else:
                                mem[_2556 + (2 * ceil32(return_data.size)) + 321] = 0
                                if ext_call.return_data[12 len 20] == address(_2516):
                                    mem[_2556 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                    mem[_2556 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_2556 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_2556 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[s + _2556 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2556 + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2595, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _2595, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 10^18 * _2480 / stor7 * _2488 / _2484, address(this.address), 128, 96, mem[_2556 + (2 * ceil32(return_data.size)) + 481 len 96]
                                else:
                                    mem[_2556 + (2 * ceil32(return_data.size)) + 353] = 0
                                    mem[_2556 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_2556 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_2556 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[s + _2556 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2556 + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2595, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _2595, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, mem[_2556 + (2 * ceil32(return_data.size)) + 481 len 96]
                        else:
                            if not mem[_2508 + 12 len 20]:
                                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                            _2555 = mem[64]
                            mem[mem[64] + 32] = address(mem[_2508])
                            mem[mem[64] + 52] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                            _2589 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _2591 = sha3(mem[_2589 + 32 len mem[_2589]])
                            mem[_2555 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_2555 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                            mem[_2555 + 125] = _2591
                            mem[_2555 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                            mem[_2555 + 72] = 85
                            mem[_2555 + 221] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_2555 + 253] = address(cd[((64 * idx) + arg2 + 36)])
                            mem[_2555 + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                            mem[_2555 + 189] = 96
                            require ext_code.size(address(sha3(0, 17269419903419772280, _2591, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _2591, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                    gas gas_remaining wei
                            mem[_2555 + 317] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(sha3(0, 17269419903419772280, _2591, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _2591, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                    gas gas_remaining wei
                            mem[_2555 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _2555 + (2 * ceil32(return_data.size)) + 317
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_2555 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if ext_call.return_data[12 len 20] == address(_2516):
                                mem[_2555 + (2 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                                if ext_call.return_data[12 len 20] == address(_2516):
                                    mem[_2555 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                    mem[_2555 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_2555 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_2555 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[s + _2555 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2555 + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2591, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _2591, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 10^18 * _2480 / stor7 * _2488 / _2484, 10^18 * _2480 / stor7 * _2488 / _2484, address(this.address), 128, 96, mem[_2555 + (2 * ceil32(return_data.size)) + 481 len 96]
                                else:
                                    mem[_2555 + (2 * ceil32(return_data.size)) + 353] = 0
                                    mem[_2555 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_2555 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_2555 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[s + _2555 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2555 + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2591, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _2591, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 10^18 * _2480 / stor7 * _2488 / _2484, 0, address(this.address), 128, 96, mem[_2555 + (2 * ceil32(return_data.size)) + 481 len 96]
                            else:
                                mem[_2555 + (2 * ceil32(return_data.size)) + 321] = 0
                                if ext_call.return_data[12 len 20] == address(_2516):
                                    mem[_2555 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                    mem[_2555 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_2555 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_2555 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[s + _2555 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2555 + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2591, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _2591, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 10^18 * _2480 / stor7 * _2488 / _2484, address(this.address), 128, 96, mem[_2555 + (2 * ceil32(return_data.size)) + 481 len 96]
                                else:
                                    mem[_2555 + (2 * ceil32(return_data.size)) + 353] = 0
                                    mem[_2555 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_2555 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_2555 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[s + _2555 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2555 + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2591, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _2591, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, mem[_2555 + (2 * ceil32(return_data.size)) + 481 len 96]
                    else:
                        if 0x5c0401e81bc07ca70fad469b451682c0d747ef1c == address(cd[((64 * idx) + arg2 + 36)]):
                            require ext_code.size(address(cd[((32 * (2 * idx) + 1) + arg2 + 36)]))
                            staticcall address(cd[((32 * (2 * idx) + 1) + arg2 + 36)]).underlying() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2514 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2520 = mem[_2514]
                            require mem[_2514] == mem[_2514 + 12 len 20]
                            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == mem[_2514 + 12 len 20]:
                                revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 < mem[_2514 + 12 len 20]:
                                _2576 = mem[64]
                                mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                                mem[mem[64] + 52] = address(_2520)
                                _2617 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2619 = sha3(mem[_2617 + 32 len mem[_2617]])
                                mem[_2576 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2576 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                mem[_2576 + 125] = _2619
                                mem[_2576 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                mem[_2576 + 72] = 85
                                mem[_2576 + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                mem[_2576 + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                mem[_2576 + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                mem[_2576 + 189] = 96
                                require ext_code.size(address(sha3(0, 17269419903419772280, _2619, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                staticcall address(sha3(0, 17269419903419772280, _2619, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                        gas gas_remaining wei
                                mem[_2576 + 317] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(sha3(0, 17269419903419772280, _2619, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                staticcall address(sha3(0, 17269419903419772280, _2619, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                        gas gas_remaining wei
                                mem[_2576 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _2576 + (2 * ceil32(return_data.size)) + 317
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[_2576 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    mem[_2576 + (2 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                                    if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                        mem[_2576 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                        mem[_2576 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_2576 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_2576 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[s + _2576 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2576 + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _2619, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _2619, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 10^18 * _2480 / stor7 * _2488 / _2484, 10^18 * _2480 / stor7 * _2488 / _2484, address(this.address), 128, 96, mem[_2576 + (2 * ceil32(return_data.size)) + 481 len 96]
                                    else:
                                        mem[_2576 + (2 * ceil32(return_data.size)) + 353] = 0
                                        mem[_2576 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_2576 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_2576 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[s + _2576 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2576 + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _2619, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _2619, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 10^18 * _2480 / stor7 * _2488 / _2484, 0, address(this.address), 128, 96, mem[_2576 + (2 * ceil32(return_data.size)) + 481 len 96]
                                else:
                                    mem[_2576 + (2 * ceil32(return_data.size)) + 321] = 0
                                    if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                        mem[_2576 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                        mem[_2576 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_2576 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_2576 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[s + _2576 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2576 + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _2619, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _2619, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 10^18 * _2480 / stor7 * _2488 / _2484, address(this.address), 128, 96, mem[_2576 + (2 * ceil32(return_data.size)) + 481 len 96]
                                    else:
                                        mem[_2576 + (2 * ceil32(return_data.size)) + 353] = 0
                                        mem[_2576 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_2576 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_2576 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[s + _2576 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2576 + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _2619, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _2619, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 96, mem[_2576 + (2 * ceil32(return_data.size)) + 481 len 96]
                            else:
                                if not mem[_2514 + 12 len 20]:
                                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                _2577 = mem[64]
                                mem[mem[64] + 32] = address(mem[_2514])
                                mem[mem[64] + 52] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                                _2621 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2623 = sha3(mem[_2621 + 32 len mem[_2621]])
                                mem[_2577 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2577 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                mem[_2577 + 125] = _2623
                                mem[_2577 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                mem[_2577 + 72] = 85
                                mem[_2577 + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                mem[_2577 + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                mem[_2577 + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                mem[_2577 + 189] = 96
                                require ext_code.size(address(sha3(0, 17269419903419772280, _2623, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                staticcall address(sha3(0, 17269419903419772280, _2623, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                        gas gas_remaining wei
                                mem[_2577 + 317] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(sha3(0, 17269419903419772280, _2623, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                staticcall address(sha3(0, 17269419903419772280, _2623, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                        gas gas_remaining wei
                                mem[_2577 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _2577 + (2 * ceil32(return_data.size)) + 317
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[_2577 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    mem[_2577 + (2 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                                    if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                        mem[_2577 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                        mem[_2577 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_2577 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_2577 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[s + _2577 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2577 + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _2623, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _2623, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 10^18 * _2480 / stor7 * _2488 / _2484, 10^18 * _2480 / stor7 * _2488 / _2484, address(this.address), 128, 96, mem[_2577 + (2 * ceil32(return_data.size)) + 481 len 96]
                                    else:
                                        mem[_2577 + (2 * ceil32(return_data.size)) + 353] = 0
                                        mem[_2577 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_2577 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_2577 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[s + _2577 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2577 + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _2623, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _2623, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 10^18 * _2480 / stor7 * _2488 / _2484, 0, address(this.address), 128, 96, mem[_2577 + (2 * ceil32(return_data.size)) + 481 len 96]
                                else:
                                    mem[_2577 + (2 * ceil32(return_data.size)) + 321] = 0
                                    if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                        mem[_2577 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                        mem[_2577 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_2577 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_2577 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[s + _2577 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2577 + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _2623, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _2623, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 10^18 * _2480 / stor7 * _2488 / _2484, address(this.address), 128, 96, mem[_2577 + (2 * ceil32(return_data.size)) + 481 len 96]
                                    else:
                                        mem[_2577 + (2 * ceil32(return_data.size)) + 353] = 0
                                        mem[_2577 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_2577 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_2577 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[s + _2577 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2577 + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _2623, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _2623, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 96, mem[_2577 + (2 * ceil32(return_data.size)) + 481 len 96]
                        else:
                            require ext_code.size(address(cd[((64 * idx) + arg2 + 36)]))
                            staticcall address(cd[((64 * idx) + arg2 + 36)]).underlying() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2513 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2519 = mem[_2513]
                            require mem[_2513] == mem[_2513 + 12 len 20]
                            require ext_code.size(address(cd[((32 * (2 * idx) + 1) + arg2 + 36)]))
                            staticcall address(cd[((32 * (2 * idx) + 1) + arg2 + 36)]).underlying() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2529 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2539 = mem[_2529]
                            require mem[_2529] == mem[_2529 + 12 len 20]
                            if address(_2519) == mem[_2529 + 12 len 20]:
                                revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                            if address(_2519) < mem[_2529 + 12 len 20]:
                                if not address(_2519):
                                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                if address(_2519) == mem[_2529 + 12 len 20]:
                                    revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                                if address(_2519) >= mem[_2529 + 12 len 20]:
                                    if not mem[_2529 + 12 len 20]:
                                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                    _2754 = mem[64]
                                    mem[mem[64] + 32] = address(mem[_2529])
                                    mem[mem[64] + 52] = address(_2519)
                                    _2809 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _2811 = sha3(mem[_2809 + 32 len mem[_2809]])
                                    mem[_2754 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2754 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_2754 + 125] = _2811
                                    mem[_2754 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_2754 + 72] = 85
                                    if not uint32(ext_code.size(sha3(0, 17269419903419772280, _2811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                        if 100000 * 10^18 * _2480 / stor7 * _2488 / _2484 <= 0:
                                            mem[_2754 + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                            mem[_2754 + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                            mem[_2754 + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                            mem[_2754 + 189] = 96
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _2811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _2811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_2754 + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _2811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _2811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                            mem[_2754 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _2754 + (2 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2754 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_2519):
                                                mem[_2754 + (2 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2754 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    mem[_2754 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2754 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2754 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2754 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2754 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 10^18 * _2480 / stor7 * _2488 / _2484, 10^18 * _2480 / stor7 * _2488 / _2484, address(this.address), 128, 96, mem[_2754 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_2754 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_2754 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2754 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2754 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2754 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2754 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 10^18 * _2480 / stor7 * _2488 / _2484, 0, address(this.address), 128, 96, mem[_2754 + (2 * ceil32(return_data.size)) + 481 len 96]
                                            else:
                                                mem[_2754 + (2 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2754 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    mem[_2754 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2754 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2754 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2754 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2754 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 10^18 * _2480 / stor7 * _2488 / _2484, address(this.address), 128, 96, mem[_2754 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_2754 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_2754 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2754 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2754 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2754 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2754 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, address(this.address), 128, 96, mem[_2754 + (2 * ceil32(return_data.size)) + 481 len 96]
                                        else:
                                            mem[_2754 + 193] = address(_2519)
                                            mem[_2754 + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_2519), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            mem[_2754 + 189] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2754 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                            mem[_2754 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                            mem[_2754 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                            mem[_2754 + ceil32(return_data.size) + 189] = 96
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_2754 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2754 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_2754 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_2754 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _2754 + (4 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2754 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_2519):
                                                mem[_2754 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2754 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                else:
                                                    mem[_2754 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_2754 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2754 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                else:
                                                    mem[_2754 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_2754 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_2754 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_2754 + (4 * ceil32(return_data.size)) + 449] = 96
                                            s = 0
                                            while s < 96:
                                                mem[s + _2754 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2754 + ceil32(return_data.size) + 221]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_2754 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                    else:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _2811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, _2811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2754 + 189 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                        if address(_2519) == address(_2519):
                                            if 100000 * 10^18 * _2480 / stor7 * _2488 / _2484 <= 985 * ext_call.return_data[18 len 14]:
                                                mem[_2754 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2754 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2754 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2754 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2754 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2754 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2754 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_2754 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2754 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2754 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2754 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2754 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2754 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2754 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2754 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2754 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2754 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2754 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2754 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[s + _2754 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2754 + ceil32(return_data.size) + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _2811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2754 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_2754 + ceil32(return_data.size) + 193] = address(_2519)
                                                mem[_2754 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_2519), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_2754 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2754 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2754 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2754 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2754 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2754 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2754 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2754 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2754 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2754 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2754 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2754 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2754 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2754 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2754 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2754 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2754 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2754 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2754 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_2754 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[s + _2754 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2754 + (2 * ceil32(return_data.size)) + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2754 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                        else:
                                            if 100000 * 10^18 * _2480 / stor7 * _2488 / _2484 <= 985 * ext_call.return_data[50 len 14]:
                                                mem[_2754 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2754 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2754 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2754 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2754 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2754 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2754 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_2754 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2754 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2754 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2754 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2754 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2754 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2754 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2754 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2754 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2754 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2754 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2754 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[s + _2754 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2754 + ceil32(return_data.size) + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _2811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2754 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_2754 + ceil32(return_data.size) + 193] = address(_2519)
                                                mem[_2754 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_2519), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_2754 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2754 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2754 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2754 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2754 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2754 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2754 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2754 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2754 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2754 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2754 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2754 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2754 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2754 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2754 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2754 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2754 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2754 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2754 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_2754 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[s + _2754 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2754 + (2 * ceil32(return_data.size)) + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2754 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                else:
                                    if not address(_2519):
                                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                    _2753 = mem[64]
                                    mem[mem[64] + 32] = address(_2519)
                                    mem[mem[64] + 52] = address(_2539)
                                    _2805 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _2807 = sha3(mem[_2805 + 32 len mem[_2805]])
                                    mem[_2753 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2753 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_2753 + 125] = _2807
                                    mem[_2753 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_2753 + 72] = 85
                                    if not uint32(ext_code.size(sha3(0, 17269419903419772280, _2807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                        if 100000 * 10^18 * _2480 / stor7 * _2488 / _2484 <= 0:
                                            mem[_2753 + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                            mem[_2753 + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                            mem[_2753 + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                            mem[_2753 + 189] = 96
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _2807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _2807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_2753 + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _2807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _2807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                            mem[_2753 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _2753 + (2 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2753 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_2519):
                                                mem[_2753 + (2 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2753 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    mem[_2753 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2753 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2753 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2753 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2753 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 10^18 * _2480 / stor7 * _2488 / _2484, 10^18 * _2480 / stor7 * _2488 / _2484, address(this.address), 128, 96, mem[_2753 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_2753 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_2753 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2753 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2753 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2753 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2753 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 10^18 * _2480 / stor7 * _2488 / _2484, 0, address(this.address), 128, 96, mem[_2753 + (2 * ceil32(return_data.size)) + 481 len 96]
                                            else:
                                                mem[_2753 + (2 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2753 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    mem[_2753 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2753 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2753 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2753 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2753 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 10^18 * _2480 / stor7 * _2488 / _2484, address(this.address), 128, 96, mem[_2753 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_2753 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_2753 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2753 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2753 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2753 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2753 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, address(this.address), 128, 96, mem[_2753 + (2 * ceil32(return_data.size)) + 481 len 96]
                                        else:
                                            mem[_2753 + 193] = address(_2519)
                                            mem[_2753 + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_2519), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            mem[_2753 + 189] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2753 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                            mem[_2753 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                            mem[_2753 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                            mem[_2753 + ceil32(return_data.size) + 189] = 96
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_2753 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2753 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_2753 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_2753 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _2753 + (4 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2753 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_2519):
                                                mem[_2753 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2753 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                else:
                                                    mem[_2753 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_2753 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2753 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                else:
                                                    mem[_2753 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_2753 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_2753 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_2753 + (4 * ceil32(return_data.size)) + 449] = 96
                                            s = 0
                                            while s < 96:
                                                mem[s + _2753 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2753 + ceil32(return_data.size) + 221]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_2753 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                    else:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _2807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, _2807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2753 + 189 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                        if address(_2519) == address(_2519):
                                            if 100000 * 10^18 * _2480 / stor7 * _2488 / _2484 <= 985 * ext_call.return_data[18 len 14]:
                                                mem[_2753 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2753 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2753 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2753 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2753 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2753 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2753 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_2753 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2753 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2753 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2753 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2753 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2753 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2753 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2753 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2753 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2753 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2753 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2753 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[s + _2753 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2753 + ceil32(return_data.size) + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _2807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2753 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_2753 + ceil32(return_data.size) + 193] = address(_2519)
                                                mem[_2753 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_2519), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_2753 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2753 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2753 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2753 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2753 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2753 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2753 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2753 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2753 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2753 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2753 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2753 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2753 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2753 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2753 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2753 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2753 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2753 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2753 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_2753 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[s + _2753 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2753 + (2 * ceil32(return_data.size)) + 221]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_2753 + (2 * ceil32(return_data.size)) + 189]) > mem[_2753 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_2753 + (4 * ceil32(return_data.size)) + mem[_2753 + (2 * ceil32(return_data.size)) + 189] + 481] = 0
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2753 + (4 * ceil32(return_data.size)) + 321 len ceil32(mem[_2753 + (2 * ceil32(return_data.size)) + 189]) + (7 * ceil32(return_data.size)) + 160]
                                        else:
                                            if 100000 * 10^18 * _2480 / stor7 * _2488 / _2484 <= 985 * ext_call.return_data[50 len 14]:
                                                mem[_2753 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2753 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2753 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2753 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2753 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2753 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2753 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_2753 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2753 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2753 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2753 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2753 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2753 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2753 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2753 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2753 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2753 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2753 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2753 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[s + _2753 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2753 + ceil32(return_data.size) + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _2807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2753 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_2753 + ceil32(return_data.size) + 193] = address(_2519)
                                                mem[_2753 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_2519), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_2753 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2753 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2753 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2753 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2753 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2753 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2753 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2753 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2753 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2753 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2753 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2753 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2753 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2753 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2753 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2753 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2753 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2753 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2753 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_2753 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[s + _2753 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2753 + (2 * ceil32(return_data.size)) + 221]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_2753 + (2 * ceil32(return_data.size)) + 189]) > mem[_2753 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_2753 + (4 * ceil32(return_data.size)) + mem[_2753 + (2 * ceil32(return_data.size)) + 189] + 481] = 0
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2753 + (4 * ceil32(return_data.size)) + 321 len ceil32(mem[_2753 + (2 * ceil32(return_data.size)) + 189]) + (7 * ceil32(return_data.size)) + 160]
                            else:
                                if not mem[_2529 + 12 len 20]:
                                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                if address(_2519) == mem[_2529 + 12 len 20]:
                                    revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                                if address(_2519) < mem[_2529 + 12 len 20]:
                                    if not address(_2519):
                                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                    _2755 = mem[64]
                                    mem[mem[64] + 32] = address(_2519)
                                    mem[mem[64] + 52] = address(_2539)
                                    _2813 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _2815 = sha3(mem[_2813 + 32 len mem[_2813]])
                                    mem[_2755 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2755 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_2755 + 125] = _2815
                                    mem[_2755 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_2755 + 72] = 85
                                    if not uint32(ext_code.size(sha3(0, 17269419903419772280, _2815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                        if 100000 * 10^18 * _2480 / stor7 * _2488 / _2484 <= 0:
                                            mem[_2755 + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                            mem[_2755 + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                            mem[_2755 + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                            mem[_2755 + 189] = 96
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _2815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _2815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_2755 + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _2815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _2815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                            mem[_2755 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _2755 + (2 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2755 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_2519):
                                                mem[_2755 + (2 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2755 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    mem[_2755 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2755 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2755 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2755 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2755 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 10^18 * _2480 / stor7 * _2488 / _2484, 10^18 * _2480 / stor7 * _2488 / _2484, address(this.address), 128, 96, mem[_2755 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_2755 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_2755 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2755 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2755 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2755 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2755 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 10^18 * _2480 / stor7 * _2488 / _2484, 0, address(this.address), 128, 96, mem[_2755 + (2 * ceil32(return_data.size)) + 481 len 96]
                                            else:
                                                mem[_2755 + (2 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2755 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    mem[_2755 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2755 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2755 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2755 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2755 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 10^18 * _2480 / stor7 * _2488 / _2484, address(this.address), 128, 96, mem[_2755 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_2755 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_2755 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2755 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2755 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2755 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2755 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, address(this.address), 128, 96, mem[_2755 + (2 * ceil32(return_data.size)) + 481 len 96]
                                        else:
                                            mem[_2755 + 193] = address(_2519)
                                            mem[_2755 + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_2519), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            mem[_2755 + 189] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2755 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                            mem[_2755 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                            mem[_2755 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                            mem[_2755 + ceil32(return_data.size) + 189] = 96
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_2755 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2755 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_2755 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_2755 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _2755 + (4 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2755 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_2519):
                                                mem[_2755 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2755 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                else:
                                                    mem[_2755 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_2755 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2755 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                else:
                                                    mem[_2755 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_2755 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_2755 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_2755 + (4 * ceil32(return_data.size)) + 449] = 96
                                            s = 0
                                            while s < 96:
                                                mem[s + _2755 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2755 + ceil32(return_data.size) + 221]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_2755 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                    else:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _2815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, _2815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2755 + 189 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                        if address(_2519) == address(_2539):
                                            if 100000 * 10^18 * _2480 / stor7 * _2488 / _2484 <= 985 * ext_call.return_data[18 len 14]:
                                                mem[_2755 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2755 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2755 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2755 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2755 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2755 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2755 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_2755 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2755 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2755 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2755 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2755 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2755 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2755 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2755 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2755 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2755 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2755 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2755 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[s + _2755 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2755 + ceil32(return_data.size) + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _2815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2755 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_2755 + ceil32(return_data.size) + 193] = address(_2519)
                                                mem[_2755 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_2519), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_2755 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2755 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2755 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2755 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2755 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2755 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2755 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2755 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2755 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2755 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2755 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2755 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2755 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2755 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2755 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2755 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2755 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2755 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2755 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_2755 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[s + _2755 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2755 + (2 * ceil32(return_data.size)) + 221]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_2755 + (2 * ceil32(return_data.size)) + 189]) > mem[_2755 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_2755 + (4 * ceil32(return_data.size)) + mem[_2755 + (2 * ceil32(return_data.size)) + 189] + 481] = 0
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2755 + (4 * ceil32(return_data.size)) + 321 len ceil32(mem[_2755 + (2 * ceil32(return_data.size)) + 189]) + (7 * ceil32(return_data.size)) + 160]
                                        else:
                                            if 100000 * 10^18 * _2480 / stor7 * _2488 / _2484 <= 985 * ext_call.return_data[50 len 14]:
                                                mem[_2755 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2755 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2755 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2755 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2755 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2755 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2755 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_2755 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2755 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2755 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2755 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2755 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2755 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2755 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2755 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2755 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2755 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2755 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2755 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[s + _2755 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2755 + ceil32(return_data.size) + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _2815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2755 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_2755 + ceil32(return_data.size) + 193] = address(_2519)
                                                mem[_2755 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_2519), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_2755 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2755 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2755 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2755 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2755 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2755 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2755 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2755 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2755 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2755 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2755 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2755 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2755 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2755 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2755 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2755 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2755 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2755 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2755 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_2755 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[s + _2755 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2755 + (2 * ceil32(return_data.size)) + 221]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_2755 + (2 * ceil32(return_data.size)) + 189]) > mem[_2755 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_2755 + (4 * ceil32(return_data.size)) + mem[_2755 + (2 * ceil32(return_data.size)) + 189] + 481] = 0
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2755 + (4 * ceil32(return_data.size)) + 321 len ceil32(mem[_2755 + (2 * ceil32(return_data.size)) + 189]) + (7 * ceil32(return_data.size)) + 160]
                                else:
                                    if not mem[_2529 + 12 len 20]:
                                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                    _2756 = mem[64]
                                    mem[mem[64] + 32] = address(mem[_2529])
                                    mem[mem[64] + 52] = address(_2519)
                                    _2817 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _2819 = sha3(mem[_2817 + 32 len mem[_2817]])
                                    mem[_2756 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2756 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_2756 + 125] = _2819
                                    mem[_2756 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_2756 + 72] = 85
                                    if not uint32(ext_code.size(sha3(0, 17269419903419772280, _2819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                        if 100000 * 10^18 * _2480 / stor7 * _2488 / _2484 <= 0:
                                            mem[_2756 + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                            mem[_2756 + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                            mem[_2756 + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                            mem[_2756 + 189] = 96
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _2819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _2819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_2756 + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _2819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _2819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                            mem[_2756 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _2756 + (2 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2756 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_2519):
                                                mem[_2756 + (2 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2756 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    mem[_2756 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2756 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2756 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2756 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2756 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 10^18 * _2480 / stor7 * _2488 / _2484, 10^18 * _2480 / stor7 * _2488 / _2484, address(this.address), 128, 96, mem[_2756 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_2756 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_2756 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2756 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2756 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2756 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2756 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 10^18 * _2480 / stor7 * _2488 / _2484, 0, address(this.address), 128, 96, mem[_2756 + (2 * ceil32(return_data.size)) + 481 len 96]
                                            else:
                                                mem[_2756 + (2 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2756 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    mem[_2756 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2756 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2756 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2756 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2756 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 10^18 * _2480 / stor7 * _2488 / _2484, address(this.address), 128, 96, mem[_2756 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_2756 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_2756 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_2756 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_2756 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[s + _2756 + (2 * ceil32(return_data.size)) + 481] = mem[s + _2756 + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _2819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _2819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, address(this.address), 128, 96, mem[_2756 + (2 * ceil32(return_data.size)) + 481 len 96]
                                        else:
                                            mem[_2756 + 193] = address(_2519)
                                            mem[_2756 + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_2519), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            mem[_2756 + 189] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2756 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                            mem[_2756 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                            mem[_2756 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                            mem[_2756 + ceil32(return_data.size) + 189] = 96
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_2756 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2756 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_2756 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_2756 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _2756 + (4 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_2756 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_2519):
                                                mem[_2756 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2756 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                else:
                                                    mem[_2756 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_2756 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2756 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                else:
                                                    mem[_2756 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_2756 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_2756 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_2756 + (4 * ceil32(return_data.size)) + 449] = 96
                                            s = 0
                                            while s < 96:
                                                mem[s + _2756 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2756 + ceil32(return_data.size) + 221]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_2756 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                    else:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _2819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, _2819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2756 + 189 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                        if address(_2519) == address(_2539):
                                            if 100000 * 10^18 * _2480 / stor7 * _2488 / _2484 <= 985 * ext_call.return_data[18 len 14]:
                                                mem[_2756 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2756 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2756 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2756 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2756 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2756 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2756 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_2756 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2756 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2756 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2756 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2756 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2756 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2756 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2756 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2756 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2756 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2756 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2756 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[s + _2756 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2756 + ceil32(return_data.size) + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _2819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2756 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_2756 + ceil32(return_data.size) + 193] = address(_2519)
                                                mem[_2756 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_2519), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_2756 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2756 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2756 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2756 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2756 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2756 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2756 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2756 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2756 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2756 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2756 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2756 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2756 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2756 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2756 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2756 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2756 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2756 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2756 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_2756 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[s + _2756 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2756 + (2 * ceil32(return_data.size)) + 221]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_2756 + (2 * ceil32(return_data.size)) + 189]) > mem[_2756 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_2756 + (4 * ceil32(return_data.size)) + mem[_2756 + (2 * ceil32(return_data.size)) + 189] + 481] = 0
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2756 + (4 * ceil32(return_data.size)) + 321 len ceil32(mem[_2756 + (2 * ceil32(return_data.size)) + 189]) + (7 * ceil32(return_data.size)) + 160]
                                        else:
                                            if 100000 * 10^18 * _2480 / stor7 * _2488 / _2484 <= 985 * ext_call.return_data[50 len 14]:
                                                mem[_2756 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2756 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2756 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2756 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2756 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2756 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _2819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2756 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_2756 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2756 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2756 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2756 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2756 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2756 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2756 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2756 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2756 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2756 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2756 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2756 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[s + _2756 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2756 + ceil32(return_data.size) + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _2819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _2819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2756 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_2756 + ceil32(return_data.size) + 193] = address(_2519)
                                                mem[_2756 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_2519), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_2756 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2756 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + arg1 + 36)])
                                                mem[_2756 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + arg2 + 36)])
                                                mem[_2756 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                                                mem[_2756 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_2756 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2756 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_2756 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2756 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_2756 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_2519):
                                                    mem[_2756 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2756 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2756 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_2756 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_2519):
                                                        mem[_2756 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _2480 / stor7 * _2488 / _2484
                                                    else:
                                                        mem[_2756 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_2756 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_2756 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_2756 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_2756 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[s + _2756 + (4 * ceil32(return_data.size)) + 481] = mem[s + _2756 + (2 * ceil32(return_data.size)) + 221]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_2756 + (2 * ceil32(return_data.size)) + 189]) > mem[_2756 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_2756 + (4 * ceil32(return_data.size)) + mem[_2756 + (2 * ceil32(return_data.size)) + 189] + 481] = 0
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_2756 + (4 * ceil32(return_data.size)) + 321 len ceil32(mem[_2756 + (2 * ceil32(return_data.size)) + 189]) + (7 * ceil32(return_data.size)) + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
