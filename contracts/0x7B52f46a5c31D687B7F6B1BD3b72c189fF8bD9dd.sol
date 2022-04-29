contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
address WAVAXAddress;
uint256 nonce;
uint256 sub_ac3f7234;

function sub_173f6b40(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
}

function WAVAX() {
    return WAVAXAddress
}

function owner() {
    return owner
}

function sub_ac3f7234(?) {
    return sub_ac3f7234
}

function sub_ada25427(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[arg1])
}

function nonce() {
    return nonce
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_55b605a7(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ac3f7234 = arg1
}

function addBridge(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1[address(arg1)]:
        revert with 0, 'A2-R1'
    stor1[address(arg1)] = 1
}

function addRecipient(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2[address(arg1)]:
        revert with 0, 'A3-R1'
    stor2[address(arg1)] = 1
}

function removeBridge(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor1[address(arg1)]:
        revert with 0, 'R2-R1'
    stor1[address(arg1)] = 0
}

function removeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor2[address(arg1)]:
        revert with 0, 'R3-R1'
    stor2[address(arg1)] = 0
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) <= 0:
        revert with 0, 'W1-R1'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdrawErc20(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'W2-R1'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'W2-R2'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_2a3263ae(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(WAVAXAddress)
    call WAVAXAddress.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(WAVAXAddress)
    call WAVAXAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 'NH{q', 1
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    if ext_call.return_data[12 len 20] == WAVAXAddress:
        staticcall address(arg1).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(arg1))
        if ext_call.return_data[12 len 20] == WAVAXAddress:
            staticcall address(arg1).token1() with:
                    gas gas_remaining wei
        else:
            staticcall address(arg1).token0() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(address(arg1))
        staticcall address(arg1).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if msg.value and 997 > -1 / msg.value:
            revert with 'NH{q', 17
        if ext_call.return_data[12 len 20] == WAVAXAddress:
            if 997 * msg.value and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * msg.value:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * msg.value) - 1:
                revert with 'NH{q', 17
            if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value):
                revert with 'NH{q', 18
            if 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value) < arg2:
                revert with 0, 'S4-R1'
            require ext_code.size(address(arg1))
            staticcall address(arg1).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == WAVAXAddress:
                mem[(11 * ceil32(return_data.size)) + 260] = 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value)
                mem[(11 * ceil32(return_data.size)) + 292] = this.address
                mem[(11 * ceil32(return_data.size)) + 324] = 128
                mem[(11 * ceil32(return_data.size)) + 356] = 0
                mem[(11 * ceil32(return_data.size)) + 388 len 0] = None
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value), address(this.address), 128, 0
            else:
                mem[(11 * ceil32(return_data.size)) + 260] = 0
                mem[(11 * ceil32(return_data.size)) + 292] = this.address
                mem[(11 * ceil32(return_data.size)) + 324] = 128
                mem[(11 * ceil32(return_data.size)) + 356] = 0
                mem[(11 * ceil32(return_data.size)) + 388 len 0] = None
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value), 0, address(this.address), 128, 0
        else:
            if 997 * msg.value and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * msg.value:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * msg.value) - 1:
                revert with 'NH{q', 17
            if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value):
                revert with 'NH{q', 18
            if 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value) < arg2:
                revert with 0, 'S4-R1'
            require ext_code.size(address(arg1))
            staticcall address(arg1).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == WAVAXAddress:
                mem[(11 * ceil32(return_data.size)) + 260] = 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value)
                mem[(11 * ceil32(return_data.size)) + 292] = this.address
                mem[(11 * ceil32(return_data.size)) + 324] = 128
                mem[(11 * ceil32(return_data.size)) + 356] = 0
                mem[(11 * ceil32(return_data.size)) + 388 len 0] = None
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value), address(this.address), 128, 0
            else:
                mem[(11 * ceil32(return_data.size)) + 260] = 0
                mem[(11 * ceil32(return_data.size)) + 292] = this.address
                mem[(11 * ceil32(return_data.size)) + 324] = 128
                mem[(11 * ceil32(return_data.size)) + 356] = 0
                mem[(11 * ceil32(return_data.size)) + 388 len 0] = None
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value), 0, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] > -arg2 - 1:
            revert with 'NH{q', 17
        mem[(11 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(11 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= ext_call.return_data[0] + arg2:
            revert with 0, 'S4-R2'
        if not stor2[address(arg3)]:
            revert with 0, 'S2-R1'
        mem[(12 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(12 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(14 * ceil32(return_data.size)) + 228] = address(arg3)
        mem[(14 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg3), ext_call.return_data[0], mem[(14 * ceil32(return_data.size)) + 292 len 5 * ceil32(return_data.size)]
        mem[(14 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if nonce == -1:
            revert with 'NH{q', 17
        nonce++
        mem[(16 * ceil32(return_data.size)) + 224] = nonce
        emit 0x42d60699: mem[(16 * ceil32(return_data.size)) + 224 len (9 * ceil32(return_data.size)) + 32]
    else:
        staticcall address(arg1).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != WAVAXAddress:
            revert with 0, 'SO-R1'
        require ext_code.size(address(arg1))
        staticcall address(arg1).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(arg1))
        if ext_call.return_data[12 len 20] == WAVAXAddress:
            staticcall address(arg1).token1() with:
                    gas gas_remaining wei
        else:
            staticcall address(arg1).token0() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(address(arg1))
        staticcall address(arg1).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if msg.value and 997 > -1 / msg.value:
            revert with 'NH{q', 17
        if ext_call.return_data[12 len 20] == WAVAXAddress:
            if 997 * msg.value and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * msg.value:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * msg.value) - 1:
                revert with 'NH{q', 17
            if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value):
                revert with 'NH{q', 18
            if 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value) < arg2:
                revert with 0, 'S4-R1'
            require ext_code.size(address(arg1))
            staticcall address(arg1).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == WAVAXAddress:
                mem[(12 * ceil32(return_data.size)) + 260] = 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value)
                mem[(12 * ceil32(return_data.size)) + 292] = this.address
                mem[(12 * ceil32(return_data.size)) + 324] = 128
                mem[(12 * ceil32(return_data.size)) + 356] = 0
                mem[(12 * ceil32(return_data.size)) + 388 len 0] = None
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value), address(this.address), 128, 0
            else:
                mem[(12 * ceil32(return_data.size)) + 260] = 0
                mem[(12 * ceil32(return_data.size)) + 292] = this.address
                mem[(12 * ceil32(return_data.size)) + 324] = 128
                mem[(12 * ceil32(return_data.size)) + 356] = 0
                mem[(12 * ceil32(return_data.size)) + 388 len 0] = None
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value), 0, address(this.address), 128, 0
        else:
            if 997 * msg.value and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * msg.value:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * msg.value) - 1:
                revert with 'NH{q', 17
            if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value):
                revert with 'NH{q', 18
            if 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value) < arg2:
                revert with 0, 'S4-R1'
            require ext_code.size(address(arg1))
            staticcall address(arg1).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == WAVAXAddress:
                mem[(12 * ceil32(return_data.size)) + 260] = 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value)
                mem[(12 * ceil32(return_data.size)) + 292] = this.address
                mem[(12 * ceil32(return_data.size)) + 324] = 128
                mem[(12 * ceil32(return_data.size)) + 356] = 0
                mem[(12 * ceil32(return_data.size)) + 388 len 0] = None
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value), address(this.address), 128, 0
            else:
                mem[(12 * ceil32(return_data.size)) + 260] = 0
                mem[(12 * ceil32(return_data.size)) + 292] = this.address
                mem[(12 * ceil32(return_data.size)) + 324] = 128
                mem[(12 * ceil32(return_data.size)) + 356] = 0
                mem[(12 * ceil32(return_data.size)) + 388 len 0] = None
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value), 0, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] > -arg2 - 1:
            revert with 'NH{q', 17
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= ext_call.return_data[0] + arg2:
            revert with 0, 'S4-R2'
        if not stor2[address(arg3)]:
            revert with 0, 'S2-R1'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(15 * ceil32(return_data.size)) + 228] = address(arg3)
        mem[(15 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg3), ext_call.return_data[0], mem[(15 * ceil32(return_data.size)) + 292 len 5 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if nonce == -1:
            revert with 'NH{q', 17
        nonce++
        emit 0x42d60699: nonce, mem[(17 * ceil32(return_data.size)) + 256 len 9 * ceil32(return_data.size)]
}

function sub_4528ec2f(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > sub_ac3f7234:
        revert with 0, 'S1-R1'
    if msg.value <= arg3:
        revert with 0, 'S1-R2'
    if msg.value < arg3:
        revert with 'NH{q', 17
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(WAVAXAddress)
    call WAVAXAddress.deposit() with:
       value msg.value - arg3 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(WAVAXAddress)
    call WAVAXAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), msg.value - arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 'NH{q', 1
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    if ext_call.return_data[12 len 20] == WAVAXAddress:
        staticcall address(arg1).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(arg1))
        if ext_call.return_data[12 len 20] == WAVAXAddress:
            staticcall address(arg1).token1() with:
                    gas gas_remaining wei
        else:
            staticcall address(arg1).token0() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(address(arg1))
        staticcall address(arg1).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if msg.value - arg3 and 997 > -1 / msg.value - arg3:
            revert with 'NH{q', 17
        if ext_call.return_data[12 len 20] == WAVAXAddress:
            if (997 * msg.value) - (997 * arg3) and Mask(112, 0, ext_call.return_data[32]) > -1 / (997 * msg.value) - (997 * arg3):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * msg.value) + (997 * arg3) - 1:
                revert with 'NH{q', 17
            if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value) - (997 * arg3):
                revert with 'NH{q', 18
            if (997 * msg.value * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3 * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value) - (997 * arg3) < arg2:
                revert with 0, 'S4-R1'
            require ext_code.size(address(arg1))
            staticcall address(arg1).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == WAVAXAddress:
                mem[(11 * ceil32(return_data.size)) + 260] = (997 * msg.value * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3 * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value) - (997 * arg3)
                mem[(11 * ceil32(return_data.size)) + 292] = this.address
                mem[(11 * ceil32(return_data.size)) + 324] = 128
                mem[(11 * ceil32(return_data.size)) + 356] = 0
                mem[(11 * ceil32(return_data.size)) + 388 len 0] = None
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, (997 * msg.value * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3 * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value) - (997 * arg3), address(this.address), 128, 0
            else:
                mem[(11 * ceil32(return_data.size)) + 260] = 0
                mem[(11 * ceil32(return_data.size)) + 292] = this.address
                mem[(11 * ceil32(return_data.size)) + 324] = 128
                mem[(11 * ceil32(return_data.size)) + 356] = 0
                mem[(11 * ceil32(return_data.size)) + 388 len 0] = None
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (997 * msg.value * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3 * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value) - (997 * arg3), 0, address(this.address), 128, 0
        else:
            if (997 * msg.value) - (997 * arg3) and Mask(112, 0, ext_call.return_data[0]) > -1 / (997 * msg.value) - (997 * arg3):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * msg.value) + (997 * arg3) - 1:
                revert with 'NH{q', 17
            if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value) - (997 * arg3):
                revert with 'NH{q', 18
            if (997 * msg.value * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3 * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value) - (997 * arg3) < arg2:
                revert with 0, 'S4-R1'
            require ext_code.size(address(arg1))
            staticcall address(arg1).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == WAVAXAddress:
                mem[(11 * ceil32(return_data.size)) + 260] = (997 * msg.value * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3 * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value) - (997 * arg3)
                mem[(11 * ceil32(return_data.size)) + 292] = this.address
                mem[(11 * ceil32(return_data.size)) + 324] = 128
                mem[(11 * ceil32(return_data.size)) + 356] = 0
                mem[(11 * ceil32(return_data.size)) + 388 len 0] = None
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, (997 * msg.value * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3 * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value) - (997 * arg3), address(this.address), 128, 0
            else:
                mem[(11 * ceil32(return_data.size)) + 260] = 0
                mem[(11 * ceil32(return_data.size)) + 292] = this.address
                mem[(11 * ceil32(return_data.size)) + 324] = 128
                mem[(11 * ceil32(return_data.size)) + 356] = 0
                mem[(11 * ceil32(return_data.size)) + 388 len 0] = None
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (997 * msg.value * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3 * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value) - (997 * arg3), 0, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] > -arg2 - 1:
            revert with 'NH{q', 17
        mem[(11 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= ext_call.return_data[0] + arg2:
            revert with 0, 'S4-R2'
        if not stor1[address(arg4)]:
            revert with 0, 'S1-R3'
        mem[(12 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(14 * ceil32(return_data.size)) + 228] = address(arg4)
        mem[(14 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), ext_call.return_data[0], mem[(14 * ceil32(return_data.size)) + 292 len 5 * ceil32(return_data.size)]
        mem[(14 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(16 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args mem[(16 * ceil32(return_data.size)) + 228 len (9 * ceil32(return_data.size)) + 32]
    else:
        staticcall address(arg1).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != WAVAXAddress:
            revert with 0, 'SO-R1'
        require ext_code.size(address(arg1))
        staticcall address(arg1).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(arg1))
        if ext_call.return_data[12 len 20] == WAVAXAddress:
            staticcall address(arg1).token1() with:
                    gas gas_remaining wei
        else:
            staticcall address(arg1).token0() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(address(arg1))
        staticcall address(arg1).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if msg.value - arg3 and 997 > -1 / msg.value - arg3:
            revert with 'NH{q', 17
        if ext_call.return_data[12 len 20] == WAVAXAddress:
            if (997 * msg.value) - (997 * arg3) and Mask(112, 0, ext_call.return_data[32]) > -1 / (997 * msg.value) - (997 * arg3):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * msg.value) + (997 * arg3) - 1:
                revert with 'NH{q', 17
            if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value) - (997 * arg3):
                revert with 'NH{q', 18
            if (997 * msg.value * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3 * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value) - (997 * arg3) < arg2:
                revert with 0, 'S4-R1'
            require ext_code.size(address(arg1))
            staticcall address(arg1).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == WAVAXAddress:
                mem[(12 * ceil32(return_data.size)) + 260] = (997 * msg.value * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3 * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value) - (997 * arg3)
                mem[(12 * ceil32(return_data.size)) + 292] = this.address
                mem[(12 * ceil32(return_data.size)) + 324] = 128
                mem[(12 * ceil32(return_data.size)) + 356] = 0
                mem[(12 * ceil32(return_data.size)) + 388 len 0] = None
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, (997 * msg.value * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3 * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value) - (997 * arg3), address(this.address), 128, 0
            else:
                mem[(12 * ceil32(return_data.size)) + 260] = 0
                mem[(12 * ceil32(return_data.size)) + 292] = this.address
                mem[(12 * ceil32(return_data.size)) + 324] = 128
                mem[(12 * ceil32(return_data.size)) + 356] = 0
                mem[(12 * ceil32(return_data.size)) + 388 len 0] = None
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (997 * msg.value * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3 * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value) - (997 * arg3), 0, address(this.address), 128, 0
        else:
            if (997 * msg.value) - (997 * arg3) and Mask(112, 0, ext_call.return_data[0]) > -1 / (997 * msg.value) - (997 * arg3):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * msg.value) + (997 * arg3) - 1:
                revert with 'NH{q', 17
            if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value) - (997 * arg3):
                revert with 'NH{q', 18
            if (997 * msg.value * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3 * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value) - (997 * arg3) < arg2:
                revert with 0, 'S4-R1'
            require ext_code.size(address(arg1))
            staticcall address(arg1).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == WAVAXAddress:
                mem[(12 * ceil32(return_data.size)) + 260] = (997 * msg.value * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3 * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value) - (997 * arg3)
                mem[(12 * ceil32(return_data.size)) + 292] = this.address
                mem[(12 * ceil32(return_data.size)) + 324] = 128
                mem[(12 * ceil32(return_data.size)) + 356] = 0
                mem[(12 * ceil32(return_data.size)) + 388 len 0] = None
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, (997 * msg.value * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3 * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value) - (997 * arg3), address(this.address), 128, 0
            else:
                mem[(12 * ceil32(return_data.size)) + 260] = 0
                mem[(12 * ceil32(return_data.size)) + 292] = this.address
                mem[(12 * ceil32(return_data.size)) + 324] = 128
                mem[(12 * ceil32(return_data.size)) + 356] = 0
                mem[(12 * ceil32(return_data.size)) + 388 len 0] = None
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (997 * msg.value * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3 * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value) - (997 * arg3), 0, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] > -arg2 - 1:
            revert with 'NH{q', 17
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= ext_call.return_data[0] + arg2:
            revert with 0, 'S4-R2'
        if not stor1[address(arg4)]:
            revert with 0, 'S1-R3'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(15 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), ext_call.return_data[0], mem[(15 * ceil32(return_data.size)) + 292 len 5 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address), mem[(17 * ceil32(return_data.size)) + 260 len 9 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg4))
    call address(arg4).0x42966c68 with:
       value arg3 wei
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if nonce == -1:
        revert with 'NH{q', 17
    nonce++
    emit 0x42d60699: nonce
}

