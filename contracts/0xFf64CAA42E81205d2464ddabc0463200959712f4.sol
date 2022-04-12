contract main {




// =====================  Runtime code  =====================


#
#  - sub_23c907fb(?)
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
    return stor1
}

function confirmRecipientChange() {
    if address(stor0) != msg.sender:
        revert with 0, 'Unauthorized'
    if not stor3:
        revert with 0, 'Initiate change first'
    if block.timestamp <= stor2:
        revert with 0, 'Wait longer'
    address(stor0) = stor1
    emit RecipientChanged(address(stor0));
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
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.oracle() with:
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    stor6 = ext_call.return_data[0]
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.liquidationIncentiveMantissa() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
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
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(return_data.size) + 132] = address(stor0)
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(arg1) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
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
    require arg4 == arg4
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
        if arg3 == 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
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
            if arg2 == 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
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
                            args mem[(8 * ceil32(return_data.size)) + 417 len (13 * ceil32(return_data.size)) + ceil32(5 * ceil32(return_data.size)) + 163]
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
                                args mem[(8 * ceil32(return_data.size)) + 417 len (13 * ceil32(return_data.size)) + ceil32(5 * ceil32(return_data.size)) + 163]
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
                                args mem[(8 * ceil32(return_data.size)) + 417 len (13 * ceil32(return_data.size)) + ceil32(7 * ceil32(return_data.size)) + 163]
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
                                args mem[(8 * ceil32(return_data.size)) + 417 len (13 * ceil32(return_data.size)) + ceil32(5 * ceil32(return_data.size)) + 163]
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
                                args mem[(8 * ceil32(return_data.size)) + 417 len (13 * ceil32(return_data.size)) + ceil32(7 * ceil32(return_data.size)) + 163]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a44206f1(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.getAccountLiquidity(address rg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if not ext_call.return_data[32]:
        require ext_code.size(address(arg2))
        call address(arg2).borrowBalanceCurrent(address rg1) with:
             gas gas_remaining wei
            args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg3))
        call address(arg3).balanceOfUnderlying(address rg1) with:
             gas gas_remaining wei
            args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require stor7
        require ext_code.size(priceOracleAddress)
        staticcall priceOracleAddress.getUnderlyingPrice(address rg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(priceOracleAddress)
        staticcall priceOracleAddress.getUnderlyingPrice(address rg1) with:
                gas gas_remaining wei
               args address(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[0]
        if ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] < 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0]:
            if address(arg2) == address(arg3):
                require ext_code.size(address(arg2))
                staticcall address(arg2).underlying() with:
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
                                args ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                    else:
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
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
                                args ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                    else:
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
            else:
                if address(arg3) == 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).underlying() with:
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
                                    args ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
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
                                    args ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                else:
                    if address(arg2) == 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).underlying() with:
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
                                        args ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                            else:
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
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
                                        args ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                            else:
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                    else:
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).underlying() with:
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
                            if 100000 * ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
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
                                            args ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(13 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                    else:
                                        call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(13 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                else:
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(13 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                    else:
                                        call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(13 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
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
                                            args ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                    else:
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                else:
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                    else:
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
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
                                if 100000 * ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 985 * ext_call.return_data[18 len 14]:
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
                                                args ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                        else:
                                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                    else:
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                        else:
                                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
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
                                    mem[(13 * ceil32(return_data.size)) + 317] = address(arg1)
                                    mem[(13 * ceil32(return_data.size)) + 349] = address(arg2)
                                    mem[(13 * ceil32(return_data.size)) + 381] = address(arg3)
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
                                        mem[(16 * ceil32(return_data.size)) + 417] = ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            mem[(16 * ceil32(return_data.size)) + 449] = ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                                        else:
                                            mem[(16 * ceil32(return_data.size)) + 449] = 0
                                    else:
                                        mem[(16 * ceil32(return_data.size)) + 417] = 0
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            mem[(16 * ceil32(return_data.size)) + 449] = ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
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
                                        args mem[(16 * ceil32(return_data.size)) + 417 len (5 * ceil32(return_data.size)) + ceil32(4 * ceil32(return_data.size)) + 163]
                            else:
                                if 100000 * ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 985 * ext_call.return_data[50 len 14]:
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
                                                args ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                        else:
                                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                    else:
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                        else:
                                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
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
                                    mem[(13 * ceil32(return_data.size)) + 317] = address(arg1)
                                    mem[(13 * ceil32(return_data.size)) + 349] = address(arg2)
                                    mem[(13 * ceil32(return_data.size)) + 381] = address(arg3)
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
                                        mem[(16 * ceil32(return_data.size)) + 417] = ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            mem[(16 * ceil32(return_data.size)) + 449] = ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                                        else:
                                            mem[(16 * ceil32(return_data.size)) + 449] = 0
                                    else:
                                        mem[(16 * ceil32(return_data.size)) + 417] = 0
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            mem[(16 * ceil32(return_data.size)) + 449] = ext_call.return_data[0] * stor6 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
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
                                        args mem[(16 * ceil32(return_data.size)) + 417 len (5 * ceil32(return_data.size)) + ceil32(4 * ceil32(return_data.size)) + 163]
        else:
            if address(arg2) == address(arg3):
                require ext_code.size(address(arg2))
                staticcall address(arg2).underlying() with:
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
                                args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                    else:
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
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
                                args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                    else:
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
            else:
                if address(arg3) == 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).underlying() with:
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
                                    args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
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
                                    args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                else:
                    if address(arg2) == 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).underlying() with:
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
                                        args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                            else:
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(12907147938406234195, address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
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
                                        args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                            else:
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(12 * ceil32(return_data.size)) + 673 len 20 * ceil32(return_data.size)]
                    else:
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).underlying() with:
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
                                            args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(13 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                    else:
                                        call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(13 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                else:
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(13 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                    else:
                                        call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(13 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
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
                                            args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                    else:
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                else:
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                    else:
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
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
                                                args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                        else:
                                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                    else:
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                        else:
                                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
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
                                    mem[(13 * ceil32(return_data.size)) + 317] = address(arg1)
                                    mem[(13 * ceil32(return_data.size)) + 349] = address(arg2)
                                    mem[(13 * ceil32(return_data.size)) + 381] = address(arg3)
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
                                        args mem[(16 * ceil32(return_data.size)) + 417 len (5 * ceil32(return_data.size)) + ceil32(4 * ceil32(return_data.size)) + 163]
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
                                                args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                        else:
                                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                    else:
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 10^18 * ext_call.return_data[0] / stor7 * ext_call.return_data[0] / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
                                        else:
                                            call address(sha3(0, 17269419903419772280, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), address(arg3), mem[(14 * ceil32(return_data.size)) + 673 len 5 * ceil32(return_data.size)]
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
                                    mem[(13 * ceil32(return_data.size)) + 317] = address(arg1)
                                    mem[(13 * ceil32(return_data.size)) + 349] = address(arg2)
                                    mem[(13 * ceil32(return_data.size)) + 381] = address(arg3)
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
                                        args mem[(16 * ceil32(return_data.size)) + 417 len (5 * ceil32(return_data.size)) + ceil32(4 * ceil32(return_data.size)) + 163]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_d337e059(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 192
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == address(cd[100])
    require cd[132] == address(cd[132])
    require cd[164] == address(cd[164])
    mem[96] = 0xecc1e98400000000000000000000000000000000000000000000000000000000
    mem[100] = 96
    mem[196] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = (32 * ('cd', 4).length) + 228
    u = 228
    while idx < ('cd', 4).length:
        mem[u] = t - 228
        require cd[s] < calldata.size + -cd[4] - 67
        require cd[(cd[s] + cd[4] + 36)] <= test266151307()
        require cd[4] + 36 <= calldata.size - cd[(cd[s] + cd[4] + 36)]
        mem[t] = cd[(cd[s] + cd[4] + 36)]
        mem[t + 32 len cd[(cd[s] + cd[4] + 36)]] = call.data[cd[s] + cd[4] + 68 len cd[(cd[s] + cd[4] + 36)]]
        mem[t + cd[(cd[s] + cd[4] + 36)] + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(cd[s] + cd[4] + 36)]) + 32
        u = u + 32
        continue 
    mem[132] = (64 * ('cd', 4).length) + 128
    mem[(64 * ('cd', 4).length) + 228] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 260
    u = (64 * ('cd', 4).length) + 260
    while idx < ('cd', 36).length:
        mem[u] = t + -(64 * ('cd', 4).length) - 260
        require cd[s] < calldata.size + -cd[36] - 67
        require cd[(cd[s] + cd[36] + 36)] <= test266151307()
        require cd[36] + 36 <= calldata.size - cd[(cd[s] + cd[36] + 36)]
        mem[t] = cd[(cd[s] + cd[36] + 36)]
        mem[t + 32 len cd[(cd[s] + cd[36] + 36)]] = call.data[cd[s] + cd[36] + 68 len cd[(cd[s] + cd[36] + 36)]]
        mem[t + cd[(cd[s] + cd[36] + 36)] + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(cd[s] + cd[36] + 36)]) + 32
        u = u + 32
        continue 
    mem[164] = (64 * ('cd', 4).length) + (64 * ('cd', 36).length) + 160
    mem[(64 * ('cd', 4).length) + (64 * ('cd', 36).length) + 260] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = (64 * ('cd', 4).length) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 292
    u = (64 * ('cd', 4).length) + (64 * ('cd', 36).length) + 292
    while idx < ('cd', 68).length:
        mem[u] = t + -(64 * ('cd', 4).length) + -(64 * ('cd', 36).length) - 292
        require cd[s] < calldata.size + -cd[68] - 67
        require cd[(cd[s] + cd[68] + 36)] <= test266151307()
        require cd[68] + 36 <= calldata.size - cd[(cd[s] + cd[68] + 36)]
        mem[t] = cd[(cd[s] + cd[68] + 36)]
        mem[t + 32 len cd[(cd[s] + cd[68] + 36)]] = call.data[cd[s] + cd[68] + 68 len cd[(cd[s] + cd[68] + 36)]]
        mem[t + cd[(cd[s] + cd[68] + 36)] + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(cd[s] + cd[68] + 36)]) + 32
        u = u + 32
        continue 
    require ext_code.size(priceOracleAddress)
    call priceOracleAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (64 * ('cd', 4).length) + (64 * ('cd', 36).length) + (64 * ('cd', 68).length) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.getAccountLiquidity(address rg1) with:
            gas gas_remaining wei
           args address(cd[100])
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _410 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_410] == mem[_410]
    require mem[_410 + 32] == mem[_410 + 32]
    require mem[_410 + 64] == mem[_410 + 64]
    if not mem[_410 + 32]:
        mem[mem[64] + 4] = address(cd[100])
        require ext_code.size(address(cd[132]))
        call address(cd[132]).borrowBalanceCurrent(address rg1) with:
             gas gas_remaining wei
            args address(cd[100])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _416 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _417 = mem[_416]
        require mem[_416] == mem[_416]
        mem[mem[64] + 4] = address(cd[100])
        require ext_code.size(address(cd[164]))
        call address(cd[164]).balanceOfUnderlying(address rg1) with:
             gas gas_remaining wei
            args address(cd[100])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _420 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _421 = mem[_420]
        require mem[_420] == mem[_420]
        require stor7
        mem[mem[64] + 4] = address(cd[132])
        require ext_code.size(priceOracleAddress)
        staticcall priceOracleAddress.getUnderlyingPrice(address rg1) with:
                gas gas_remaining wei
               args address(cd[132])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _424 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _425 = mem[_424]
        require mem[_424] == mem[_424]
        mem[mem[64] + 4] = address(cd[164])
        require ext_code.size(priceOracleAddress)
        staticcall priceOracleAddress.getUnderlyingPrice(address rg1) with:
                gas gas_remaining wei
               args address(cd[164])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _428 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _429 = mem[_428]
        require mem[_428] == mem[_428]
        require _425
        if _417 * stor6 / 10^18 * _425 < 10^18 * _421 / stor7 * mem[_428]:
            if address(cd[132]) == address(cd[164]):
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).underlying() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _438 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _454 = mem[_438]
                require mem[_438] == mem[_438 + 12 len 20]
                if mem[_438 + 12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                if mem[_438 + 12 len 20] >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                    mem[mem[64] + 52] = address(_454)
                    _546 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_546 + 32 len mem[_546]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_546 + 32 len mem[_546]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_546 + 32 len mem[_546]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_546 + 32 len mem[_546]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_546 + 32 len mem[_546]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    if ext_call.return_data[12 len 20] == address(_454):
                        if ext_call.return_data[12 len 20] == address(_454):
                            call address(sha3(0, 17269419903419772280, sha3(mem[_546 + 32 len mem[_546]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _417 * stor6 / 10^18 * _425 / _425, _417 * stor6 / 10^18 * _425 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(mem[_546 + 32 len mem[_546]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _417 * stor6 / 10^18 * _425 / _425, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                    else:
                        if ext_call.return_data[12 len 20] == address(_454):
                            call address(sha3(0, 17269419903419772280, sha3(mem[_546 + 32 len mem[_546]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _417 * stor6 / 10^18 * _425 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(mem[_546 + 32 len mem[_546]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                else:
                    if not mem[_438 + 12 len 20]:
                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                    mem[mem[64] + 32] = address(mem[_438])
                    mem[mem[64] + 52] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                    _542 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_542 + 32 len mem[_542]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_542 + 32 len mem[_542]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_542 + 32 len mem[_542]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_542 + 32 len mem[_542]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_542 + 32 len mem[_542]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    if ext_call.return_data[12 len 20] == address(_454):
                        if ext_call.return_data[12 len 20] == address(_454):
                            call address(sha3(0, 17269419903419772280, sha3(mem[_542 + 32 len mem[_542]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _417 * stor6 / 10^18 * _425 / _425, _417 * stor6 / 10^18 * _425 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(mem[_542 + 32 len mem[_542]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _417 * stor6 / 10^18 * _425 / _425, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                    else:
                        if ext_call.return_data[12 len 20] == address(_454):
                            call address(sha3(0, 17269419903419772280, sha3(mem[_542 + 32 len mem[_542]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _417 * stor6 / 10^18 * _425 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(mem[_542 + 32 len mem[_542]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
            else:
                if address(cd[164]) == 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
                    require ext_code.size(address(cd[132]))
                    staticcall address(cd[132]).underlying() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _448 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _456 = mem[_448]
                    require mem[_448] == mem[_448 + 12 len 20]
                    if mem[_448 + 12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                    if mem[_448 + 12 len 20] >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                        mem[mem[64] + 52] = address(_456)
                        _562 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_562 + 32 len mem[_562]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_562 + 32 len mem[_562]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_562 + 32 len mem[_562]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_562 + 32 len mem[_562]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_562 + 32 len mem[_562]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        if ext_call.return_data[12 len 20] == address(_456):
                            if ext_call.return_data[12 len 20] == address(_456):
                                call address(sha3(0, 17269419903419772280, sha3(mem[_562 + 32 len mem[_562]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _417 * stor6 / 10^18 * _425 / _425, _417 * stor6 / 10^18 * _425 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(mem[_562 + 32 len mem[_562]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _417 * stor6 / 10^18 * _425 / _425, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                        else:
                            if ext_call.return_data[12 len 20] == address(_456):
                                call address(sha3(0, 17269419903419772280, sha3(mem[_562 + 32 len mem[_562]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _417 * stor6 / 10^18 * _425 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(mem[_562 + 32 len mem[_562]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                    else:
                        if not mem[_448 + 12 len 20]:
                            revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 32] = address(mem[_448])
                        mem[mem[64] + 52] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                        _558 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_558 + 32 len mem[_558]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_558 + 32 len mem[_558]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_558 + 32 len mem[_558]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_558 + 32 len mem[_558]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_558 + 32 len mem[_558]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        if ext_call.return_data[12 len 20] == address(_456):
                            if ext_call.return_data[12 len 20] == address(_456):
                                call address(sha3(0, 17269419903419772280, sha3(mem[_558 + 32 len mem[_558]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _417 * stor6 / 10^18 * _425 / _425, _417 * stor6 / 10^18 * _425 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(mem[_558 + 32 len mem[_558]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _417 * stor6 / 10^18 * _425 / _425, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                        else:
                            if ext_call.return_data[12 len 20] == address(_456):
                                call address(sha3(0, 17269419903419772280, sha3(mem[_558 + 32 len mem[_558]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _417 * stor6 / 10^18 * _425 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(mem[_558 + 32 len mem[_558]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                else:
                    if address(cd[132]) == 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
                        require ext_code.size(address(cd[164]))
                        staticcall address(cd[164]).underlying() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _451 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _459 = mem[_451]
                        require mem[_451] == mem[_451 + 12 len 20]
                        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == mem[_451 + 12 len 20]:
                            revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 < mem[_451 + 12 len 20]:
                            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                            mem[mem[64] + 52] = address(_459)
                            _578 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_578 + 32 len mem[_578]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_578 + 32 len mem[_578]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_578 + 32 len mem[_578]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_578 + 32 len mem[_578]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_578 + 32 len mem[_578]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_578 + 32 len mem[_578]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _417 * stor6 / 10^18 * _425 / _425, _417 * stor6 / 10^18 * _425 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_578 + 32 len mem[_578]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _417 * stor6 / 10^18 * _425 / _425, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                            else:
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_578 + 32 len mem[_578]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _417 * stor6 / 10^18 * _425 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_578 + 32 len mem[_578]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                        else:
                            if not mem[_451 + 12 len 20]:
                                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                            mem[mem[64] + 32] = address(mem[_451])
                            mem[mem[64] + 52] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                            _582 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_582 + 32 len mem[_582]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_582 + 32 len mem[_582]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_582 + 32 len mem[_582]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_582 + 32 len mem[_582]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_582 + 32 len mem[_582]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_582 + 32 len mem[_582]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _417 * stor6 / 10^18 * _425 / _425, _417 * stor6 / 10^18 * _425 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_582 + 32 len mem[_582]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _417 * stor6 / 10^18 * _425 / _425, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                            else:
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_582 + 32 len mem[_582]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _417 * stor6 / 10^18 * _425 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_582 + 32 len mem[_582]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                    else:
                        require ext_code.size(address(cd[132]))
                        staticcall address(cd[132]).underlying() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _450 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _458 = mem[_450]
                        require mem[_450] == mem[_450 + 12 len 20]
                        require ext_code.size(address(cd[164]))
                        staticcall address(cd[164]).underlying() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _468 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _478 = mem[_468]
                        require mem[_468] == mem[_468 + 12 len 20]
                        if address(_458) == mem[_468 + 12 len 20]:
                            revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                        if address(_458) < mem[_468 + 12 len 20]:
                            if not address(_458):
                                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                            if address(_458) == mem[_468 + 12 len 20]:
                                revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                            if address(_458) < mem[_468 + 12 len 20]:
                                if not address(_458):
                                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                _530 = mem[64]
                                mem[mem[64] + 32] = address(_458)
                                mem[mem[64] + 52] = address(_478)
                                _598 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _600 = sha3(mem[_598 + 32 len mem[_598]])
                                if not uint32(ext_code.size(sha3(0, 17269419903419772280, sha3(mem[_598 + 32 len mem[_598]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                    if 100000 * _417 * stor6 / 10^18 * _425 / _425 <= 0:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_598 + 32 len mem[_598]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_598 + 32 len mem[_598]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_598 + 32 len mem[_598]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_598 + 32 len mem[_598]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_598 + 32 len mem[_598]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        if ext_call.return_data[12 len 20] == address(_458):
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_598 + 32 len mem[_598]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args _417 * stor6 / 10^18 * _425 / _425, _417 * stor6 / 10^18 * _425 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_598 + 32 len mem[_598]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args _417 * stor6 / 10^18 * _425 / _425, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                        else:
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_598 + 32 len mem[_598]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, _417 * stor6 / 10^18 * _425 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_598 + 32 len mem[_598]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                    else:
                                        require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                        staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                gas gas_remaining wei
                                               args address(_458), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token0() with:
                                                gas gas_remaining wei
                                        mem[_530 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_530 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token1() with:
                                                gas gas_remaining wei
                                               args mem[_530 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                        mem[_530 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if ext_call.return_data[12 len 20] == address(_458):
                                            mem[_530 + (4 * ceil32(return_data.size)) + 321] = _417 * stor6 / 10^18 * _425 / _425
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                mem[_530 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                            else:
                                                mem[_530 + (4 * ceil32(return_data.size)) + 353] = 0
                                        else:
                                            mem[_530 + (4 * ceil32(return_data.size)) + 321] = 0
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                mem[_530 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                            else:
                                                mem[_530 + (4 * ceil32(return_data.size)) + 353] = 0
                                        mem[_530 + (4 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_530 + (4 * ceil32(return_data.size)) + 417] = 128
                                        mem[_530 + (4 * ceil32(return_data.size)) + 449] = 96
                                        mem[_530 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[_530 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                else:
                                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_598 + 32 len mem[_598]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_598 + 32 len mem[_598]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                    if address(_458) == address(_458):
                                        if 100000 * _417 * stor6 / 10^18 * _425 / _425 <= 985 * ext_call.return_data[18 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_598 + 32 len mem[_598]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_598 + 32 len mem[_598]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_530 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_530 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _600, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _600, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_530 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_530 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                mem[_530 + (4 * ceil32(return_data.size)) + 321] = _417 * stor6 / 10^18 * _425 / _425
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_530 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_530 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_530 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_530 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_530 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_530 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_530 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_530 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_530 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _600, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _600, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_530 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_458), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_530 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_530 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_530 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                mem[_530 + (4 * ceil32(return_data.size)) + 321] = _417 * stor6 / 10^18 * _425 / _425
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_530 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_530 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_530 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_530 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_530 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_530 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_530 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_530 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_530 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_530 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                    else:
                                        if 100000 * _417 * stor6 / 10^18 * _425 / _425 <= 985 * ext_call.return_data[50 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_598 + 32 len mem[_598]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_598 + 32 len mem[_598]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_530 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_530 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _600, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _600, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_530 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_530 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                mem[_530 + (4 * ceil32(return_data.size)) + 321] = _417 * stor6 / 10^18 * _425 / _425
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_530 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_530 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_530 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_530 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_530 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_530 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_530 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_530 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_530 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _600, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _600, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_530 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_458), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_530 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_530 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_530 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                mem[_530 + (4 * ceil32(return_data.size)) + 321] = _417 * stor6 / 10^18 * _425 / _425
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_530 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_530 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_530 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_530 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_530 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_530 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_530 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_530 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_530 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_530 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                            else:
                                if not mem[_468 + 12 len 20]:
                                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                _531 = mem[64]
                                mem[mem[64] + 32] = address(mem[_468])
                                mem[mem[64] + 52] = address(_458)
                                _602 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _604 = sha3(mem[_602 + 32 len mem[_602]])
                                if not uint32(ext_code.size(sha3(0, 17269419903419772280, sha3(mem[_602 + 32 len mem[_602]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                    if 100000 * _417 * stor6 / 10^18 * _425 / _425 <= 0:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_602 + 32 len mem[_602]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_602 + 32 len mem[_602]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_602 + 32 len mem[_602]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_602 + 32 len mem[_602]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_602 + 32 len mem[_602]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        if ext_call.return_data[12 len 20] == address(_458):
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_602 + 32 len mem[_602]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args _417 * stor6 / 10^18 * _425 / _425, _417 * stor6 / 10^18 * _425 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_602 + 32 len mem[_602]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args _417 * stor6 / 10^18 * _425 / _425, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                        else:
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_602 + 32 len mem[_602]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, _417 * stor6 / 10^18 * _425 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_602 + 32 len mem[_602]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                    else:
                                        require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                        staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                gas gas_remaining wei
                                               args address(_458), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token0() with:
                                                gas gas_remaining wei
                                        mem[_531 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_531 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token1() with:
                                                gas gas_remaining wei
                                               args mem[_531 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                        mem[_531 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if ext_call.return_data[12 len 20] == address(_458):
                                            mem[_531 + (4 * ceil32(return_data.size)) + 321] = _417 * stor6 / 10^18 * _425 / _425
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                mem[_531 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                            else:
                                                mem[_531 + (4 * ceil32(return_data.size)) + 353] = 0
                                        else:
                                            mem[_531 + (4 * ceil32(return_data.size)) + 321] = 0
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                mem[_531 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                            else:
                                                mem[_531 + (4 * ceil32(return_data.size)) + 353] = 0
                                        mem[_531 + (4 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_531 + (4 * ceil32(return_data.size)) + 417] = 128
                                        mem[_531 + (4 * ceil32(return_data.size)) + 449] = 96
                                        mem[_531 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[_531 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                else:
                                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_602 + 32 len mem[_602]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_602 + 32 len mem[_602]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                    if address(_458) == address(_458):
                                        if 100000 * _417 * stor6 / 10^18 * _425 / _425 <= 985 * ext_call.return_data[18 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_602 + 32 len mem[_602]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_602 + 32 len mem[_602]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_531 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_531 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _604, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _604, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_531 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_531 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                mem[_531 + (4 * ceil32(return_data.size)) + 321] = _417 * stor6 / 10^18 * _425 / _425
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_531 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_531 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_531 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_531 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_531 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_531 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_531 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_531 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_531 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _604, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _604, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_531 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_458), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_531 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_531 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_531 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                mem[_531 + (4 * ceil32(return_data.size)) + 321] = _417 * stor6 / 10^18 * _425 / _425
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_531 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_531 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_531 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_531 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_531 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_531 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_531 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_531 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_531 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_531 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                    else:
                                        if 100000 * _417 * stor6 / 10^18 * _425 / _425 <= 985 * ext_call.return_data[50 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_602 + 32 len mem[_602]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_602 + 32 len mem[_602]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_531 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_531 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _604, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _604, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_531 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_531 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                mem[_531 + (4 * ceil32(return_data.size)) + 321] = _417 * stor6 / 10^18 * _425 / _425
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_531 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_531 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_531 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_531 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_531 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_531 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_531 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_531 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_531 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _604, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _604, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_531 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_458), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_531 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_531 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_531 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                mem[_531 + (4 * ceil32(return_data.size)) + 321] = _417 * stor6 / 10^18 * _425 / _425
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_531 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_531 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_531 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_531 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_531 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_531 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_531 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_531 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_531 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_531 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                        else:
                            if not mem[_468 + 12 len 20]:
                                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                            if address(_458) == mem[_468 + 12 len 20]:
                                revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                            if address(_458) < mem[_468 + 12 len 20]:
                                if not address(_458):
                                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                _532 = mem[64]
                                mem[mem[64] + 32] = address(_458)
                                mem[mem[64] + 52] = address(_478)
                                _606 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _608 = sha3(mem[_606 + 32 len mem[_606]])
                                if not uint32(ext_code.size(sha3(0, 17269419903419772280, sha3(mem[_606 + 32 len mem[_606]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                    if 100000 * _417 * stor6 / 10^18 * _425 / _425 <= 0:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_606 + 32 len mem[_606]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_606 + 32 len mem[_606]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_606 + 32 len mem[_606]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_606 + 32 len mem[_606]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_606 + 32 len mem[_606]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        if ext_call.return_data[12 len 20] == address(_458):
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_606 + 32 len mem[_606]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args _417 * stor6 / 10^18 * _425 / _425, _417 * stor6 / 10^18 * _425 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_606 + 32 len mem[_606]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args _417 * stor6 / 10^18 * _425 / _425, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                        else:
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_606 + 32 len mem[_606]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, _417 * stor6 / 10^18 * _425 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_606 + 32 len mem[_606]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                    else:
                                        require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                        staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                gas gas_remaining wei
                                               args address(_458), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token0() with:
                                                gas gas_remaining wei
                                        mem[_532 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_532 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token1() with:
                                                gas gas_remaining wei
                                               args mem[_532 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                        mem[_532 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if ext_call.return_data[12 len 20] == address(_458):
                                            mem[_532 + (4 * ceil32(return_data.size)) + 321] = _417 * stor6 / 10^18 * _425 / _425
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                mem[_532 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                            else:
                                                mem[_532 + (4 * ceil32(return_data.size)) + 353] = 0
                                        else:
                                            mem[_532 + (4 * ceil32(return_data.size)) + 321] = 0
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                mem[_532 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                            else:
                                                mem[_532 + (4 * ceil32(return_data.size)) + 353] = 0
                                        mem[_532 + (4 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_532 + (4 * ceil32(return_data.size)) + 417] = 128
                                        mem[_532 + (4 * ceil32(return_data.size)) + 449] = 96
                                        mem[_532 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[_532 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                else:
                                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_606 + 32 len mem[_606]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_606 + 32 len mem[_606]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                    if address(_458) == address(_478):
                                        if 100000 * _417 * stor6 / 10^18 * _425 / _425 <= 985 * ext_call.return_data[18 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_606 + 32 len mem[_606]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_606 + 32 len mem[_606]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_532 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_532 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _608, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _608, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_532 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_532 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                mem[_532 + (4 * ceil32(return_data.size)) + 321] = _417 * stor6 / 10^18 * _425 / _425
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_532 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_532 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_532 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_532 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_532 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_532 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_532 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_532 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_532 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _608, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _608, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_532 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_458), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_532 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_532 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_532 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                mem[_532 + (4 * ceil32(return_data.size)) + 321] = _417 * stor6 / 10^18 * _425 / _425
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_532 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_532 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_532 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_532 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_532 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_532 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_532 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_532 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_532 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_532 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                    else:
                                        if 100000 * _417 * stor6 / 10^18 * _425 / _425 <= 985 * ext_call.return_data[50 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_606 + 32 len mem[_606]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_606 + 32 len mem[_606]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_532 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_532 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _608, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _608, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_532 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_532 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                mem[_532 + (4 * ceil32(return_data.size)) + 321] = _417 * stor6 / 10^18 * _425 / _425
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_532 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_532 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_532 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_532 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_532 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_532 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_532 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_532 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_532 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _608, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _608, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_532 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_458), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_532 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_532 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_532 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                mem[_532 + (4 * ceil32(return_data.size)) + 321] = _417 * stor6 / 10^18 * _425 / _425
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_532 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_532 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_532 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_532 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_532 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_532 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_532 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_532 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_532 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_532 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                            else:
                                if not mem[_468 + 12 len 20]:
                                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                _533 = mem[64]
                                mem[mem[64] + 32] = address(mem[_468])
                                mem[mem[64] + 52] = address(_458)
                                _610 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _612 = sha3(mem[_610 + 32 len mem[_610]])
                                if not uint32(ext_code.size(sha3(0, 17269419903419772280, sha3(mem[_610 + 32 len mem[_610]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                    if 100000 * _417 * stor6 / 10^18 * _425 / _425 <= 0:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_610 + 32 len mem[_610]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_610 + 32 len mem[_610]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_610 + 32 len mem[_610]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_610 + 32 len mem[_610]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_610 + 32 len mem[_610]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        if ext_call.return_data[12 len 20] == address(_458):
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_610 + 32 len mem[_610]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args _417 * stor6 / 10^18 * _425 / _425, _417 * stor6 / 10^18 * _425 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_610 + 32 len mem[_610]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args _417 * stor6 / 10^18 * _425 / _425, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                        else:
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_610 + 32 len mem[_610]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, _417 * stor6 / 10^18 * _425 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_610 + 32 len mem[_610]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                    else:
                                        require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                        staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                gas gas_remaining wei
                                               args address(_458), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token0() with:
                                                gas gas_remaining wei
                                        mem[_533 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_533 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token1() with:
                                                gas gas_remaining wei
                                               args mem[_533 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                        mem[_533 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if ext_call.return_data[12 len 20] == address(_458):
                                            mem[_533 + (4 * ceil32(return_data.size)) + 321] = _417 * stor6 / 10^18 * _425 / _425
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                mem[_533 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                            else:
                                                mem[_533 + (4 * ceil32(return_data.size)) + 353] = 0
                                        else:
                                            mem[_533 + (4 * ceil32(return_data.size)) + 321] = 0
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                mem[_533 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                            else:
                                                mem[_533 + (4 * ceil32(return_data.size)) + 353] = 0
                                        mem[_533 + (4 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_533 + (4 * ceil32(return_data.size)) + 417] = 128
                                        mem[_533 + (4 * ceil32(return_data.size)) + 449] = 96
                                        mem[_533 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[_533 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                else:
                                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_610 + 32 len mem[_610]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_610 + 32 len mem[_610]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                    if address(_458) == address(_478):
                                        if 100000 * _417 * stor6 / 10^18 * _425 / _425 <= 985 * ext_call.return_data[18 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_610 + 32 len mem[_610]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_610 + 32 len mem[_610]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_533 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_533 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _612, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _612, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_533 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_533 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                mem[_533 + (4 * ceil32(return_data.size)) + 321] = _417 * stor6 / 10^18 * _425 / _425
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_533 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_533 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_533 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_533 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_533 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_533 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_533 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_533 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_533 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _612, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _612, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_533 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_458), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_533 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_533 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_533 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                mem[_533 + (4 * ceil32(return_data.size)) + 321] = _417 * stor6 / 10^18 * _425 / _425
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_533 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_533 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_533 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_533 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_533 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_533 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_533 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_533 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_533 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_533 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                    else:
                                        if 100000 * _417 * stor6 / 10^18 * _425 / _425 <= 985 * ext_call.return_data[50 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_610 + 32 len mem[_610]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_610 + 32 len mem[_610]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_533 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_533 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _612, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _612, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_533 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_533 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                mem[_533 + (4 * ceil32(return_data.size)) + 321] = _417 * stor6 / 10^18 * _425 / _425
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_533 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_533 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_533 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_533 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_533 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_533 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_533 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_533 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_533 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _612, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _612, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_533 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_458), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_533 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_533 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_533 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_458):
                                                mem[_533 + (4 * ceil32(return_data.size)) + 321] = _417 * stor6 / 10^18 * _425 / _425
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_533 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_533 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_533 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_458):
                                                    mem[_533 + (4 * ceil32(return_data.size)) + 353] = _417 * stor6 / 10^18 * _425 / _425
                                                else:
                                                    mem[_533 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_533 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_533 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_533 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_533 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_533 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
        else:
            if address(cd[132]) == address(cd[164]):
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).underlying() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _443 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _455 = mem[_443]
                require mem[_443] == mem[_443 + 12 len 20]
                if mem[_443 + 12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                if mem[_443 + 12 len 20] >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                    mem[mem[64] + 52] = address(_455)
                    _554 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_554 + 32 len mem[_554]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_554 + 32 len mem[_554]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_554 + 32 len mem[_554]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_554 + 32 len mem[_554]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_554 + 32 len mem[_554]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    if ext_call.return_data[12 len 20] == address(_455):
                        if ext_call.return_data[12 len 20] == address(_455):
                            call address(sha3(0, 17269419903419772280, sha3(mem[_554 + 32 len mem[_554]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 10^18 * _421 / stor7 * _429 / _425, 10^18 * _421 / stor7 * _429 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(mem[_554 + 32 len mem[_554]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 10^18 * _421 / stor7 * _429 / _425, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                    else:
                        if ext_call.return_data[12 len 20] == address(_455):
                            call address(sha3(0, 17269419903419772280, sha3(mem[_554 + 32 len mem[_554]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 10^18 * _421 / stor7 * _429 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(mem[_554 + 32 len mem[_554]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                else:
                    if not mem[_443 + 12 len 20]:
                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                    mem[mem[64] + 32] = address(mem[_443])
                    mem[mem[64] + 52] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                    _550 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_550 + 32 len mem[_550]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_550 + 32 len mem[_550]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_550 + 32 len mem[_550]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_550 + 32 len mem[_550]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_550 + 32 len mem[_550]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    if ext_call.return_data[12 len 20] == address(_455):
                        if ext_call.return_data[12 len 20] == address(_455):
                            call address(sha3(0, 17269419903419772280, sha3(mem[_550 + 32 len mem[_550]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 10^18 * _421 / stor7 * _429 / _425, 10^18 * _421 / stor7 * _429 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(mem[_550 + 32 len mem[_550]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 10^18 * _421 / stor7 * _429 / _425, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                    else:
                        if ext_call.return_data[12 len 20] == address(_455):
                            call address(sha3(0, 17269419903419772280, sha3(mem[_550 + 32 len mem[_550]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 10^18 * _421 / stor7 * _429 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                        else:
                            call address(sha3(0, 17269419903419772280, sha3(mem[_550 + 32 len mem[_550]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
            else:
                if address(cd[164]) == 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
                    require ext_code.size(address(cd[132]))
                    staticcall address(cd[132]).underlying() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _449 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _457 = mem[_449]
                    require mem[_449] == mem[_449 + 12 len 20]
                    if mem[_449 + 12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                    if mem[_449 + 12 len 20] >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                        mem[mem[64] + 52] = address(_457)
                        _570 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_570 + 32 len mem[_570]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_570 + 32 len mem[_570]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_570 + 32 len mem[_570]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_570 + 32 len mem[_570]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_570 + 32 len mem[_570]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        if ext_call.return_data[12 len 20] == address(_457):
                            if ext_call.return_data[12 len 20] == address(_457):
                                call address(sha3(0, 17269419903419772280, sha3(mem[_570 + 32 len mem[_570]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 10^18 * _421 / stor7 * _429 / _425, 10^18 * _421 / stor7 * _429 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(mem[_570 + 32 len mem[_570]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 10^18 * _421 / stor7 * _429 / _425, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                        else:
                            if ext_call.return_data[12 len 20] == address(_457):
                                call address(sha3(0, 17269419903419772280, sha3(mem[_570 + 32 len mem[_570]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 10^18 * _421 / stor7 * _429 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(mem[_570 + 32 len mem[_570]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                    else:
                        if not mem[_449 + 12 len 20]:
                            revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 32] = address(mem[_449])
                        mem[mem[64] + 52] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                        _566 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_566 + 32 len mem[_566]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_566 + 32 len mem[_566]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_566 + 32 len mem[_566]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_566 + 32 len mem[_566]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_566 + 32 len mem[_566]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        if ext_call.return_data[12 len 20] == address(_457):
                            if ext_call.return_data[12 len 20] == address(_457):
                                call address(sha3(0, 17269419903419772280, sha3(mem[_566 + 32 len mem[_566]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 10^18 * _421 / stor7 * _429 / _425, 10^18 * _421 / stor7 * _429 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(mem[_566 + 32 len mem[_566]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 10^18 * _421 / stor7 * _429 / _425, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                        else:
                            if ext_call.return_data[12 len 20] == address(_457):
                                call address(sha3(0, 17269419903419772280, sha3(mem[_566 + 32 len mem[_566]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 10^18 * _421 / stor7 * _429 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                            else:
                                call address(sha3(0, 17269419903419772280, sha3(mem[_566 + 32 len mem[_566]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                else:
                    if address(cd[132]) == 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
                        require ext_code.size(address(cd[164]))
                        staticcall address(cd[164]).underlying() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _453 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _461 = mem[_453]
                        require mem[_453] == mem[_453 + 12 len 20]
                        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == mem[_453 + 12 len 20]:
                            revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 < mem[_453 + 12 len 20]:
                            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                            mem[mem[64] + 52] = address(_461)
                            _590 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_590 + 32 len mem[_590]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_590 + 32 len mem[_590]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_590 + 32 len mem[_590]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_590 + 32 len mem[_590]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_590 + 32 len mem[_590]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_590 + 32 len mem[_590]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 10^18 * _421 / stor7 * _429 / _425, 10^18 * _421 / stor7 * _429 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_590 + 32 len mem[_590]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 10^18 * _421 / stor7 * _429 / _425, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                            else:
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_590 + 32 len mem[_590]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 10^18 * _421 / stor7 * _429 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_590 + 32 len mem[_590]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                        else:
                            if not mem[_453 + 12 len 20]:
                                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                            mem[mem[64] + 32] = address(mem[_453])
                            mem[mem[64] + 52] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                            _594 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_594 + 32 len mem[_594]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_594 + 32 len mem[_594]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_594 + 32 len mem[_594]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_594 + 32 len mem[_594]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_594 + 32 len mem[_594]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_594 + 32 len mem[_594]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 10^18 * _421 / stor7 * _429 / _425, 10^18 * _421 / stor7 * _429 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_594 + 32 len mem[_594]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 10^18 * _421 / stor7 * _429 / _425, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                            else:
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_594 + 32 len mem[_594]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 10^18 * _421 / stor7 * _429 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                else:
                                    call address(sha3(0, 17269419903419772280, sha3(mem[_594 + 32 len mem[_594]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                    else:
                        require ext_code.size(address(cd[132]))
                        staticcall address(cd[132]).underlying() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _452 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _460 = mem[_452]
                        require mem[_452] == mem[_452 + 12 len 20]
                        require ext_code.size(address(cd[164]))
                        staticcall address(cd[164]).underlying() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _470 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _482 = mem[_470]
                        require mem[_470] == mem[_470 + 12 len 20]
                        if address(_460) == mem[_470 + 12 len 20]:
                            revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                        if address(_460) < mem[_470 + 12 len 20]:
                            if not address(_460):
                                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                            if address(_460) == mem[_470 + 12 len 20]:
                                revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                            if address(_460) < mem[_470 + 12 len 20]:
                                if not address(_460):
                                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                _534 = mem[64]
                                mem[mem[64] + 32] = address(_460)
                                mem[mem[64] + 52] = address(_482)
                                _614 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _616 = sha3(mem[_614 + 32 len mem[_614]])
                                if not uint32(ext_code.size(sha3(0, 17269419903419772280, sha3(mem[_614 + 32 len mem[_614]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                    if 100000 * 10^18 * _421 / stor7 * _429 / _425 <= 0:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_614 + 32 len mem[_614]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_614 + 32 len mem[_614]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_614 + 32 len mem[_614]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_614 + 32 len mem[_614]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_614 + 32 len mem[_614]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        if ext_call.return_data[12 len 20] == address(_460):
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_614 + 32 len mem[_614]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 10^18 * _421 / stor7 * _429 / _425, 10^18 * _421 / stor7 * _429 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_614 + 32 len mem[_614]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 10^18 * _421 / stor7 * _429 / _425, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                        else:
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_614 + 32 len mem[_614]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 10^18 * _421 / stor7 * _429 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_614 + 32 len mem[_614]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                    else:
                                        require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                        staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                gas gas_remaining wei
                                               args address(_460), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token0() with:
                                                gas gas_remaining wei
                                        mem[_534 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_534 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token1() with:
                                                gas gas_remaining wei
                                               args mem[_534 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                        mem[_534 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if ext_call.return_data[12 len 20] == address(_460):
                                            mem[_534 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _421 / stor7 * _429 / _425
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                mem[_534 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                            else:
                                                mem[_534 + (4 * ceil32(return_data.size)) + 353] = 0
                                        else:
                                            mem[_534 + (4 * ceil32(return_data.size)) + 321] = 0
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                mem[_534 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                            else:
                                                mem[_534 + (4 * ceil32(return_data.size)) + 353] = 0
                                        mem[_534 + (4 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_534 + (4 * ceil32(return_data.size)) + 417] = 128
                                        mem[_534 + (4 * ceil32(return_data.size)) + 449] = 96
                                        mem[_534 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[_534 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                else:
                                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_614 + 32 len mem[_614]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_614 + 32 len mem[_614]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                    if address(_460) == address(_460):
                                        if 100000 * 10^18 * _421 / stor7 * _429 / _425 <= 985 * ext_call.return_data[18 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_614 + 32 len mem[_614]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_614 + 32 len mem[_614]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_534 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_534 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _616, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _616, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_534 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_534 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                mem[_534 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _421 / stor7 * _429 / _425
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_534 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_534 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_534 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_534 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_534 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_534 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_534 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_534 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_534 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _616, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _616, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_534 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_460), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_534 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_534 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_534 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                mem[_534 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _421 / stor7 * _429 / _425
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_534 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_534 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_534 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_534 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_534 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_534 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_534 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_534 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_534 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_534 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                    else:
                                        if 100000 * 10^18 * _421 / stor7 * _429 / _425 <= 985 * ext_call.return_data[50 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_614 + 32 len mem[_614]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_614 + 32 len mem[_614]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_534 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_534 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _616, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _616, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_534 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_534 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                mem[_534 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _421 / stor7 * _429 / _425
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_534 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_534 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_534 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_534 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_534 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_534 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_534 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_534 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_534 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _616, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _616, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_534 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_460), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_534 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_534 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_534 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                mem[_534 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _421 / stor7 * _429 / _425
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_534 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_534 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_534 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_534 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_534 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_534 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_534 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_534 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_534 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_534 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                            else:
                                if not mem[_470 + 12 len 20]:
                                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                _535 = mem[64]
                                mem[mem[64] + 32] = address(mem[_470])
                                mem[mem[64] + 52] = address(_460)
                                _618 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _620 = sha3(mem[_618 + 32 len mem[_618]])
                                if not uint32(ext_code.size(sha3(0, 17269419903419772280, sha3(mem[_618 + 32 len mem[_618]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                    if 100000 * 10^18 * _421 / stor7 * _429 / _425 <= 0:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_618 + 32 len mem[_618]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_618 + 32 len mem[_618]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_618 + 32 len mem[_618]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_618 + 32 len mem[_618]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_618 + 32 len mem[_618]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        if ext_call.return_data[12 len 20] == address(_460):
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_618 + 32 len mem[_618]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 10^18 * _421 / stor7 * _429 / _425, 10^18 * _421 / stor7 * _429 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_618 + 32 len mem[_618]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 10^18 * _421 / stor7 * _429 / _425, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                        else:
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_618 + 32 len mem[_618]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 10^18 * _421 / stor7 * _429 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_618 + 32 len mem[_618]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                    else:
                                        require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                        staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                gas gas_remaining wei
                                               args address(_460), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token0() with:
                                                gas gas_remaining wei
                                        mem[_535 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_535 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token1() with:
                                                gas gas_remaining wei
                                               args mem[_535 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                        mem[_535 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if ext_call.return_data[12 len 20] == address(_460):
                                            mem[_535 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _421 / stor7 * _429 / _425
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                mem[_535 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                            else:
                                                mem[_535 + (4 * ceil32(return_data.size)) + 353] = 0
                                        else:
                                            mem[_535 + (4 * ceil32(return_data.size)) + 321] = 0
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                mem[_535 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                            else:
                                                mem[_535 + (4 * ceil32(return_data.size)) + 353] = 0
                                        mem[_535 + (4 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_535 + (4 * ceil32(return_data.size)) + 417] = 128
                                        mem[_535 + (4 * ceil32(return_data.size)) + 449] = 96
                                        mem[_535 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[_535 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                else:
                                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_618 + 32 len mem[_618]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_618 + 32 len mem[_618]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                    if address(_460) == address(_460):
                                        if 100000 * 10^18 * _421 / stor7 * _429 / _425 <= 985 * ext_call.return_data[18 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_618 + 32 len mem[_618]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_618 + 32 len mem[_618]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_535 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_535 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _620, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _620, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_535 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_535 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                mem[_535 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _421 / stor7 * _429 / _425
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_535 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_535 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_535 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_535 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_535 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_535 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_535 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_535 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_535 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _620, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _620, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_535 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_460), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_535 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_535 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_535 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                mem[_535 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _421 / stor7 * _429 / _425
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_535 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_535 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_535 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_535 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_535 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_535 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_535 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_535 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_535 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_535 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                    else:
                                        if 100000 * 10^18 * _421 / stor7 * _429 / _425 <= 985 * ext_call.return_data[50 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_618 + 32 len mem[_618]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_618 + 32 len mem[_618]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_535 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_535 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _620, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _620, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_535 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_535 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                mem[_535 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _421 / stor7 * _429 / _425
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_535 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_535 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_535 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_535 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_535 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_535 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_535 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_535 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_535 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _620, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _620, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_535 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_460), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_535 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_535 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_535 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                mem[_535 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _421 / stor7 * _429 / _425
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_535 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_535 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_535 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_535 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_535 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_535 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_535 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_535 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_535 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_535 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                        else:
                            if not mem[_470 + 12 len 20]:
                                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                            if address(_460) == mem[_470 + 12 len 20]:
                                revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                            if address(_460) < mem[_470 + 12 len 20]:
                                if not address(_460):
                                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                _536 = mem[64]
                                mem[mem[64] + 32] = address(_460)
                                mem[mem[64] + 52] = address(_482)
                                _622 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _624 = sha3(mem[_622 + 32 len mem[_622]])
                                if not uint32(ext_code.size(sha3(0, 17269419903419772280, sha3(mem[_622 + 32 len mem[_622]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                    if 100000 * 10^18 * _421 / stor7 * _429 / _425 <= 0:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_622 + 32 len mem[_622]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_622 + 32 len mem[_622]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_622 + 32 len mem[_622]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_622 + 32 len mem[_622]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_622 + 32 len mem[_622]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        if ext_call.return_data[12 len 20] == address(_460):
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_622 + 32 len mem[_622]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 10^18 * _421 / stor7 * _429 / _425, 10^18 * _421 / stor7 * _429 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_622 + 32 len mem[_622]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 10^18 * _421 / stor7 * _429 / _425, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                        else:
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_622 + 32 len mem[_622]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 10^18 * _421 / stor7 * _429 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_622 + 32 len mem[_622]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                    else:
                                        require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                        staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                gas gas_remaining wei
                                               args address(_460), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token0() with:
                                                gas gas_remaining wei
                                        mem[_536 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_536 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token1() with:
                                                gas gas_remaining wei
                                               args mem[_536 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                        mem[_536 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if ext_call.return_data[12 len 20] == address(_460):
                                            mem[_536 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _421 / stor7 * _429 / _425
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                mem[_536 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                            else:
                                                mem[_536 + (4 * ceil32(return_data.size)) + 353] = 0
                                        else:
                                            mem[_536 + (4 * ceil32(return_data.size)) + 321] = 0
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                mem[_536 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                            else:
                                                mem[_536 + (4 * ceil32(return_data.size)) + 353] = 0
                                        mem[_536 + (4 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_536 + (4 * ceil32(return_data.size)) + 417] = 128
                                        mem[_536 + (4 * ceil32(return_data.size)) + 449] = 96
                                        mem[_536 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[_536 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                else:
                                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_622 + 32 len mem[_622]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_622 + 32 len mem[_622]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                    if address(_460) == address(_482):
                                        if 100000 * 10^18 * _421 / stor7 * _429 / _425 <= 985 * ext_call.return_data[18 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_622 + 32 len mem[_622]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_622 + 32 len mem[_622]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_536 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_536 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _624, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _624, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_536 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_536 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                mem[_536 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _421 / stor7 * _429 / _425
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_536 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_536 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_536 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_536 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_536 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_536 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_536 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_536 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_536 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _624, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _624, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_536 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_460), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_536 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_536 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_536 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                mem[_536 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _421 / stor7 * _429 / _425
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_536 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_536 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_536 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_536 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_536 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_536 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_536 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_536 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_536 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_536 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                    else:
                                        if 100000 * 10^18 * _421 / stor7 * _429 / _425 <= 985 * ext_call.return_data[50 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_622 + 32 len mem[_622]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_622 + 32 len mem[_622]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_536 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_536 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _624, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _624, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_536 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_536 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                mem[_536 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _421 / stor7 * _429 / _425
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_536 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_536 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_536 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_536 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_536 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_536 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_536 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_536 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_536 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _624, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _624, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_536 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_460), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_536 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_536 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_536 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                mem[_536 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _421 / stor7 * _429 / _425
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_536 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_536 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_536 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_536 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_536 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_536 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_536 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_536 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_536 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_536 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                            else:
                                if not mem[_470 + 12 len 20]:
                                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                _537 = mem[64]
                                mem[mem[64] + 32] = address(mem[_470])
                                mem[mem[64] + 52] = address(_460)
                                _626 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _628 = sha3(mem[_626 + 32 len mem[_626]])
                                if not uint32(ext_code.size(sha3(0, 17269419903419772280, sha3(mem[_626 + 32 len mem[_626]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                    if 100000 * 10^18 * _421 / stor7 * _429 / _425 <= 0:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_626 + 32 len mem[_626]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_626 + 32 len mem[_626]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_626 + 32 len mem[_626]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, sha3(mem[_626 + 32 len mem[_626]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_626 + 32 len mem[_626]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        if ext_call.return_data[12 len 20] == address(_460):
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_626 + 32 len mem[_626]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 10^18 * _421 / stor7 * _429 / _425, 10^18 * _421 / stor7 * _429 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_626 + 32 len mem[_626]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 10^18 * _421 / stor7 * _429 / _425, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                        else:
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_626 + 32 len mem[_626]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 10^18 * _421 / stor7 * _429 / _425, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                            else:
                                                call address(sha3(0, 17269419903419772280, sha3(mem[_626 + 32 len mem[_626]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, address(this.address), 128, 96, address(cd[100]), address(cd[132]), address(cd[164])
                                    else:
                                        require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                        staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                gas gas_remaining wei
                                               args address(_460), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token0() with:
                                                gas gas_remaining wei
                                        mem[_537 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_537 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token1() with:
                                                gas gas_remaining wei
                                               args mem[_537 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                        mem[_537 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if ext_call.return_data[12 len 20] == address(_460):
                                            mem[_537 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _421 / stor7 * _429 / _425
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                mem[_537 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                            else:
                                                mem[_537 + (4 * ceil32(return_data.size)) + 353] = 0
                                        else:
                                            mem[_537 + (4 * ceil32(return_data.size)) + 321] = 0
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                mem[_537 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                            else:
                                                mem[_537 + (4 * ceil32(return_data.size)) + 353] = 0
                                        mem[_537 + (4 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_537 + (4 * ceil32(return_data.size)) + 417] = 128
                                        mem[_537 + (4 * ceil32(return_data.size)) + 449] = 96
                                        mem[_537 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[_537 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                else:
                                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_626 + 32 len mem[_626]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    staticcall address(sha3(0, 17269419903419772280, sha3(mem[_626 + 32 len mem[_626]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                    if address(_460) == address(_482):
                                        if 100000 * 10^18 * _421 / stor7 * _429 / _425 <= 985 * ext_call.return_data[18 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_626 + 32 len mem[_626]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_626 + 32 len mem[_626]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_537 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_537 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _628, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _628, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_537 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_537 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                mem[_537 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _421 / stor7 * _429 / _425
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_537 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_537 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_537 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_537 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_537 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_537 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_537 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_537 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_537 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _628, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _628, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_537 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_460), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_537 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_537 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_537 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                mem[_537 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _421 / stor7 * _429 / _425
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_537 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_537 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_537 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_537 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_537 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_537 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_537 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_537 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_537 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_537 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                    else:
                                        if 100000 * 10^18 * _421 / stor7 * _429 / _425 <= 985 * ext_call.return_data[50 len 14]:
                                            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(mem[_626 + 32 len mem[_626]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, sha3(mem[_626 + 32 len mem[_626]]), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_537 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_537 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _628, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _628, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_537 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_537 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                mem[_537 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _421 / stor7 * _429 / _425
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_537 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_537 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_537 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_537 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_537 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_537 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_537 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_537 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_537 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _628, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            call address(sha3(0, 17269419903419772280, _628, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_537 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                        else:
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_460), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_537 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_537 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_537 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == address(_460):
                                                mem[_537 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _421 / stor7 * _429 / _425
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_537 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_537 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_537 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_460):
                                                    mem[_537 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _421 / stor7 * _429 / _425
                                                else:
                                                    mem[_537 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_537 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_537 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_537 + (4 * ceil32(return_data.size)) + 449] = 96
                                            mem[_537 + (4 * ceil32(return_data.size)) + 481 len 96] = address(cd[100]), address(cd[132]), address(cd[164])
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_537 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_51dbd2c3(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require 2 * idx < ('cd', 36).length
        require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
        require (2 * idx) + 1 < ('cd', 36).length
        require cd[((32 * (2 * idx) + 1) + cd[36] + 36)] == address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
        require ext_code.size(comptrollerAddress)
        staticcall comptrollerAddress.getAccountLiquidity(address rg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _63 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_63] == mem[_63]
        require mem[_63 + 32] == mem[_63 + 32]
        require mem[_63 + 64] == mem[_63 + 64]
        if not mem[_63 + 32]:
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((64 * idx) + cd[36] + 36)]))
            call address(cd[((64 * idx) + cd[36] + 36)]).borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _70 = mem[_69]
            require mem[_69] == mem[_69]
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]))
            call address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]).balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _73 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _74 = mem[_73]
            require mem[_73] == mem[_73]
            require stor7
            mem[mem[64] + 4] = address(cd[((64 * idx) + cd[36] + 36)])
            require ext_code.size(priceOracleAddress)
            staticcall priceOracleAddress.getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[((64 * idx) + cd[36] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _77 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _78 = mem[_77]
            require mem[_77] == mem[_77]
            mem[mem[64] + 4] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
            require ext_code.size(priceOracleAddress)
            staticcall priceOracleAddress.getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _81 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _82 = mem[_81]
            require mem[_81] == mem[_81]
            require _78
            if _70 * stor6 / 10^18 * _78 < 10^18 * _74 / stor7 * mem[_81]:
                if address(cd[((64 * idx) + cd[36] + 36)]) == address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]):
                    require ext_code.size(address(cd[((64 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((64 * idx) + cd[36] + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _91 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _107 = mem[_91]
                    require mem[_91] == mem[_91 + 12 len 20]
                    if mem[_91 + 12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                    if mem[_91 + 12 len 20] >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        _130 = mem[64]
                        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                        mem[mem[64] + 52] = address(_107)
                        _199 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _201 = sha3(mem[_199 + 32 len mem[_199]])
                        mem[_130 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_130 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                        mem[_130 + 125] = _201
                        mem[_130 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                        mem[_130 + 72] = 85
                        mem[_130 + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_130 + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                        mem[_130 + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                        mem[_130 + 189] = 96
                        require ext_code.size(address(sha3(0, 17269419903419772280, _201, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, _201, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                gas gas_remaining wei
                        mem[_130 + 317] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17269419903419772280, _201, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, _201, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                gas gas_remaining wei
                        mem[_130 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _130 + (2 * ceil32(return_data.size)) + 317
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_130 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if ext_call.return_data[12 len 20] == address(_107):
                            mem[_130 + (2 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                            if ext_call.return_data[12 len 20] == address(_107):
                                mem[_130 + (2 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                mem[_130 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_130 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_130 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[_130 + (2 * ceil32(return_data.size)) + s + 481] = mem[_130 + s + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _201, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _201, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _70 * stor6 / 10^18 * _78 / _78, _70 * stor6 / 10^18 * _78 / _78, address(this.address), 128, 96, mem[_130 + (2 * ceil32(return_data.size)) + 481 len 96]
                            else:
                                mem[_130 + (2 * ceil32(return_data.size)) + 353] = 0
                                mem[_130 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_130 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_130 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[_130 + (2 * ceil32(return_data.size)) + s + 481] = mem[_130 + s + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _201, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _201, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _70 * stor6 / 10^18 * _78 / _78, 0, address(this.address), 128, 96, mem[_130 + (2 * ceil32(return_data.size)) + 481 len 96]
                        else:
                            mem[_130 + (2 * ceil32(return_data.size)) + 321] = 0
                            if ext_call.return_data[12 len 20] == address(_107):
                                mem[_130 + (2 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                mem[_130 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_130 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_130 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[_130 + (2 * ceil32(return_data.size)) + s + 481] = mem[_130 + s + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _201, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _201, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _70 * stor6 / 10^18 * _78 / _78, address(this.address), 128, 96, mem[_130 + (2 * ceil32(return_data.size)) + 481 len 96]
                            else:
                                mem[_130 + (2 * ceil32(return_data.size)) + 353] = 0
                                mem[_130 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_130 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_130 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[_130 + (2 * ceil32(return_data.size)) + s + 481] = mem[_130 + s + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _201, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _201, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 96, mem[_130 + (2 * ceil32(return_data.size)) + 481 len 96]
                    else:
                        if not mem[_91 + 12 len 20]:
                            revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                        _129 = mem[64]
                        mem[mem[64] + 32] = address(mem[_91])
                        mem[mem[64] + 52] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                        _195 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _197 = sha3(mem[_195 + 32 len mem[_195]])
                        mem[_129 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_129 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                        mem[_129 + 125] = _197
                        mem[_129 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                        mem[_129 + 72] = 85
                        mem[_129 + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_129 + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                        mem[_129 + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                        mem[_129 + 189] = 96
                        require ext_code.size(address(sha3(0, 17269419903419772280, _197, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, _197, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                gas gas_remaining wei
                        mem[_129 + 317] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17269419903419772280, _197, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, _197, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                gas gas_remaining wei
                        mem[_129 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _129 + (2 * ceil32(return_data.size)) + 317
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_129 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if ext_call.return_data[12 len 20] == address(_107):
                            mem[_129 + (2 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                            if ext_call.return_data[12 len 20] == address(_107):
                                mem[_129 + (2 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                mem[_129 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_129 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_129 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[_129 + (2 * ceil32(return_data.size)) + s + 481] = mem[_129 + s + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _197, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _197, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _70 * stor6 / 10^18 * _78 / _78, _70 * stor6 / 10^18 * _78 / _78, address(this.address), 128, 96, mem[_129 + (2 * ceil32(return_data.size)) + 481 len 96]
                            else:
                                mem[_129 + (2 * ceil32(return_data.size)) + 353] = 0
                                mem[_129 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_129 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_129 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[_129 + (2 * ceil32(return_data.size)) + s + 481] = mem[_129 + s + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _197, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _197, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _70 * stor6 / 10^18 * _78 / _78, 0, address(this.address), 128, 96, mem[_129 + (2 * ceil32(return_data.size)) + 481 len 96]
                        else:
                            mem[_129 + (2 * ceil32(return_data.size)) + 321] = 0
                            if ext_call.return_data[12 len 20] == address(_107):
                                mem[_129 + (2 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                mem[_129 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_129 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_129 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[_129 + (2 * ceil32(return_data.size)) + s + 481] = mem[_129 + s + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _197, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _197, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _70 * stor6 / 10^18 * _78 / _78, address(this.address), 128, 96, mem[_129 + (2 * ceil32(return_data.size)) + 481 len 96]
                            else:
                                mem[_129 + (2 * ceil32(return_data.size)) + 353] = 0
                                mem[_129 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_129 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_129 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[_129 + (2 * ceil32(return_data.size)) + s + 481] = mem[_129 + s + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _197, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _197, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 96, mem[_129 + (2 * ceil32(return_data.size)) + 481 len 96]
                else:
                    if address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]) == 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
                        require ext_code.size(address(cd[((64 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((64 * idx) + cd[36] + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _101 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _109 = mem[_101]
                        require mem[_101] == mem[_101 + 12 len 20]
                        if mem[_101 + 12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                            revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                        if mem[_101 + 12 len 20] >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                            _139 = mem[64]
                            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                            mem[mem[64] + 52] = address(_109)
                            _215 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _217 = sha3(mem[_215 + 32 len mem[_215]])
                            mem[_139 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_139 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                            mem[_139 + 125] = _217
                            mem[_139 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                            mem[_139 + 72] = 85
                            mem[_139 + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_139 + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                            mem[_139 + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                            mem[_139 + 189] = 96
                            require ext_code.size(address(sha3(0, 17269419903419772280, _217, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _217, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                    gas gas_remaining wei
                            mem[_139 + 317] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(sha3(0, 17269419903419772280, _217, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _217, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                    gas gas_remaining wei
                            mem[_139 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _139 + (2 * ceil32(return_data.size)) + 317
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_139 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if ext_call.return_data[12 len 20] == address(_109):
                                mem[_139 + (2 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                                if ext_call.return_data[12 len 20] == address(_109):
                                    mem[_139 + (2 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                    mem[_139 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_139 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_139 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[_139 + (2 * ceil32(return_data.size)) + s + 481] = mem[_139 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _217, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _217, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _70 * stor6 / 10^18 * _78 / _78, _70 * stor6 / 10^18 * _78 / _78, address(this.address), 128, 96, mem[_139 + (2 * ceil32(return_data.size)) + 481 len 96]
                                else:
                                    mem[_139 + (2 * ceil32(return_data.size)) + 353] = 0
                                    mem[_139 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_139 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_139 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[_139 + (2 * ceil32(return_data.size)) + s + 481] = mem[_139 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _217, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _217, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _70 * stor6 / 10^18 * _78 / _78, 0, address(this.address), 128, 96, mem[_139 + (2 * ceil32(return_data.size)) + 481 len 96]
                            else:
                                mem[_139 + (2 * ceil32(return_data.size)) + 321] = 0
                                if ext_call.return_data[12 len 20] == address(_109):
                                    mem[_139 + (2 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                    mem[_139 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_139 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_139 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[_139 + (2 * ceil32(return_data.size)) + s + 481] = mem[_139 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _217, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _217, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _70 * stor6 / 10^18 * _78 / _78, address(this.address), 128, 96, mem[_139 + (2 * ceil32(return_data.size)) + 481 len 96]
                                else:
                                    mem[_139 + (2 * ceil32(return_data.size)) + 353] = 0
                                    mem[_139 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_139 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_139 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[_139 + (2 * ceil32(return_data.size)) + s + 481] = mem[_139 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _217, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _217, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, mem[_139 + (2 * ceil32(return_data.size)) + 481 len 96]
                        else:
                            if not mem[_101 + 12 len 20]:
                                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                            _138 = mem[64]
                            mem[mem[64] + 32] = address(mem[_101])
                            mem[mem[64] + 52] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                            _211 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _213 = sha3(mem[_211 + 32 len mem[_211]])
                            mem[_138 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_138 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                            mem[_138 + 125] = _213
                            mem[_138 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                            mem[_138 + 72] = 85
                            mem[_138 + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_138 + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                            mem[_138 + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                            mem[_138 + 189] = 96
                            require ext_code.size(address(sha3(0, 17269419903419772280, _213, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _213, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                    gas gas_remaining wei
                            mem[_138 + 317] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(sha3(0, 17269419903419772280, _213, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _213, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                    gas gas_remaining wei
                            mem[_138 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _138 + (2 * ceil32(return_data.size)) + 317
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_138 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if ext_call.return_data[12 len 20] == address(_109):
                                mem[_138 + (2 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                                if ext_call.return_data[12 len 20] == address(_109):
                                    mem[_138 + (2 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                    mem[_138 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_138 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_138 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[_138 + (2 * ceil32(return_data.size)) + s + 481] = mem[_138 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _213, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _213, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _70 * stor6 / 10^18 * _78 / _78, _70 * stor6 / 10^18 * _78 / _78, address(this.address), 128, 96, mem[_138 + (2 * ceil32(return_data.size)) + 481 len 96]
                                else:
                                    mem[_138 + (2 * ceil32(return_data.size)) + 353] = 0
                                    mem[_138 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_138 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_138 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[_138 + (2 * ceil32(return_data.size)) + s + 481] = mem[_138 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _213, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _213, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _70 * stor6 / 10^18 * _78 / _78, 0, address(this.address), 128, 96, mem[_138 + (2 * ceil32(return_data.size)) + 481 len 96]
                            else:
                                mem[_138 + (2 * ceil32(return_data.size)) + 321] = 0
                                if ext_call.return_data[12 len 20] == address(_109):
                                    mem[_138 + (2 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                    mem[_138 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_138 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_138 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[_138 + (2 * ceil32(return_data.size)) + s + 481] = mem[_138 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _213, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _213, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _70 * stor6 / 10^18 * _78 / _78, address(this.address), 128, 96, mem[_138 + (2 * ceil32(return_data.size)) + 481 len 96]
                                else:
                                    mem[_138 + (2 * ceil32(return_data.size)) + 353] = 0
                                    mem[_138 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_138 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_138 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[_138 + (2 * ceil32(return_data.size)) + s + 481] = mem[_138 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _213, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _213, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, mem[_138 + (2 * ceil32(return_data.size)) + 481 len 96]
                    else:
                        if address(cd[((64 * idx) + cd[36] + 36)]) == 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
                            require ext_code.size(address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]))
                            staticcall address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]).underlying() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _104 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _112 = mem[_104]
                            require mem[_104] == mem[_104 + 12 len 20]
                            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == mem[_104 + 12 len 20]:
                                revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 < mem[_104 + 12 len 20]:
                                _144 = mem[64]
                                mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                                mem[mem[64] + 52] = address(_112)
                                _231 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _233 = sha3(mem[_231 + 32 len mem[_231]])
                                mem[_144 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_144 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                mem[_144 + 125] = _233
                                mem[_144 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                mem[_144 + 72] = 85
                                mem[_144 + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_144 + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                mem[_144 + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                mem[_144 + 189] = 96
                                require ext_code.size(address(sha3(0, 17269419903419772280, _233, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                staticcall address(sha3(0, 17269419903419772280, _233, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                        gas gas_remaining wei
                                mem[_144 + 317] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(sha3(0, 17269419903419772280, _233, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                staticcall address(sha3(0, 17269419903419772280, _233, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                        gas gas_remaining wei
                                mem[_144 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _144 + (2 * ceil32(return_data.size)) + 317
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[_144 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    mem[_144 + (2 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                                    if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                        mem[_144 + (2 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                        mem[_144 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_144 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_144 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[_144 + (2 * ceil32(return_data.size)) + s + 481] = mem[_144 + s + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _233, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _233, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _70 * stor6 / 10^18 * _78 / _78, _70 * stor6 / 10^18 * _78 / _78, address(this.address), 128, 96, mem[_144 + (2 * ceil32(return_data.size)) + 481 len 96]
                                    else:
                                        mem[_144 + (2 * ceil32(return_data.size)) + 353] = 0
                                        mem[_144 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_144 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_144 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[_144 + (2 * ceil32(return_data.size)) + s + 481] = mem[_144 + s + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _233, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _233, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _70 * stor6 / 10^18 * _78 / _78, 0, address(this.address), 128, 96, mem[_144 + (2 * ceil32(return_data.size)) + 481 len 96]
                                else:
                                    mem[_144 + (2 * ceil32(return_data.size)) + 321] = 0
                                    if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                        mem[_144 + (2 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                        mem[_144 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_144 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_144 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[_144 + (2 * ceil32(return_data.size)) + s + 481] = mem[_144 + s + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _233, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _233, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _70 * stor6 / 10^18 * _78 / _78, address(this.address), 128, 96, mem[_144 + (2 * ceil32(return_data.size)) + 481 len 96]
                                    else:
                                        mem[_144 + (2 * ceil32(return_data.size)) + 353] = 0
                                        mem[_144 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_144 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_144 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[_144 + (2 * ceil32(return_data.size)) + s + 481] = mem[_144 + s + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _233, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _233, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 96, mem[_144 + (2 * ceil32(return_data.size)) + 481 len 96]
                            else:
                                if not mem[_104 + 12 len 20]:
                                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                _145 = mem[64]
                                mem[mem[64] + 32] = address(mem[_104])
                                mem[mem[64] + 52] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                                _235 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _237 = sha3(mem[_235 + 32 len mem[_235]])
                                mem[_145 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_145 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                mem[_145 + 125] = _237
                                mem[_145 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                mem[_145 + 72] = 85
                                mem[_145 + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_145 + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                mem[_145 + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                mem[_145 + 189] = 96
                                require ext_code.size(address(sha3(0, 17269419903419772280, _237, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                staticcall address(sha3(0, 17269419903419772280, _237, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                        gas gas_remaining wei
                                mem[_145 + 317] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(sha3(0, 17269419903419772280, _237, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                staticcall address(sha3(0, 17269419903419772280, _237, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                        gas gas_remaining wei
                                mem[_145 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _145 + (2 * ceil32(return_data.size)) + 317
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[_145 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    mem[_145 + (2 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                                    if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                        mem[_145 + (2 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                        mem[_145 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_145 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_145 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[_145 + (2 * ceil32(return_data.size)) + s + 481] = mem[_145 + s + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _237, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _237, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _70 * stor6 / 10^18 * _78 / _78, _70 * stor6 / 10^18 * _78 / _78, address(this.address), 128, 96, mem[_145 + (2 * ceil32(return_data.size)) + 481 len 96]
                                    else:
                                        mem[_145 + (2 * ceil32(return_data.size)) + 353] = 0
                                        mem[_145 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_145 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_145 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[_145 + (2 * ceil32(return_data.size)) + s + 481] = mem[_145 + s + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _237, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _237, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _70 * stor6 / 10^18 * _78 / _78, 0, address(this.address), 128, 96, mem[_145 + (2 * ceil32(return_data.size)) + 481 len 96]
                                else:
                                    mem[_145 + (2 * ceil32(return_data.size)) + 321] = 0
                                    if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                        mem[_145 + (2 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                        mem[_145 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_145 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_145 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[_145 + (2 * ceil32(return_data.size)) + s + 481] = mem[_145 + s + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _237, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _237, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _70 * stor6 / 10^18 * _78 / _78, address(this.address), 128, 96, mem[_145 + (2 * ceil32(return_data.size)) + 481 len 96]
                                    else:
                                        mem[_145 + (2 * ceil32(return_data.size)) + 353] = 0
                                        mem[_145 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_145 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_145 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[_145 + (2 * ceil32(return_data.size)) + s + 481] = mem[_145 + s + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _237, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _237, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 96, mem[_145 + (2 * ceil32(return_data.size)) + 481 len 96]
                        else:
                            require ext_code.size(address(cd[((64 * idx) + cd[36] + 36)]))
                            staticcall address(cd[((64 * idx) + cd[36] + 36)]).underlying() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _103 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _111 = mem[_103]
                            require mem[_103] == mem[_103 + 12 len 20]
                            require ext_code.size(address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]))
                            staticcall address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]).underlying() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _121 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _131 = mem[_121]
                            require mem[_121] == mem[_121 + 12 len 20]
                            if address(_111) == mem[_121 + 12 len 20]:
                                revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                            if address(_111) < mem[_121 + 12 len 20]:
                                if not address(_111):
                                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                if address(_111) == mem[_121 + 12 len 20]:
                                    revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                                if address(_111) < mem[_121 + 12 len 20]:
                                    if not address(_111):
                                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                    _183 = mem[64]
                                    mem[mem[64] + 32] = address(_111)
                                    mem[mem[64] + 52] = address(_131)
                                    _251 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _253 = sha3(mem[_251 + 32 len mem[_251]])
                                    mem[_183 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_183 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_183 + 125] = _253
                                    mem[_183 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_183 + 72] = 85
                                    if not uint32(ext_code.size(sha3(0, 17269419903419772280, _253, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                        if 100000 * _70 * stor6 / 10^18 * _78 / _78 <= 0:
                                            mem[_183 + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_183 + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                            mem[_183 + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                            mem[_183 + 189] = 96
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _253, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _253, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_183 + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _253, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _253, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                            mem[_183 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _183 + (2 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_183 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_111):
                                                mem[_183 + (2 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_183 + (2 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    mem[_183 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_183 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_183 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_183 + (2 * ceil32(return_data.size)) + s + 481] = mem[_183 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _253, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _253, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args _70 * stor6 / 10^18 * _78 / _78, _70 * stor6 / 10^18 * _78 / _78, address(this.address), 128, 96, mem[_183 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_183 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_183 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_183 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_183 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_183 + (2 * ceil32(return_data.size)) + s + 481] = mem[_183 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _253, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _253, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args _70 * stor6 / 10^18 * _78 / _78, 0, address(this.address), 128, 96, mem[_183 + (2 * ceil32(return_data.size)) + 481 len 96]
                                            else:
                                                mem[_183 + (2 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_183 + (2 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    mem[_183 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_183 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_183 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_183 + (2 * ceil32(return_data.size)) + s + 481] = mem[_183 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _253, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _253, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, _70 * stor6 / 10^18 * _78 / _78, address(this.address), 128, 96, mem[_183 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_183 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_183 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_183 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_183 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_183 + (2 * ceil32(return_data.size)) + s + 481] = mem[_183 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _253, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _253, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, address(this.address), 128, 96, mem[_183 + (2 * ceil32(return_data.size)) + 481 len 96]
                                        else:
                                            mem[_183 + 193] = address(_111)
                                            mem[_183 + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_111), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            mem[_183 + 189] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_183 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_183 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                            mem[_183 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                            mem[_183 + ceil32(return_data.size) + 189] = 96
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_183 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_183 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_183 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_183 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _183 + (4 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_183 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_111):
                                                mem[_183 + (4 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_183 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                else:
                                                    mem[_183 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_183 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_183 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                else:
                                                    mem[_183 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_183 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_183 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_183 + (4 * ceil32(return_data.size)) + 449] = 96
                                            s = 0
                                            while s < 96:
                                                mem[_183 + (4 * ceil32(return_data.size)) + s + 481] = mem[_183 + ceil32(return_data.size) + s + 221]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_183 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                    else:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _253, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, _253, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_183 + 189 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                        if address(_111) == address(_111):
                                            if 100000 * _70 * stor6 / 10^18 * _78 / _78 <= 985 * ext_call.return_data[18 len 14]:
                                                mem[_183 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_183 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_183 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_183 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _253, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _253, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_183 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_183 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _253, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _253, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_183 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_183 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _183 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_183 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_183 + (4 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_183 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_183 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_183 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_183 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_183 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_183 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_183 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_183 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[_183 + (4 * ceil32(return_data.size)) + s + 481] = mem[_183 + ceil32(return_data.size) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _253, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _253, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_183 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_183 + ceil32(return_data.size) + 193] = address(_111)
                                                mem[_183 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_111), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_183 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_183 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_183 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_183 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_183 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_183 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_183 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_183 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _183 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_183 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_183 + (4 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_183 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_183 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_183 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_183 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_183 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_183 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_183 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_183 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_183 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_183 + (4 * ceil32(return_data.size)) + s + 481] = mem[_183 + (2 * ceil32(return_data.size)) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_183 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                        else:
                                            if 100000 * _70 * stor6 / 10^18 * _78 / _78 <= 985 * ext_call.return_data[50 len 14]:
                                                mem[_183 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_183 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_183 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_183 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _253, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _253, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_183 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_183 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _253, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _253, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_183 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_183 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _183 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_183 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_183 + (4 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_183 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_183 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_183 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_183 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_183 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_183 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_183 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_183 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[_183 + (4 * ceil32(return_data.size)) + s + 481] = mem[_183 + ceil32(return_data.size) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _253, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _253, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_183 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_183 + ceil32(return_data.size) + 193] = address(_111)
                                                mem[_183 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_111), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_183 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_183 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_183 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_183 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_183 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_183 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_183 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_183 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _183 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_183 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_183 + (4 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_183 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_183 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_183 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_183 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_183 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_183 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_183 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_183 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_183 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_183 + (4 * ceil32(return_data.size)) + s + 481] = mem[_183 + (2 * ceil32(return_data.size)) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_183 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                else:
                                    if not mem[_121 + 12 len 20]:
                                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                    _184 = mem[64]
                                    mem[mem[64] + 32] = address(mem[_121])
                                    mem[mem[64] + 52] = address(_111)
                                    _255 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _257 = sha3(mem[_255 + 32 len mem[_255]])
                                    mem[_184 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_184 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_184 + 125] = _257
                                    mem[_184 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_184 + 72] = 85
                                    if not uint32(ext_code.size(sha3(0, 17269419903419772280, _257, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                        if 100000 * _70 * stor6 / 10^18 * _78 / _78 <= 0:
                                            mem[_184 + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_184 + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                            mem[_184 + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                            mem[_184 + 189] = 96
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _257, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _257, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_184 + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _257, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _257, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                            mem[_184 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _184 + (2 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_184 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_111):
                                                mem[_184 + (2 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_184 + (2 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    mem[_184 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_184 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_184 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_184 + (2 * ceil32(return_data.size)) + s + 481] = mem[_184 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _257, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _257, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args _70 * stor6 / 10^18 * _78 / _78, _70 * stor6 / 10^18 * _78 / _78, address(this.address), 128, 96, mem[_184 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_184 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_184 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_184 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_184 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_184 + (2 * ceil32(return_data.size)) + s + 481] = mem[_184 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _257, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _257, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args _70 * stor6 / 10^18 * _78 / _78, 0, address(this.address), 128, 96, mem[_184 + (2 * ceil32(return_data.size)) + 481 len 96]
                                            else:
                                                mem[_184 + (2 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_184 + (2 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    mem[_184 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_184 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_184 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_184 + (2 * ceil32(return_data.size)) + s + 481] = mem[_184 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _257, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _257, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, _70 * stor6 / 10^18 * _78 / _78, address(this.address), 128, 96, mem[_184 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_184 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_184 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_184 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_184 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_184 + (2 * ceil32(return_data.size)) + s + 481] = mem[_184 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _257, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _257, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, address(this.address), 128, 96, mem[_184 + (2 * ceil32(return_data.size)) + 481 len 96]
                                        else:
                                            mem[_184 + 193] = address(_111)
                                            mem[_184 + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_111), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            mem[_184 + 189] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_184 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_184 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                            mem[_184 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                            mem[_184 + ceil32(return_data.size) + 189] = 96
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_184 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_184 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_184 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_184 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _184 + (4 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_184 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_111):
                                                mem[_184 + (4 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_184 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                else:
                                                    mem[_184 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_184 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_184 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                else:
                                                    mem[_184 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_184 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_184 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_184 + (4 * ceil32(return_data.size)) + 449] = 96
                                            s = 0
                                            while s < 96:
                                                mem[_184 + (4 * ceil32(return_data.size)) + s + 481] = mem[_184 + ceil32(return_data.size) + s + 221]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_184 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                    else:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _257, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, _257, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_184 + 189 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                        if address(_111) == address(_111):
                                            if 100000 * _70 * stor6 / 10^18 * _78 / _78 <= 985 * ext_call.return_data[18 len 14]:
                                                mem[_184 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_184 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_184 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_184 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _257, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _257, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_184 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_184 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _257, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _257, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_184 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_184 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _184 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_184 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_184 + (4 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_184 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_184 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_184 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_184 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_184 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_184 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_184 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_184 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[_184 + (4 * ceil32(return_data.size)) + s + 481] = mem[_184 + ceil32(return_data.size) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _257, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _257, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_184 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_184 + ceil32(return_data.size) + 193] = address(_111)
                                                mem[_184 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_111), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_184 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_184 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_184 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_184 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_184 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_184 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_184 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_184 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _184 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_184 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_184 + (4 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_184 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_184 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_184 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_184 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_184 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_184 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_184 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_184 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_184 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_184 + (4 * ceil32(return_data.size)) + s + 481] = mem[_184 + (2 * ceil32(return_data.size)) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_184 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                        else:
                                            if 100000 * _70 * stor6 / 10^18 * _78 / _78 <= 985 * ext_call.return_data[50 len 14]:
                                                mem[_184 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_184 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_184 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_184 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _257, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _257, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_184 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_184 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _257, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _257, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_184 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_184 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _184 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_184 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_184 + (4 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_184 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_184 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_184 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_184 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_184 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_184 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_184 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_184 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[_184 + (4 * ceil32(return_data.size)) + s + 481] = mem[_184 + ceil32(return_data.size) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _257, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _257, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_184 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_184 + ceil32(return_data.size) + 193] = address(_111)
                                                mem[_184 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_111), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_184 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_184 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_184 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_184 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_184 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_184 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_184 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_184 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _184 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_184 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_184 + (4 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_184 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_184 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_184 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_184 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_184 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_184 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_184 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_184 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_184 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_184 + (4 * ceil32(return_data.size)) + s + 481] = mem[_184 + (2 * ceil32(return_data.size)) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_184 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                            else:
                                if not mem[_121 + 12 len 20]:
                                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                if address(_111) == mem[_121 + 12 len 20]:
                                    revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                                if address(_111) < mem[_121 + 12 len 20]:
                                    if not address(_111):
                                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                    _185 = mem[64]
                                    mem[mem[64] + 32] = address(_111)
                                    mem[mem[64] + 52] = address(_131)
                                    _259 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _261 = sha3(mem[_259 + 32 len mem[_259]])
                                    mem[_185 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_185 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_185 + 125] = _261
                                    mem[_185 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_185 + 72] = 85
                                    if not uint32(ext_code.size(sha3(0, 17269419903419772280, _261, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                        if 100000 * _70 * stor6 / 10^18 * _78 / _78 <= 0:
                                            mem[_185 + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_185 + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                            mem[_185 + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                            mem[_185 + 189] = 96
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _261, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _261, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_185 + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _261, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _261, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                            mem[_185 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _185 + (2 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_185 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_111):
                                                mem[_185 + (2 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_185 + (2 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    mem[_185 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_185 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_185 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_185 + (2 * ceil32(return_data.size)) + s + 481] = mem[_185 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _261, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _261, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args _70 * stor6 / 10^18 * _78 / _78, _70 * stor6 / 10^18 * _78 / _78, address(this.address), 128, 96, mem[_185 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_185 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_185 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_185 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_185 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_185 + (2 * ceil32(return_data.size)) + s + 481] = mem[_185 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _261, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _261, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args _70 * stor6 / 10^18 * _78 / _78, 0, address(this.address), 128, 96, mem[_185 + (2 * ceil32(return_data.size)) + 481 len 96]
                                            else:
                                                mem[_185 + (2 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_185 + (2 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    mem[_185 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_185 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_185 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_185 + (2 * ceil32(return_data.size)) + s + 481] = mem[_185 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _261, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _261, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, _70 * stor6 / 10^18 * _78 / _78, address(this.address), 128, 96, mem[_185 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_185 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_185 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_185 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_185 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_185 + (2 * ceil32(return_data.size)) + s + 481] = mem[_185 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _261, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _261, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, address(this.address), 128, 96, mem[_185 + (2 * ceil32(return_data.size)) + 481 len 96]
                                        else:
                                            mem[_185 + 193] = address(_111)
                                            mem[_185 + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_111), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            mem[_185 + 189] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_185 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_185 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                            mem[_185 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                            mem[_185 + ceil32(return_data.size) + 189] = 96
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_185 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_185 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_185 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_185 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _185 + (4 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_185 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_111):
                                                mem[_185 + (4 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_185 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                else:
                                                    mem[_185 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_185 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_185 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                else:
                                                    mem[_185 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_185 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_185 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_185 + (4 * ceil32(return_data.size)) + 449] = 96
                                            s = 0
                                            while s < 96:
                                                mem[_185 + (4 * ceil32(return_data.size)) + s + 481] = mem[_185 + ceil32(return_data.size) + s + 221]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_185 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                    else:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _261, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, _261, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_185 + 189 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                        if address(_111) == address(_131):
                                            if 100000 * _70 * stor6 / 10^18 * _78 / _78 <= 985 * ext_call.return_data[18 len 14]:
                                                mem[_185 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_185 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_185 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_185 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _261, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _261, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_185 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_185 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _261, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _261, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_185 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_185 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _185 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_185 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_185 + (4 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_185 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_185 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_185 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_185 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_185 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_185 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_185 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_185 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[_185 + (4 * ceil32(return_data.size)) + s + 481] = mem[_185 + ceil32(return_data.size) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _261, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _261, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_185 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_185 + ceil32(return_data.size) + 193] = address(_111)
                                                mem[_185 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_111), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_185 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_185 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_185 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_185 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_185 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_185 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_185 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_185 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _185 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_185 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_185 + (4 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_185 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_185 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_185 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_185 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_185 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_185 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_185 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_185 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_185 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_185 + (4 * ceil32(return_data.size)) + s + 481] = mem[_185 + (2 * ceil32(return_data.size)) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_185 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                        else:
                                            if 100000 * _70 * stor6 / 10^18 * _78 / _78 <= 985 * ext_call.return_data[50 len 14]:
                                                mem[_185 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_185 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_185 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_185 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _261, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _261, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_185 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_185 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _261, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _261, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_185 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_185 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _185 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_185 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_185 + (4 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_185 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_185 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_185 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_185 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_185 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_185 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_185 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_185 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[_185 + (4 * ceil32(return_data.size)) + s + 481] = mem[_185 + ceil32(return_data.size) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _261, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _261, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_185 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_185 + ceil32(return_data.size) + 193] = address(_111)
                                                mem[_185 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_111), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_185 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_185 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_185 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_185 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_185 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_185 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_185 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_185 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _185 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_185 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_185 + (4 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_185 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_185 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_185 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_185 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_185 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_185 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_185 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_185 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_185 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_185 + (4 * ceil32(return_data.size)) + s + 481] = mem[_185 + (2 * ceil32(return_data.size)) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_185 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                else:
                                    if not mem[_121 + 12 len 20]:
                                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                    _186 = mem[64]
                                    mem[mem[64] + 32] = address(mem[_121])
                                    mem[mem[64] + 52] = address(_111)
                                    _263 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _265 = sha3(mem[_263 + 32 len mem[_263]])
                                    mem[_186 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_186 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_186 + 125] = _265
                                    mem[_186 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_186 + 72] = 85
                                    if not uint32(ext_code.size(sha3(0, 17269419903419772280, _265, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                        if 100000 * _70 * stor6 / 10^18 * _78 / _78 <= 0:
                                            mem[_186 + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_186 + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                            mem[_186 + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                            mem[_186 + 189] = 96
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _265, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _265, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_186 + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _265, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _265, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                            mem[_186 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _186 + (2 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_186 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_111):
                                                mem[_186 + (2 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_186 + (2 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    mem[_186 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_186 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_186 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_186 + (2 * ceil32(return_data.size)) + s + 481] = mem[_186 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _265, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _265, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args _70 * stor6 / 10^18 * _78 / _78, _70 * stor6 / 10^18 * _78 / _78, address(this.address), 128, 96, mem[_186 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_186 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_186 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_186 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_186 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_186 + (2 * ceil32(return_data.size)) + s + 481] = mem[_186 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _265, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _265, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args _70 * stor6 / 10^18 * _78 / _78, 0, address(this.address), 128, 96, mem[_186 + (2 * ceil32(return_data.size)) + 481 len 96]
                                            else:
                                                mem[_186 + (2 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_186 + (2 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    mem[_186 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_186 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_186 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_186 + (2 * ceil32(return_data.size)) + s + 481] = mem[_186 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _265, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _265, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, _70 * stor6 / 10^18 * _78 / _78, address(this.address), 128, 96, mem[_186 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_186 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_186 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_186 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_186 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_186 + (2 * ceil32(return_data.size)) + s + 481] = mem[_186 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _265, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _265, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, address(this.address), 128, 96, mem[_186 + (2 * ceil32(return_data.size)) + 481 len 96]
                                        else:
                                            mem[_186 + 193] = address(_111)
                                            mem[_186 + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_111), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            mem[_186 + 189] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_186 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_186 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                            mem[_186 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                            mem[_186 + ceil32(return_data.size) + 189] = 96
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_186 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_186 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_186 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_186 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _186 + (4 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_186 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_111):
                                                mem[_186 + (4 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_186 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                else:
                                                    mem[_186 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_186 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_186 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                else:
                                                    mem[_186 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_186 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_186 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_186 + (4 * ceil32(return_data.size)) + 449] = 96
                                            s = 0
                                            while s < 96:
                                                mem[_186 + (4 * ceil32(return_data.size)) + s + 481] = mem[_186 + ceil32(return_data.size) + s + 221]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_186 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                    else:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _265, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, _265, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_186 + 189 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                        if address(_111) == address(_131):
                                            if 100000 * _70 * stor6 / 10^18 * _78 / _78 <= 985 * ext_call.return_data[18 len 14]:
                                                mem[_186 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_186 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_186 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_186 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _265, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _265, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_186 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_186 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _265, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _265, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_186 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_186 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _186 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_186 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_186 + (4 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_186 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_186 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_186 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_186 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_186 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_186 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_186 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_186 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[_186 + (4 * ceil32(return_data.size)) + s + 481] = mem[_186 + ceil32(return_data.size) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _265, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _265, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_186 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_186 + ceil32(return_data.size) + 193] = address(_111)
                                                mem[_186 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_111), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_186 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_186 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_186 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_186 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_186 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_186 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_186 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_186 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _186 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_186 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_186 + (4 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_186 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_186 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_186 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_186 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_186 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_186 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_186 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_186 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_186 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_186 + (4 * ceil32(return_data.size)) + s + 481] = mem[_186 + (2 * ceil32(return_data.size)) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_186 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                        else:
                                            if 100000 * _70 * stor6 / 10^18 * _78 / _78 <= 985 * ext_call.return_data[50 len 14]:
                                                mem[_186 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_186 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_186 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_186 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _265, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _265, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_186 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_186 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _265, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _265, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_186 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_186 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _186 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_186 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_186 + (4 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_186 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_186 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_186 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_186 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_186 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_186 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_186 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_186 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[_186 + (4 * ceil32(return_data.size)) + s + 481] = mem[_186 + ceil32(return_data.size) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _265, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _265, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_186 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_186 + ceil32(return_data.size) + 193] = address(_111)
                                                mem[_186 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_111), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_186 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_186 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_186 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_186 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_186 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_186 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_186 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_186 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _186 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_186 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_111):
                                                    mem[_186 + (4 * ceil32(return_data.size)) + 321] = _70 * stor6 / 10^18 * _78 / _78
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_186 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_186 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_186 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_111):
                                                        mem[_186 + (4 * ceil32(return_data.size)) + 353] = _70 * stor6 / 10^18 * _78 / _78
                                                    else:
                                                        mem[_186 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_186 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_186 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_186 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_186 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_186 + (4 * ceil32(return_data.size)) + s + 481] = mem[_186 + (2 * ceil32(return_data.size)) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_186 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
            else:
                if address(cd[((64 * idx) + cd[36] + 36)]) == address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]):
                    require ext_code.size(address(cd[((64 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((64 * idx) + cd[36] + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _96 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _108 = mem[_96]
                    require mem[_96] == mem[_96 + 12 len 20]
                    if mem[_96 + 12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                    if mem[_96 + 12 len 20] >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        _134 = mem[64]
                        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                        mem[mem[64] + 52] = address(_108)
                        _207 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _209 = sha3(mem[_207 + 32 len mem[_207]])
                        mem[_134 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_134 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                        mem[_134 + 125] = _209
                        mem[_134 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                        mem[_134 + 72] = 85
                        mem[_134 + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_134 + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                        mem[_134 + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                        mem[_134 + 189] = 96
                        require ext_code.size(address(sha3(0, 17269419903419772280, _209, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, _209, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                gas gas_remaining wei
                        mem[_134 + 317] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17269419903419772280, _209, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, _209, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                gas gas_remaining wei
                        mem[_134 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _134 + (2 * ceil32(return_data.size)) + 317
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_134 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if ext_call.return_data[12 len 20] == address(_108):
                            mem[_134 + (2 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                            if ext_call.return_data[12 len 20] == address(_108):
                                mem[_134 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                mem[_134 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_134 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_134 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[_134 + (2 * ceil32(return_data.size)) + s + 481] = mem[_134 + s + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _209, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _209, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 10^18 * _74 / stor7 * _82 / _78, 10^18 * _74 / stor7 * _82 / _78, address(this.address), 128, 96, mem[_134 + (2 * ceil32(return_data.size)) + 481 len 96]
                            else:
                                mem[_134 + (2 * ceil32(return_data.size)) + 353] = 0
                                mem[_134 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_134 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_134 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[_134 + (2 * ceil32(return_data.size)) + s + 481] = mem[_134 + s + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _209, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _209, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 10^18 * _74 / stor7 * _82 / _78, 0, address(this.address), 128, 96, mem[_134 + (2 * ceil32(return_data.size)) + 481 len 96]
                        else:
                            mem[_134 + (2 * ceil32(return_data.size)) + 321] = 0
                            if ext_call.return_data[12 len 20] == address(_108):
                                mem[_134 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                mem[_134 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_134 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_134 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[_134 + (2 * ceil32(return_data.size)) + s + 481] = mem[_134 + s + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _209, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _209, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 10^18 * _74 / stor7 * _82 / _78, address(this.address), 128, 96, mem[_134 + (2 * ceil32(return_data.size)) + 481 len 96]
                            else:
                                mem[_134 + (2 * ceil32(return_data.size)) + 353] = 0
                                mem[_134 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_134 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_134 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[_134 + (2 * ceil32(return_data.size)) + s + 481] = mem[_134 + s + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _209, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _209, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 96, mem[_134 + (2 * ceil32(return_data.size)) + 481 len 96]
                    else:
                        if not mem[_96 + 12 len 20]:
                            revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                        _133 = mem[64]
                        mem[mem[64] + 32] = address(mem[_96])
                        mem[mem[64] + 52] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                        _203 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _205 = sha3(mem[_203 + 32 len mem[_203]])
                        mem[_133 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_133 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                        mem[_133 + 125] = _205
                        mem[_133 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                        mem[_133 + 72] = 85
                        mem[_133 + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_133 + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                        mem[_133 + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                        mem[_133 + 189] = 96
                        require ext_code.size(address(sha3(0, 17269419903419772280, _205, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, _205, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                gas gas_remaining wei
                        mem[_133 + 317] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17269419903419772280, _205, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, 17269419903419772280, _205, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                gas gas_remaining wei
                        mem[_133 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _133 + (2 * ceil32(return_data.size)) + 317
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_133 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if ext_call.return_data[12 len 20] == address(_108):
                            mem[_133 + (2 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                            if ext_call.return_data[12 len 20] == address(_108):
                                mem[_133 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                mem[_133 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_133 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_133 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[_133 + (2 * ceil32(return_data.size)) + s + 481] = mem[_133 + s + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _205, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _205, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 10^18 * _74 / stor7 * _82 / _78, 10^18 * _74 / stor7 * _82 / _78, address(this.address), 128, 96, mem[_133 + (2 * ceil32(return_data.size)) + 481 len 96]
                            else:
                                mem[_133 + (2 * ceil32(return_data.size)) + 353] = 0
                                mem[_133 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_133 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_133 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[_133 + (2 * ceil32(return_data.size)) + s + 481] = mem[_133 + s + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _205, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _205, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 10^18 * _74 / stor7 * _82 / _78, 0, address(this.address), 128, 96, mem[_133 + (2 * ceil32(return_data.size)) + 481 len 96]
                        else:
                            mem[_133 + (2 * ceil32(return_data.size)) + 321] = 0
                            if ext_call.return_data[12 len 20] == address(_108):
                                mem[_133 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                mem[_133 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_133 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_133 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[_133 + (2 * ceil32(return_data.size)) + s + 481] = mem[_133 + s + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _205, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _205, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 10^18 * _74 / stor7 * _82 / _78, address(this.address), 128, 96, mem[_133 + (2 * ceil32(return_data.size)) + 481 len 96]
                            else:
                                mem[_133 + (2 * ceil32(return_data.size)) + 353] = 0
                                mem[_133 + (2 * ceil32(return_data.size)) + 385] = this.address
                                mem[_133 + (2 * ceil32(return_data.size)) + 417] = 128
                                mem[_133 + (2 * ceil32(return_data.size)) + 449] = 96
                                s = 0
                                while s < 96:
                                    mem[_133 + (2 * ceil32(return_data.size)) + s + 481] = mem[_133 + s + 221]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(sha3(0, 17269419903419772280, _205, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                call address(sha3(0, 17269419903419772280, _205, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 96, mem[_133 + (2 * ceil32(return_data.size)) + 481 len 96]
                else:
                    if address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]) == 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
                        require ext_code.size(address(cd[((64 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((64 * idx) + cd[36] + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _102 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _110 = mem[_102]
                        require mem[_102] == mem[_102 + 12 len 20]
                        if mem[_102 + 12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                            revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                        if mem[_102 + 12 len 20] >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                            _142 = mem[64]
                            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                            mem[mem[64] + 52] = address(_110)
                            _223 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _225 = sha3(mem[_223 + 32 len mem[_223]])
                            mem[_142 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_142 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                            mem[_142 + 125] = _225
                            mem[_142 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                            mem[_142 + 72] = 85
                            mem[_142 + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_142 + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                            mem[_142 + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                            mem[_142 + 189] = 96
                            require ext_code.size(address(sha3(0, 17269419903419772280, _225, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _225, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                    gas gas_remaining wei
                            mem[_142 + 317] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(sha3(0, 17269419903419772280, _225, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _225, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                    gas gas_remaining wei
                            mem[_142 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _142 + (2 * ceil32(return_data.size)) + 317
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_142 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if ext_call.return_data[12 len 20] == address(_110):
                                mem[_142 + (2 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                                if ext_call.return_data[12 len 20] == address(_110):
                                    mem[_142 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                    mem[_142 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_142 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_142 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[_142 + (2 * ceil32(return_data.size)) + s + 481] = mem[_142 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _225, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _225, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 10^18 * _74 / stor7 * _82 / _78, 10^18 * _74 / stor7 * _82 / _78, address(this.address), 128, 96, mem[_142 + (2 * ceil32(return_data.size)) + 481 len 96]
                                else:
                                    mem[_142 + (2 * ceil32(return_data.size)) + 353] = 0
                                    mem[_142 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_142 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_142 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[_142 + (2 * ceil32(return_data.size)) + s + 481] = mem[_142 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _225, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _225, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 10^18 * _74 / stor7 * _82 / _78, 0, address(this.address), 128, 96, mem[_142 + (2 * ceil32(return_data.size)) + 481 len 96]
                            else:
                                mem[_142 + (2 * ceil32(return_data.size)) + 321] = 0
                                if ext_call.return_data[12 len 20] == address(_110):
                                    mem[_142 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                    mem[_142 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_142 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_142 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[_142 + (2 * ceil32(return_data.size)) + s + 481] = mem[_142 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _225, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _225, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 10^18 * _74 / stor7 * _82 / _78, address(this.address), 128, 96, mem[_142 + (2 * ceil32(return_data.size)) + 481 len 96]
                                else:
                                    mem[_142 + (2 * ceil32(return_data.size)) + 353] = 0
                                    mem[_142 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_142 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_142 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[_142 + (2 * ceil32(return_data.size)) + s + 481] = mem[_142 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _225, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _225, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, mem[_142 + (2 * ceil32(return_data.size)) + 481 len 96]
                        else:
                            if not mem[_102 + 12 len 20]:
                                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                            _141 = mem[64]
                            mem[mem[64] + 32] = address(mem[_102])
                            mem[mem[64] + 52] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                            _219 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _221 = sha3(mem[_219 + 32 len mem[_219]])
                            mem[_141 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_141 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                            mem[_141 + 125] = _221
                            mem[_141 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                            mem[_141 + 72] = 85
                            mem[_141 + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_141 + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                            mem[_141 + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                            mem[_141 + 189] = 96
                            require ext_code.size(address(sha3(0, 17269419903419772280, _221, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _221, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                    gas gas_remaining wei
                            mem[_141 + 317] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(sha3(0, 17269419903419772280, _221, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _221, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                    gas gas_remaining wei
                            mem[_141 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _141 + (2 * ceil32(return_data.size)) + 317
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_141 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if ext_call.return_data[12 len 20] == address(_110):
                                mem[_141 + (2 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                                if ext_call.return_data[12 len 20] == address(_110):
                                    mem[_141 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                    mem[_141 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_141 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_141 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[_141 + (2 * ceil32(return_data.size)) + s + 481] = mem[_141 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _221, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _221, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 10^18 * _74 / stor7 * _82 / _78, 10^18 * _74 / stor7 * _82 / _78, address(this.address), 128, 96, mem[_141 + (2 * ceil32(return_data.size)) + 481 len 96]
                                else:
                                    mem[_141 + (2 * ceil32(return_data.size)) + 353] = 0
                                    mem[_141 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_141 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_141 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[_141 + (2 * ceil32(return_data.size)) + s + 481] = mem[_141 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _221, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _221, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 10^18 * _74 / stor7 * _82 / _78, 0, address(this.address), 128, 96, mem[_141 + (2 * ceil32(return_data.size)) + 481 len 96]
                            else:
                                mem[_141 + (2 * ceil32(return_data.size)) + 321] = 0
                                if ext_call.return_data[12 len 20] == address(_110):
                                    mem[_141 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                    mem[_141 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_141 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_141 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[_141 + (2 * ceil32(return_data.size)) + s + 481] = mem[_141 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _221, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _221, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 10^18 * _74 / stor7 * _82 / _78, address(this.address), 128, 96, mem[_141 + (2 * ceil32(return_data.size)) + 481 len 96]
                                else:
                                    mem[_141 + (2 * ceil32(return_data.size)) + 353] = 0
                                    mem[_141 + (2 * ceil32(return_data.size)) + 385] = this.address
                                    mem[_141 + (2 * ceil32(return_data.size)) + 417] = 128
                                    mem[_141 + (2 * ceil32(return_data.size)) + 449] = 96
                                    s = 0
                                    while s < 96:
                                        mem[_141 + (2 * ceil32(return_data.size)) + s + 481] = mem[_141 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _221, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _221, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, mem[_141 + (2 * ceil32(return_data.size)) + 481 len 96]
                    else:
                        if address(cd[((64 * idx) + cd[36] + 36)]) == 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
                            require ext_code.size(address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]))
                            staticcall address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]).underlying() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _106 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _114 = mem[_106]
                            require mem[_106] == mem[_106 + 12 len 20]
                            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == mem[_106 + 12 len 20]:
                                revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 < mem[_106 + 12 len 20]:
                                _147 = mem[64]
                                mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                                mem[mem[64] + 52] = address(_114)
                                _243 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _245 = sha3(mem[_243 + 32 len mem[_243]])
                                mem[_147 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_147 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                mem[_147 + 125] = _245
                                mem[_147 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                mem[_147 + 72] = 85
                                mem[_147 + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_147 + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                mem[_147 + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                mem[_147 + 189] = 96
                                require ext_code.size(address(sha3(0, 17269419903419772280, _245, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                staticcall address(sha3(0, 17269419903419772280, _245, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                        gas gas_remaining wei
                                mem[_147 + 317] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(sha3(0, 17269419903419772280, _245, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                staticcall address(sha3(0, 17269419903419772280, _245, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                        gas gas_remaining wei
                                mem[_147 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _147 + (2 * ceil32(return_data.size)) + 317
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[_147 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    mem[_147 + (2 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                                    if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                        mem[_147 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                        mem[_147 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_147 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_147 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[_147 + (2 * ceil32(return_data.size)) + s + 481] = mem[_147 + s + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _245, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _245, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 10^18 * _74 / stor7 * _82 / _78, 10^18 * _74 / stor7 * _82 / _78, address(this.address), 128, 96, mem[_147 + (2 * ceil32(return_data.size)) + 481 len 96]
                                    else:
                                        mem[_147 + (2 * ceil32(return_data.size)) + 353] = 0
                                        mem[_147 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_147 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_147 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[_147 + (2 * ceil32(return_data.size)) + s + 481] = mem[_147 + s + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _245, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _245, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 10^18 * _74 / stor7 * _82 / _78, 0, address(this.address), 128, 96, mem[_147 + (2 * ceil32(return_data.size)) + 481 len 96]
                                else:
                                    mem[_147 + (2 * ceil32(return_data.size)) + 321] = 0
                                    if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                        mem[_147 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                        mem[_147 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_147 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_147 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[_147 + (2 * ceil32(return_data.size)) + s + 481] = mem[_147 + s + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _245, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _245, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 10^18 * _74 / stor7 * _82 / _78, address(this.address), 128, 96, mem[_147 + (2 * ceil32(return_data.size)) + 481 len 96]
                                    else:
                                        mem[_147 + (2 * ceil32(return_data.size)) + 353] = 0
                                        mem[_147 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_147 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_147 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[_147 + (2 * ceil32(return_data.size)) + s + 481] = mem[_147 + s + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _245, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _245, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 96, mem[_147 + (2 * ceil32(return_data.size)) + 481 len 96]
                            else:
                                if not mem[_106 + 12 len 20]:
                                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                _148 = mem[64]
                                mem[mem[64] + 32] = address(mem[_106])
                                mem[mem[64] + 52] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
                                _247 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _249 = sha3(mem[_247 + 32 len mem[_247]])
                                mem[_148 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_148 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                mem[_148 + 125] = _249
                                mem[_148 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                mem[_148 + 72] = 85
                                mem[_148 + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_148 + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                mem[_148 + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                mem[_148 + 189] = 96
                                require ext_code.size(address(sha3(0, 17269419903419772280, _249, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                staticcall address(sha3(0, 17269419903419772280, _249, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                        gas gas_remaining wei
                                mem[_148 + 317] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(sha3(0, 17269419903419772280, _249, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                staticcall address(sha3(0, 17269419903419772280, _249, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                        gas gas_remaining wei
                                mem[_148 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _148 + (2 * ceil32(return_data.size)) + 317
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[_148 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                    mem[_148 + (2 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                                    if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                        mem[_148 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                        mem[_148 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_148 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_148 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[_148 + (2 * ceil32(return_data.size)) + s + 481] = mem[_148 + s + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _249, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _249, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 10^18 * _74 / stor7 * _82 / _78, 10^18 * _74 / stor7 * _82 / _78, address(this.address), 128, 96, mem[_148 + (2 * ceil32(return_data.size)) + 481 len 96]
                                    else:
                                        mem[_148 + (2 * ceil32(return_data.size)) + 353] = 0
                                        mem[_148 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_148 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_148 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[_148 + (2 * ceil32(return_data.size)) + s + 481] = mem[_148 + s + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _249, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _249, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 10^18 * _74 / stor7 * _82 / _78, 0, address(this.address), 128, 96, mem[_148 + (2 * ceil32(return_data.size)) + 481 len 96]
                                else:
                                    mem[_148 + (2 * ceil32(return_data.size)) + 321] = 0
                                    if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                        mem[_148 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                        mem[_148 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_148 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_148 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[_148 + (2 * ceil32(return_data.size)) + s + 481] = mem[_148 + s + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _249, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _249, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 10^18 * _74 / stor7 * _82 / _78, address(this.address), 128, 96, mem[_148 + (2 * ceil32(return_data.size)) + 481 len 96]
                                    else:
                                        mem[_148 + (2 * ceil32(return_data.size)) + 353] = 0
                                        mem[_148 + (2 * ceil32(return_data.size)) + 385] = this.address
                                        mem[_148 + (2 * ceil32(return_data.size)) + 417] = 128
                                        mem[_148 + (2 * ceil32(return_data.size)) + 449] = 96
                                        s = 0
                                        while s < 96:
                                            mem[_148 + (2 * ceil32(return_data.size)) + s + 481] = mem[_148 + s + 221]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _249, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, _249, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 96, mem[_148 + (2 * ceil32(return_data.size)) + 481 len 96]
                        else:
                            require ext_code.size(address(cd[((64 * idx) + cd[36] + 36)]))
                            staticcall address(cd[((64 * idx) + cd[36] + 36)]).underlying() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _105 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _113 = mem[_105]
                            require mem[_105] == mem[_105 + 12 len 20]
                            require ext_code.size(address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]))
                            staticcall address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]).underlying() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _123 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _135 = mem[_123]
                            require mem[_123] == mem[_123 + 12 len 20]
                            if address(_113) == mem[_123 + 12 len 20]:
                                revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                            if address(_113) >= mem[_123 + 12 len 20]:
                                if not mem[_123 + 12 len 20]:
                                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                if address(_113) == mem[_123 + 12 len 20]:
                                    revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                                if address(_113) < mem[_123 + 12 len 20]:
                                    if not address(_113):
                                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                    _189 = mem[64]
                                    mem[mem[64] + 32] = address(_113)
                                    mem[mem[64] + 52] = address(_135)
                                    _275 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _277 = sha3(mem[_275 + 32 len mem[_275]])
                                    mem[_189 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_189 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_189 + 125] = _277
                                    mem[_189 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_189 + 72] = 85
                                    if not uint32(ext_code.size(sha3(0, 17269419903419772280, _277, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                        if 100000 * 10^18 * _74 / stor7 * _82 / _78 <= 0:
                                            mem[_189 + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_189 + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                            mem[_189 + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                            mem[_189 + 189] = 96
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _277, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _277, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_189 + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _277, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _277, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                            mem[_189 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _189 + (2 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_189 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_113):
                                                mem[_189 + (2 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_189 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    mem[_189 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_189 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_189 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_189 + (2 * ceil32(return_data.size)) + s + 481] = mem[_189 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _277, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _277, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 10^18 * _74 / stor7 * _82 / _78, 10^18 * _74 / stor7 * _82 / _78, address(this.address), 128, 96, mem[_189 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_189 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_189 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_189 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_189 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_189 + (2 * ceil32(return_data.size)) + s + 481] = mem[_189 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _277, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _277, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 10^18 * _74 / stor7 * _82 / _78, 0, address(this.address), 128, 96, mem[_189 + (2 * ceil32(return_data.size)) + 481 len 96]
                                            else:
                                                mem[_189 + (2 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_189 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    mem[_189 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_189 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_189 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_189 + (2 * ceil32(return_data.size)) + s + 481] = mem[_189 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _277, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _277, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 10^18 * _74 / stor7 * _82 / _78, address(this.address), 128, 96, mem[_189 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_189 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_189 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_189 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_189 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_189 + (2 * ceil32(return_data.size)) + s + 481] = mem[_189 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _277, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _277, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, address(this.address), 128, 96, mem[_189 + (2 * ceil32(return_data.size)) + 481 len 96]
                                        else:
                                            mem[_189 + 193] = address(_113)
                                            mem[_189 + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_113), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            mem[_189 + 189] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_189 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_189 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                            mem[_189 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                            mem[_189 + ceil32(return_data.size) + 189] = 96
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_189 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_189 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_189 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_189 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _189 + (4 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_189 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_113):
                                                mem[_189 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_189 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                else:
                                                    mem[_189 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_189 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_189 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                else:
                                                    mem[_189 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_189 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_189 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_189 + (4 * ceil32(return_data.size)) + 449] = 96
                                            s = 0
                                            while s < 96:
                                                mem[_189 + (4 * ceil32(return_data.size)) + s + 481] = mem[_189 + ceil32(return_data.size) + s + 221]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_189 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                    else:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _277, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, _277, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_189 + 189 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                        if address(_113) == address(_135):
                                            if 100000 * 10^18 * _74 / stor7 * _82 / _78 <= 985 * ext_call.return_data[18 len 14]:
                                                mem[_189 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_189 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_189 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_189 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _277, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _277, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_189 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_189 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _277, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _277, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_189 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_189 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _189 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_189 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_189 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_189 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_189 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_189 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_189 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_189 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_189 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_189 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_189 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[_189 + (4 * ceil32(return_data.size)) + s + 481] = mem[_189 + ceil32(return_data.size) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _277, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _277, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_189 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_189 + ceil32(return_data.size) + 193] = address(_113)
                                                mem[_189 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_113), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_189 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_189 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_189 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_189 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_189 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_189 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_189 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_189 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _189 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_189 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_189 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_189 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_189 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_189 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_189 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_189 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_189 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_189 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_189 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_189 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_189 + (4 * ceil32(return_data.size)) + s + 481] = mem[_189 + (2 * ceil32(return_data.size)) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_189 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                        else:
                                            if 100000 * 10^18 * _74 / stor7 * _82 / _78 <= 985 * ext_call.return_data[50 len 14]:
                                                mem[_189 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_189 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_189 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_189 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _277, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _277, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_189 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_189 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _277, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _277, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_189 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_189 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _189 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_189 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_189 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_189 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_189 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_189 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_189 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_189 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_189 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_189 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_189 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[_189 + (4 * ceil32(return_data.size)) + s + 481] = mem[_189 + ceil32(return_data.size) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _277, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _277, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_189 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_189 + ceil32(return_data.size) + 193] = address(_113)
                                                mem[_189 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_113), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_189 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_189 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_189 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_189 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_189 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_189 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_189 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_189 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _189 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_189 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_189 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_189 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_189 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_189 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_189 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_189 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_189 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_189 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_189 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_189 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_189 + (4 * ceil32(return_data.size)) + s + 481] = mem[_189 + (2 * ceil32(return_data.size)) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_189 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                else:
                                    if not mem[_123 + 12 len 20]:
                                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                    _190 = mem[64]
                                    mem[mem[64] + 32] = address(mem[_123])
                                    mem[mem[64] + 52] = address(_113)
                                    _279 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _281 = sha3(mem[_279 + 32 len mem[_279]])
                                    mem[_190 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_190 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_190 + 125] = _281
                                    mem[_190 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_190 + 72] = 85
                                    if not uint32(ext_code.size(sha3(0, 17269419903419772280, _281, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                        if 100000 * 10^18 * _74 / stor7 * _82 / _78 <= 0:
                                            mem[_190 + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_190 + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                            mem[_190 + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                            mem[_190 + 189] = 96
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _281, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _281, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_190 + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _281, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _281, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                            mem[_190 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _190 + (2 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_190 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_113):
                                                mem[_190 + (2 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_190 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    mem[_190 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_190 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_190 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_190 + (2 * ceil32(return_data.size)) + s + 481] = mem[_190 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _281, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _281, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 10^18 * _74 / stor7 * _82 / _78, 10^18 * _74 / stor7 * _82 / _78, address(this.address), 128, 96, mem[_190 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_190 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_190 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_190 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_190 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_190 + (2 * ceil32(return_data.size)) + s + 481] = mem[_190 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _281, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _281, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 10^18 * _74 / stor7 * _82 / _78, 0, address(this.address), 128, 96, mem[_190 + (2 * ceil32(return_data.size)) + 481 len 96]
                                            else:
                                                mem[_190 + (2 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_190 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    mem[_190 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_190 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_190 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_190 + (2 * ceil32(return_data.size)) + s + 481] = mem[_190 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _281, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _281, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 10^18 * _74 / stor7 * _82 / _78, address(this.address), 128, 96, mem[_190 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_190 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_190 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_190 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_190 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_190 + (2 * ceil32(return_data.size)) + s + 481] = mem[_190 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _281, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _281, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, address(this.address), 128, 96, mem[_190 + (2 * ceil32(return_data.size)) + 481 len 96]
                                        else:
                                            mem[_190 + 193] = address(_113)
                                            mem[_190 + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_113), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            mem[_190 + 189] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_190 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_190 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                            mem[_190 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                            mem[_190 + ceil32(return_data.size) + 189] = 96
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_190 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_190 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_190 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_190 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _190 + (4 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_190 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_113):
                                                mem[_190 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_190 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                else:
                                                    mem[_190 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_190 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_190 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                else:
                                                    mem[_190 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_190 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_190 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_190 + (4 * ceil32(return_data.size)) + 449] = 96
                                            s = 0
                                            while s < 96:
                                                mem[_190 + (4 * ceil32(return_data.size)) + s + 481] = mem[_190 + ceil32(return_data.size) + s + 221]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_190 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                    else:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _281, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, _281, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_190 + 189 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                        if address(_113) == address(_135):
                                            if 100000 * 10^18 * _74 / stor7 * _82 / _78 <= 985 * ext_call.return_data[18 len 14]:
                                                mem[_190 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_190 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_190 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_190 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _281, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _281, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_190 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_190 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _281, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _281, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_190 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_190 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _190 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_190 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_190 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_190 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_190 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_190 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_190 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_190 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_190 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_190 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_190 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[_190 + (4 * ceil32(return_data.size)) + s + 481] = mem[_190 + ceil32(return_data.size) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _281, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _281, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_190 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_190 + ceil32(return_data.size) + 193] = address(_113)
                                                mem[_190 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_113), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_190 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_190 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_190 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_190 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_190 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_190 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_190 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_190 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _190 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_190 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_190 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_190 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_190 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_190 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_190 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_190 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_190 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_190 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_190 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_190 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_190 + (4 * ceil32(return_data.size)) + s + 481] = mem[_190 + (2 * ceil32(return_data.size)) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_190 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                        else:
                                            if 100000 * 10^18 * _74 / stor7 * _82 / _78 <= 985 * ext_call.return_data[50 len 14]:
                                                mem[_190 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_190 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_190 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_190 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _281, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _281, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_190 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_190 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _281, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _281, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_190 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_190 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _190 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_190 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_190 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_190 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_190 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_190 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_190 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_190 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_190 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_190 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_190 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[_190 + (4 * ceil32(return_data.size)) + s + 481] = mem[_190 + ceil32(return_data.size) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _281, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _281, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_190 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_190 + ceil32(return_data.size) + 193] = address(_113)
                                                mem[_190 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_113), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_190 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_190 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_190 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_190 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_190 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_190 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_190 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_190 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _190 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_190 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_190 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_190 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_190 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_190 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_190 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_190 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_190 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_190 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_190 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_190 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_190 + (4 * ceil32(return_data.size)) + s + 481] = mem[_190 + (2 * ceil32(return_data.size)) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_190 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                            else:
                                if not address(_113):
                                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                if address(_113) == mem[_123 + 12 len 20]:
                                    revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                                if address(_113) >= mem[_123 + 12 len 20]:
                                    if not mem[_123 + 12 len 20]:
                                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                    _188 = mem[64]
                                    mem[mem[64] + 32] = address(mem[_123])
                                    mem[mem[64] + 52] = address(_113)
                                    _271 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _273 = sha3(mem[_271 + 32 len mem[_271]])
                                    mem[_188 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_188 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_188 + 125] = _273
                                    mem[_188 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_188 + 72] = 85
                                    if not uint32(ext_code.size(sha3(0, 17269419903419772280, _273, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                        if 100000 * 10^18 * _74 / stor7 * _82 / _78 <= 0:
                                            mem[_188 + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_188 + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                            mem[_188 + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                            mem[_188 + 189] = 96
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _273, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _273, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_188 + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _273, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _273, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                            mem[_188 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _188 + (2 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_188 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_113):
                                                mem[_188 + (2 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_188 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    mem[_188 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_188 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_188 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_188 + (2 * ceil32(return_data.size)) + s + 481] = mem[_188 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _273, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _273, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 10^18 * _74 / stor7 * _82 / _78, 10^18 * _74 / stor7 * _82 / _78, address(this.address), 128, 96, mem[_188 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_188 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_188 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_188 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_188 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_188 + (2 * ceil32(return_data.size)) + s + 481] = mem[_188 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _273, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _273, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 10^18 * _74 / stor7 * _82 / _78, 0, address(this.address), 128, 96, mem[_188 + (2 * ceil32(return_data.size)) + 481 len 96]
                                            else:
                                                mem[_188 + (2 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_188 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    mem[_188 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_188 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_188 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_188 + (2 * ceil32(return_data.size)) + s + 481] = mem[_188 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _273, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _273, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 10^18 * _74 / stor7 * _82 / _78, address(this.address), 128, 96, mem[_188 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_188 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_188 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_188 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_188 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_188 + (2 * ceil32(return_data.size)) + s + 481] = mem[_188 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _273, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _273, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, address(this.address), 128, 96, mem[_188 + (2 * ceil32(return_data.size)) + 481 len 96]
                                        else:
                                            mem[_188 + 193] = address(_113)
                                            mem[_188 + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_113), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            mem[_188 + 189] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_188 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_188 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                            mem[_188 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                            mem[_188 + ceil32(return_data.size) + 189] = 96
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_188 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_188 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_188 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_188 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _188 + (4 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_188 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_113):
                                                mem[_188 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_188 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                else:
                                                    mem[_188 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_188 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_188 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                else:
                                                    mem[_188 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_188 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_188 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_188 + (4 * ceil32(return_data.size)) + 449] = 96
                                            s = 0
                                            while s < 96:
                                                mem[_188 + (4 * ceil32(return_data.size)) + s + 481] = mem[_188 + ceil32(return_data.size) + s + 221]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_188 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                    else:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _273, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, _273, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_188 + 189 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                        if address(_113) == address(_113):
                                            if 100000 * 10^18 * _74 / stor7 * _82 / _78 <= 985 * ext_call.return_data[18 len 14]:
                                                mem[_188 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_188 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_188 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_188 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _273, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _273, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_188 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_188 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _273, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _273, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_188 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_188 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _188 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_188 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_188 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_188 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_188 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_188 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_188 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_188 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_188 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_188 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_188 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[_188 + (4 * ceil32(return_data.size)) + s + 481] = mem[_188 + ceil32(return_data.size) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _273, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _273, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_188 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_188 + ceil32(return_data.size) + 193] = address(_113)
                                                mem[_188 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_113), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_188 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_188 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_188 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_188 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_188 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_188 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_188 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_188 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _188 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_188 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_188 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_188 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_188 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_188 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_188 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_188 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_188 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_188 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_188 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_188 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_188 + (4 * ceil32(return_data.size)) + s + 481] = mem[_188 + (2 * ceil32(return_data.size)) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_188 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                        else:
                                            if 100000 * 10^18 * _74 / stor7 * _82 / _78 <= 985 * ext_call.return_data[50 len 14]:
                                                mem[_188 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_188 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_188 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_188 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _273, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _273, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_188 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_188 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _273, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _273, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_188 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_188 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _188 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_188 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_188 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_188 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_188 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_188 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_188 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_188 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_188 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_188 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_188 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[_188 + (4 * ceil32(return_data.size)) + s + 481] = mem[_188 + ceil32(return_data.size) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _273, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _273, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_188 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_188 + ceil32(return_data.size) + 193] = address(_113)
                                                mem[_188 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_113), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_188 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_188 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_188 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_188 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_188 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_188 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_188 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_188 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _188 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_188 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_188 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_188 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_188 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_188 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_188 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_188 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_188 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_188 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_188 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_188 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_188 + (4 * ceil32(return_data.size)) + s + 481] = mem[_188 + (2 * ceil32(return_data.size)) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_188 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + 256]
                                else:
                                    if not address(_113):
                                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                                    _187 = mem[64]
                                    mem[mem[64] + 32] = address(_113)
                                    mem[mem[64] + 52] = address(_135)
                                    _267 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _269 = sha3(mem[_267 + 32 len mem[_267]])
                                    mem[_187 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_187 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_187 + 125] = _269
                                    mem[_187 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_187 + 72] = 85
                                    if not uint32(ext_code.size(sha3(0, 17269419903419772280, _269, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))):
                                        if 100000 * 10^18 * _74 / stor7 * _82 / _78 <= 0:
                                            mem[_187 + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_187 + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                            mem[_187 + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                            mem[_187 + 189] = 96
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _269, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _269, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                    gas gas_remaining wei
                                            mem[_187 + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(address(sha3(0, 17269419903419772280, _269, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                            staticcall address(sha3(0, 17269419903419772280, _269, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                    gas gas_remaining wei
                                            mem[_187 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _187 + (2 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_187 + (2 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_113):
                                                mem[_187 + (2 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_187 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    mem[_187 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_187 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_187 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_187 + (2 * ceil32(return_data.size)) + s + 481] = mem[_187 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _269, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _269, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 10^18 * _74 / stor7 * _82 / _78, 10^18 * _74 / stor7 * _82 / _78, address(this.address), 128, 96, mem[_187 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_187 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_187 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_187 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_187 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_187 + (2 * ceil32(return_data.size)) + s + 481] = mem[_187 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _269, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _269, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 10^18 * _74 / stor7 * _82 / _78, 0, address(this.address), 128, 96, mem[_187 + (2 * ceil32(return_data.size)) + 481 len 96]
                                            else:
                                                mem[_187 + (2 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_187 + (2 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    mem[_187 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_187 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_187 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_187 + (2 * ceil32(return_data.size)) + s + 481] = mem[_187 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _269, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _269, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 10^18 * _74 / stor7 * _82 / _78, address(this.address), 128, 96, mem[_187 + (2 * ceil32(return_data.size)) + 481 len 96]
                                                else:
                                                    mem[_187 + (2 * ceil32(return_data.size)) + 353] = 0
                                                    mem[_187 + (2 * ceil32(return_data.size)) + 385] = this.address
                                                    mem[_187 + (2 * ceil32(return_data.size)) + 417] = 128
                                                    mem[_187 + (2 * ceil32(return_data.size)) + 449] = 96
                                                    s = 0
                                                    while s < 96:
                                                        mem[_187 + (2 * ceil32(return_data.size)) + s + 481] = mem[_187 + s + 221]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(sha3(0, 17269419903419772280, _269, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                    call address(sha3(0, 17269419903419772280, _269, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, address(this.address), 128, 96, mem[_187 + (2 * ceil32(return_data.size)) + 481 len 96]
                                        else:
                                            mem[_187 + 193] = address(_113)
                                            mem[_187 + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(_113), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                            mem[_187 + 189] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_187 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_187 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                            mem[_187 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                            mem[_187 + ceil32(return_data.size) + 189] = 96
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            mem[_187 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_187 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token1() with:
                                                    gas gas_remaining wei
                                                   args mem[_187 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                            mem[_187 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _187 + (4 * ceil32(return_data.size)) + 317
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[_187 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            if ext_call.return_data[12 len 20] == address(_113):
                                                mem[_187 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_187 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                else:
                                                    mem[_187 + (4 * ceil32(return_data.size)) + 353] = 0
                                            else:
                                                mem[_187 + (4 * ceil32(return_data.size)) + 321] = 0
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_187 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                else:
                                                    mem[_187 + (4 * ceil32(return_data.size)) + 353] = 0
                                            mem[_187 + (4 * ceil32(return_data.size)) + 385] = this.address
                                            mem[_187 + (4 * ceil32(return_data.size)) + 417] = 128
                                            mem[_187 + (4 * ceil32(return_data.size)) + 449] = 96
                                            s = 0
                                            while s < 96:
                                                mem[_187 + (4 * ceil32(return_data.size)) + s + 481] = mem[_187 + ceil32(return_data.size) + s + 221]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[_187 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                    else:
                                        require ext_code.size(address(sha3(0, 17269419903419772280, _269, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        staticcall address(sha3(0, 17269419903419772280, _269, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_187 + 189 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                        if address(_113) == address(_113):
                                            if 100000 * 10^18 * _74 / stor7 * _82 / _78 <= 985 * ext_call.return_data[18 len 14]:
                                                mem[_187 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_187 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_187 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_187 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _269, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _269, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_187 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_187 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _269, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _269, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_187 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_187 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _187 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_187 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_187 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_187 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_187 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_187 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_187 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_187 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_187 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_187 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_187 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[_187 + (4 * ceil32(return_data.size)) + s + 481] = mem[_187 + ceil32(return_data.size) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _269, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _269, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_187 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_187 + ceil32(return_data.size) + 193] = address(_113)
                                                mem[_187 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_113), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_187 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_187 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_187 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_187 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_187 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_187 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_187 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_187 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _187 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_187 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_187 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_187 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_187 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_187 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_187 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_187 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_187 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_187 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_187 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_187 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_187 + (4 * ceil32(return_data.size)) + s + 481] = mem[_187 + (2 * ceil32(return_data.size)) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_187 + (2 * ceil32(return_data.size)) + 189]) > mem[_187 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_187 + (4 * ceil32(return_data.size)) + mem[_187 + (2 * ceil32(return_data.size)) + 189] + 481] = 0
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_187 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + ceil32(mem[_187 + (2 * ceil32(return_data.size)) + 189]) + 160]
                                        else:
                                            if 100000 * 10^18 * _74 / stor7 * _82 / _78 <= 985 * ext_call.return_data[50 len 14]:
                                                mem[_187 + ceil32(return_data.size) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_187 + ceil32(return_data.size) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_187 + ceil32(return_data.size) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_187 + ceil32(return_data.size) + 189] = 96
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _269, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _269, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token0() with:
                                                        gas gas_remaining wei
                                                mem[_187 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_187 + (2 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _269, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                staticcall address(sha3(0, 17269419903419772280, _269, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_187 + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                                                mem[_187 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _187 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_187 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_187 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_187 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_187 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_187 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_187 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_187 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_187 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_187 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_187 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < 96:
                                                    mem[_187 + (4 * ceil32(return_data.size)) + s + 481] = mem[_187 + ceil32(return_data.size) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(sha3(0, 17269419903419772280, _269, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                                call address(sha3(0, 17269419903419772280, _269, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_187 + (4 * ceil32(return_data.size)) + 321 len (5 * ceil32(return_data.size)) + 256]
                                            else:
                                                mem[_187 + ceil32(return_data.size) + 193] = address(_113)
                                                mem[_187 + ceil32(return_data.size) + 225] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
                                                staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                                                        gas gas_remaining wei
                                                       args address(_113), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                                mem[_187 + ceil32(return_data.size) + 189] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_187 + (2 * ceil32(return_data.size)) + 221] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_187 + (2 * ceil32(return_data.size)) + 253] = address(cd[((64 * idx) + cd[36] + 36)])
                                                mem[_187 + (2 * ceil32(return_data.size)) + 285] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                                                mem[_187 + (2 * ceil32(return_data.size)) + 189] = 96
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[_187 + (2 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_187 + (4 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token1() with:
                                                        gas gas_remaining wei
                                                       args mem[_187 + (4 * ceil32(return_data.size)) + 321 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _187 + (4 * ceil32(return_data.size)) + 317
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_187 + (4 * ceil32(return_data.size)) + 317] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                if ext_call.return_data[12 len 20] == address(_113):
                                                    mem[_187 + (4 * ceil32(return_data.size)) + 321] = 10^18 * _74 / stor7 * _82 / _78
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_187 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_187 + (4 * ceil32(return_data.size)) + 353] = 0
                                                else:
                                                    mem[_187 + (4 * ceil32(return_data.size)) + 321] = 0
                                                    if ext_call.return_data[12 len 20] == address(_113):
                                                        mem[_187 + (4 * ceil32(return_data.size)) + 353] = 10^18 * _74 / stor7 * _82 / _78
                                                    else:
                                                        mem[_187 + (4 * ceil32(return_data.size)) + 353] = 0
                                                mem[_187 + (4 * ceil32(return_data.size)) + 385] = this.address
                                                mem[_187 + (4 * ceil32(return_data.size)) + 417] = 128
                                                mem[_187 + (4 * ceil32(return_data.size)) + 449] = 96
                                                s = 0
                                                while s < mem[_187 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_187 + (4 * ceil32(return_data.size)) + s + 481] = mem[_187 + (2 * ceil32(return_data.size)) + s + 221]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_187 + (2 * ceil32(return_data.size)) + 189]) > mem[_187 + (2 * ceil32(return_data.size)) + 189]:
                                                    mem[_187 + (4 * ceil32(return_data.size)) + mem[_187 + (2 * ceil32(return_data.size)) + 189] + 481] = 0
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_187 + (4 * ceil32(return_data.size)) + 321 len (7 * ceil32(return_data.size)) + ceil32(mem[_187 + (2 * ceil32(return_data.size)) + 189]) + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
