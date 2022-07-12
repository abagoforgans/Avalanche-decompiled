contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
mapping of uint256 sub_6cf891f8;
mapping of uint256 sub_44ddd0d6;
mapping of address sub_d198d46a;
address sub_a9e56f3cAddress;
address routerAddress;
address sub_5491cd67Address;
address exchangeAddress;
mapping of address reserveTokens;
mapping of address sub_21e823da;

function sub_21e823da(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_21e823da[arg1]
}

function sub_44ddd0d6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_44ddd0d6[arg1]
}

function sub_5491cd67(?) {
    return sub_5491cd67Address
}

function sub_6cf891f8(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == address(arg2)
    return sub_6cf891f8[arg1][arg2]
}

function reserveTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return reserveTokens[arg1]
}

function owner() {
    return owner
}

function sub_a9e56f3c(?) {
    return sub_a9e56f3cAddress
}

function sub_d198d46a(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    return sub_d198d46a[arg1]
}

function exchange() {
    return exchangeAddress
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    routerAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_eddb795f(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 103
        sub_d198d46a[cd[((32 * idx) + cd[4] + 36)] << 240] = address(cd[((32 * idx) + cd[36] + 36)])
        idx = idx + 1
        continue 
}

function sub_b7902854(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StargateCrosschainRouter: invalid input data'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 102
        sub_44ddd0d6[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
        idx = idx + 1
        continue 
}

function sub_51c504a8(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StargateCrosschainRouter: invalid input data'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        reserveTokens[address(cd[((32 * idx) + cd[4] + 36)])] = address(cd[((32 * idx) + cd[36] + 36)])
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[32] = 109
        sub_21e823da[address(cd[((32 * idx) + cd[36] + 36)])] = address(cd[((32 * idx) + cd[4] + 36)])
        idx = idx + 1
        continue 
}

function sub_1c55270c(?) {
    require calldata.size - 4 >= 96
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
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if ('cd', 68).length != ('cd', 36).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StargateCrosschainRouter: invalid input data'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StargateCrosschainRouter: invalid input data'
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 68).length
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)] << 240, 101)
        sub_6cf891f8[cd[((32 * idx) + cd[4] + 36)] << 240][address(cd[((32 * idx) + cd[36] + 36)])] = cd[((32 * idx) + cd[68] + 36)]
        idx = idx + 1
        continue 
}