function sub_835dd5c6(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(WAVAXAddress)
    staticcall WAVAXAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    if ext_call.return_data[12 len 20] == WAVAXAddress:
        staticcall address(arg1).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(arg1))
        if ext_call.return_data[12 len 20] == WAVAXAddress:
            staticcall address(arg1).token1() with:
                    gas gas_remaining wei
        else:
            staticcall address(arg1).token0() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(arg1))
        staticcall address(arg1).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(address(arg1))
        staticcall address(arg1).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] and 997 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[12 len 20] == WAVAXAddress:
            if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                revert with 'NH{q', 18
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 'NH{q', 1
            if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < arg2:
                revert with 0, 'S5-R1'
            require ext_code.size(address(arg1))
            staticcall address(arg1).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == WAVAXAddress:
                mem[(13 * ceil32(return_data.size)) + 260] = 0
                mem[(13 * ceil32(return_data.size)) + 292] = this.address
                mem[(13 * ceil32(return_data.size)) + 324] = 128
                mem[(13 * ceil32(return_data.size)) + 356] = 0
                mem[(13 * ceil32(return_data.size)) + 388 len 0] = None
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
            else:
                mem[(13 * ceil32(return_data.size)) + 260] = 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                mem[(13 * ceil32(return_data.size)) + 292] = this.address
                mem[(13 * ceil32(return_data.size)) + 324] = 128
                mem[(13 * ceil32(return_data.size)) + 356] = 0
                mem[(13 * ceil32(return_data.size)) + 388 len 0] = None
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
        else:
            if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                revert with 'NH{q', 18
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 'NH{q', 1
            if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < arg2:
                revert with 0, 'S5-R1'
            require ext_code.size(address(arg1))
            staticcall address(arg1).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == WAVAXAddress:
                mem[(13 * ceil32(return_data.size)) + 260] = 0
                mem[(13 * ceil32(return_data.size)) + 292] = this.address
                mem[(13 * ceil32(return_data.size)) + 324] = 128
                mem[(13 * ceil32(return_data.size)) + 356] = 0
                mem[(13 * ceil32(return_data.size)) + 388 len 0] = None
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
            else:
                mem[(13 * ceil32(return_data.size)) + 260] = 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                mem[(13 * ceil32(return_data.size)) + 292] = this.address
                mem[(13 * ceil32(return_data.size)) + 324] = 128
                mem[(13 * ceil32(return_data.size)) + 356] = 0
                mem[(13 * ceil32(return_data.size)) + 388 len 0] = None
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] > -arg2 - 1:
            revert with 'NH{q', 17
        mem[(13 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(WAVAXAddress)
        staticcall WAVAXAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(13 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= ext_call.return_data[0] + arg2:
            revert with 0, 'S5-R2'
        mem[(14 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(WAVAXAddress)
        staticcall WAVAXAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(14 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(16 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
        require ext_code.size(WAVAXAddress)
        call WAVAXAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args mem[(16 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if owner != msg.sender:
            mem[(16 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(16 * ceil32(return_data.size)) + 228] = 32
            mem[(16 * ceil32(return_data.size)) + 260] = 32
            mem[(16 * ceil32(return_data.size)) + 292] = 'Ownable: caller is not the owner'
            revert with memory
              from (16 * ceil32(return_data.size)) + 224
               len (5 * ceil32(return_data.size)) + 100
        if eth.balance(this.address) <= 0:
            mem[(16 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(16 * ceil32(return_data.size)) + 228] = 32
            mem[(16 * ceil32(return_data.size)) + 260] = 5
            mem[(16 * ceil32(return_data.size)) + 292] = 'W1-R1'
            revert with memory
              from (16 * ceil32(return_data.size)) + 224
               len (5 * ceil32(return_data.size)) + 100
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(16 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(WAVAXAddress)
        staticcall WAVAXAddress.0x70a08231 with:
                gas gas_remaining wei
               args mem[(16 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        emit 0xbabe4e98: ext_call.return_data[0], mem[(18 * ceil32(return_data.size)) + 256 len 9 * ceil32(return_data.size)]
    else:
        staticcall address(arg1).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != WAVAXAddress:
            revert with 0, 'SO-R1'
        require ext_code.size(address(arg1))
        staticcall address(arg1).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(arg1))
        if ext_call.return_data[12 len 20] == WAVAXAddress:
            staticcall address(arg1).token1() with:
                    gas gas_remaining wei
        else:
            staticcall address(arg1).token0() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(arg1))
        staticcall address(arg1).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(address(arg1))
        staticcall address(arg1).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] and 997 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[12 len 20] == WAVAXAddress:
            if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                revert with 'NH{q', 18
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 'NH{q', 1
            if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < arg2:
                revert with 0, 'S5-R1'
            require ext_code.size(address(arg1))
            staticcall address(arg1).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == WAVAXAddress:
                mem[(14 * ceil32(return_data.size)) + 260] = 0
                mem[(14 * ceil32(return_data.size)) + 292] = this.address
                mem[(14 * ceil32(return_data.size)) + 324] = 128
                mem[(14 * ceil32(return_data.size)) + 356] = 0
                mem[(14 * ceil32(return_data.size)) + 388 len 0] = None
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
            else:
                mem[(14 * ceil32(return_data.size)) + 260] = 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                mem[(14 * ceil32(return_data.size)) + 292] = this.address
                mem[(14 * ceil32(return_data.size)) + 324] = 128
                mem[(14 * ceil32(return_data.size)) + 356] = 0
                mem[(14 * ceil32(return_data.size)) + 388 len 0] = None
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
        else:
            if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                revert with 'NH{q', 18
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 'NH{q', 1
            if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < arg2:
                revert with 0, 'S5-R1'
            require ext_code.size(address(arg1))
            staticcall address(arg1).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == WAVAXAddress:
                mem[(14 * ceil32(return_data.size)) + 260] = 0
                mem[(14 * ceil32(return_data.size)) + 292] = this.address
                mem[(14 * ceil32(return_data.size)) + 324] = 128
                mem[(14 * ceil32(return_data.size)) + 356] = 0
                mem[(14 * ceil32(return_data.size)) + 388 len 0] = None
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
            else:
                mem[(14 * ceil32(return_data.size)) + 260] = 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                mem[(14 * ceil32(return_data.size)) + 292] = this.address
                mem[(14 * ceil32(return_data.size)) + 324] = 128
                mem[(14 * ceil32(return_data.size)) + 356] = 0
                mem[(14 * ceil32(return_data.size)) + 388 len 0] = None
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] > -arg2 - 1:
            revert with 'NH{q', 17
        require ext_code.size(WAVAXAddress)
        staticcall WAVAXAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= ext_call.return_data[0] + arg2:
            revert with 0, 'S5-R2'
        require ext_code.size(WAVAXAddress)
        staticcall WAVAXAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(WAVAXAddress)
        call WAVAXAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args ext_call.return_data[0], mem[(17 * ceil32(return_data.size)) + 260 len 5 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner', mem[(17 * ceil32(return_data.size)) + 324 len 5 * ceil32(return_data.size)]
        if eth.balance(this.address) <= 0:
            revert with 0, 'W1-R1', mem[(17 * ceil32(return_data.size)) + 324 len 5 * ceil32(return_data.size)]
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(17 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(WAVAXAddress)
        staticcall WAVAXAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address), mem[(17 * ceil32(return_data.size)) + 260 len 5 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        emit 0xbabe4e98: ext_call.return_data[0], mem[(19 * ceil32(return_data.size)) + 256 len 9 * ceil32(return_data.size)]
}



}