function sub_ab8236f3(?) {
    require calldata.size - 4 >= 192
    require arg1 == uint16(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require calldata.size >= arg2.length + arg2 + 36
    require arg3 == address(arg3)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require ceil32(arg5.length) + 160 >= 128 and ceil32(arg2.length) + ceil32(arg5.length) + 160 <= test266151307()
    require calldata.size >= arg5.length + arg5 + 36
    mem[ceil32(arg2.length) + 160 len arg5.length] = arg5[all]
    mem[ceil32(arg2.length) + arg5.length + 160] = 0
    require arg5.length >= 32
    require mem[ceil32(arg2.length) + 160] == mem[ceil32(arg2.length) + 172 len 20]
    require ext_code.size(address(arg3))
    if not reserveTokens[address(arg3)]:
        call address(arg3).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
        require ext_code.size(routerAddress)
        call routerAddress.deposit(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(arg3), arg4, mem[ceil32(arg2.length) + 172 len 20]
    else:
        call address(arg3).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args exchangeAddress, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
        require ext_code.size(exchangeAddress)
        call exchangeAddress.swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args address(arg3), reserveTokens[address(arg3)], arg4, 0, address(this.address), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(reserveTokens[address(arg3)])
        staticcall reserveTokens[address(arg3)].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(reserveTokens[address(arg3)])
        call reserveTokens[address(arg3)].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(routerAddress)
        call routerAddress.deposit(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args reserveTokens[address(arg3)], ext_call.return_data[0], mem[ceil32(arg2.length) + 172 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_45757b39(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == uint16(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg2))
    call address(arg2).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_a9e56f3cAddress, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not sub_21e823da[address(arg2)]:
        if not sub_44ddd0d6[address(arg2)]:
            revert with 0, 'sStargateCrosschainRouter: undefned local pool'
        if not sub_6cf891f8[arg1 << 240][address(arg3)]:
            revert with 0, 'sStargateCrosschainRouter: undefned remote pool'
        if not sub_d198d46a[arg1 << 240]:
            revert with 0, 'sStargateCrosschainRouter: undefned remote router'
        require ext_code.size(sub_a9e56f3cAddress)
        call sub_a9e56f3cAddress.0x9fbf10fc with:
           value msg.value wei
             gas gas_remaining wei
            args arg1 << 240, sub_44ddd0d6[address(arg2)], sub_6cf891f8[arg1 << 240][address(arg3)], msg.sender, arg4, arg5, 288, 448, 512, arg6, 0, 96, 2, 0, 0, 20, Mask(160, 96, sub_d198d46a[arg1 << 240], 0) >> 96, 0, 32, msg.sender
    else:
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args exchangeAddress, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(exchangeAddress)
        call exchangeAddress.swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args address(arg2), sub_21e823da[address(arg2)], arg4, 0, address(this.address), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_21e823da[address(arg2)])
        staticcall sub_21e823da[address(arg2)].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not sub_44ddd0d6[stor109[address(arg2)]]:
            revert with 0, 'sStargateCrosschainRouter: undefned local pool'
        if not sub_6cf891f8[arg1 << 240][address(arg3)]:
            revert with 0, 'sStargateCrosschainRouter: undefned remote pool'
        if not sub_d198d46a[arg1 << 240]:
            revert with 0, 'sStargateCrosschainRouter: undefned remote router'
        require ext_code.size(sub_a9e56f3cAddress)
        call sub_a9e56f3cAddress.0x9fbf10fc with:
           value msg.value wei
             gas gas_remaining wei
            args arg1 << 240, sub_44ddd0d6[stor109[address(arg2)]], sub_6cf891f8[arg1 << 240][address(arg3)], msg.sender, ext_call.return_data[0], arg5, 288, 448, 512, arg6, 0, 96, 2, 0, 0, 20, Mask(160, 96, sub_d198d46a[arg1 << 240], 0) >> 96, 0, 32, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initialize(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        sub_a9e56f3cAddress = arg1
        routerAddress = arg2
        sub_5491cd67Address = arg3
        exchangeAddress = arg4
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x69496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            sub_a9e56f3cAddress = arg1
            routerAddress = arg2
            sub_5491cd67Address = arg3
            exchangeAddress = arg4
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x69496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                sub_a9e56f3cAddress = arg1
                routerAddress = arg2
                sub_5491cd67Address = arg3
                exchangeAddress = arg4
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x69496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    sub_a9e56f3cAddress = arg1
                    routerAddress = arg2
                    sub_5491cd67Address = arg3
                    exchangeAddress = arg4
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x69496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        sub_a9e56f3cAddress = arg1
                        routerAddress = arg2
                        sub_5491cd67Address = arg3
                        exchangeAddress = arg4
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        sub_a9e56f3cAddress = arg1
                        routerAddress = arg2
                        sub_5491cd67Address = arg3
                        exchangeAddress = arg4
                        uint8(stor0.field_8) = 0
}

function sub_3877e905(?) payable {
    require calldata.size - 4 >= 320
    require arg1 == uint16(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require calldata.size - 228 >= 96
    require ext_code.size(sub_5491cd67Address)
    staticcall sub_5491cd67Address.getReserve(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'sStargateCrosschainRouter: undefned reserve'
    require arg8 == uint8(arg8)
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xd505accf with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg4, arg7, arg8 << 248, arg9, arg10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(ext_call.return_data[0]), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).withdraw(address arg1, address arg2) with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_a9e56f3cAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not sub_21e823da[address(arg2)]:
        if not sub_44ddd0d6[address(arg2)]:
            revert with 0, 'sStargateCrosschainRouter: undefned local pool'
        if not sub_6cf891f8[arg1 << 240][address(arg3)]:
            revert with 0, 'sStargateCrosschainRouter: undefned remote pool'
        if not sub_d198d46a[arg1 << 240]:
            revert with 0, 'sStargateCrosschainRouter: undefned remote router'
        require ext_code.size(sub_a9e56f3cAddress)
        call sub_a9e56f3cAddress.0x9fbf10fc with:
           value msg.value wei
             gas gas_remaining wei
            args arg1 << 240, sub_44ddd0d6[address(arg2)], sub_6cf891f8[arg1 << 240][address(arg3)], msg.sender, ext_call.return_data[0], arg5, 288, 448, 512, arg6, 0, 96, 2, 0, 0, 20, Mask(160, 96, sub_d198d46a[arg1 << 240], 0) >> 96, 0, 32, msg.sender
    else:
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args exchangeAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(exchangeAddress)
        call exchangeAddress.swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args address(arg2), sub_21e823da[address(arg2)], ext_call.return_data[0], 0, address(this.address), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_21e823da[address(arg2)])
        staticcall sub_21e823da[address(arg2)].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not sub_44ddd0d6[stor109[address(arg2)]]:
            revert with 0, 'sStargateCrosschainRouter: undefned local pool'
        if not sub_6cf891f8[arg1 << 240][address(arg3)]:
            revert with 0, 'sStargateCrosschainRouter: undefned remote pool'
        if not sub_d198d46a[arg1 << 240]:
            revert with 0, 'sStargateCrosschainRouter: undefned remote router'
        require ext_code.size(sub_a9e56f3cAddress)
        call sub_a9e56f3cAddress.0x9fbf10fc with:
           value msg.value wei
             gas gas_remaining wei
            args arg1 << 240, sub_44ddd0d6[stor109[address(arg2)]], sub_6cf891f8[arg1 << 240][address(arg3)], msg.sender, ext_call.return_data[0], arg5, 288, 448, 512, arg6, 0, 96, 2, 0, 0, 20, Mask(160, 96, sub_d198d46a[arg1 << 240], 0) >> 96, 0, 32, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
