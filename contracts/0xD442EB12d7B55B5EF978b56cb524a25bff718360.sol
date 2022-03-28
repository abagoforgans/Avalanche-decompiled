contract main {




// =====================  Runtime code  =====================


address owner;
address routerAddress;
address routerContractAddress;
address TOKENAddress;
uint8 stor4; offset 160
uint8 stor4; offset 168
uint8 stor4; offset 176
uint128 stor4; offset 176
uint128 stor4; offset 168
uint128 stor4; offset 160
address NATIVEAddress;
uint32 stor5;
uint256 stor5; offset 32
uint256 sub_94ace420;
uint256 sub_20ca969e;
uint256 multiplier;
array of struct stor8;
array of struct stor9;

function multiplier() payable {
    return multiplier
}

function sub_20ca969e(?) payable {
    return sub_20ca969e
}

function isApproved() payable {
    return bool(uint8(stor4.field_160))
}

function sub_4c5f3149(?) payable {
    return bool(uint8(stor4.field_168))
}

function routerContract() payable {
    return routerContractAddress
}

function sub_69fc2838(?) payable {
    return bool(uint8(stor4.field_176))
}

function TOKEN() payable {
    return TOKENAddress
}

function owner() payable {
    return owner
}

function sub_94ace420(?) payable {
    return sub_94ace420
}

function NATIVE() payable {
    return NATIVEAddress
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_56401d1e(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_20ca969e = arg1
}

function setMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    multiplier = arg1
}

function sub_c930d143(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    TOKENAddress = arg1
    require 1 < stor8.length
    address(stor8.field_256) = TOKENAddress
    require 0 < stor9.length
    address(stor9.field_0) = TOKENAddress
}

function withdrawNative(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setApproval(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_f512434b(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_94ace420 = arg1
    require ext_code.size(NATIVEAddress)
    call NATIVEAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args routerAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_fc6779ef(?) payable {
    if not uint8(stor4.field_168):
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = sub_94ace420
        mem[132] = sub_20ca969e
        mem[196] = this.address
        mem[228] = block.timestamp + 300
        mem[164] = 160
        mem[260] = stor8.length
        if not stor8.length:
            require ext_code.size(routerContractAddress)
            call routerContractAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, uint32(stor5.field_0), sub_20ca969e, 160, address(this.address), block.timestamp + 300, stor8.length
        else:
            mem[0] = 8
            mem[292] = address(stor8.field_0)
            idx = 292
            s = 0
            while (32 * stor8.length) + 292 > idx + 32:
                mem[idx + 32] = stor8[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(routerContractAddress)
            call routerContractAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, uint32(stor5.field_0), sub_20ca969e, 160, address(this.address), block.timestamp + 300, stor8.length, mem[292 len 32 * stor8.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require mem[96 len 4], Mask(224, 0, stor5.field_32) <= 4294967296
        require mem[96 len 4], Mask(224, 0, stor5.field_32) + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 0, stor5.field_32) + 96] <= 4294967296 and mem[96 len 4], Mask(224, 0, stor5.field_32) + (32 * mem[mem[96 len 4], Mask(224, 0, stor5.field_32) + 96]) + 32 <= return_data.size
        Mask(88, 0, stor4.field_168) = 1
}

function sub_cf4854a7(?) payable {
    require ext_code.size(TOKENAddress)
    staticcall TOKENAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        if not uint8(stor4.field_160):
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            require ext_code.size(TOKENAddress)
            call TOKENAddress.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args routerAddress, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            Mask(96, 0, stor4.field_160) = 1
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = ext_call.return_data[0]
        mem[132] = sub_94ace420 * multiplier
        mem[196] = this.address
        mem[228] = block.timestamp + 300
        mem[164] = 160
        mem[260] = stor9.length
        if not stor9.length:
            require ext_code.size(routerContractAddress)
            call routerContractAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[28 len 4], sub_94ace420 * multiplier, 160, address(this.address), block.timestamp + 300, stor9.length
        else:
            mem[0] = 9
            mem[292] = address(stor9.field_0)
            idx = 292
            s = 0
            while (32 * stor9.length) + 292 > idx + 32:
                mem[idx + 32] = stor9[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(routerContractAddress)
            call routerContractAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[28 len 4], sub_94ace420 * multiplier, 160, address(this.address), block.timestamp + 300, stor9.length, mem[292 len 32 * stor9.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
        Mask(80, 0, stor4.field_176) = 1
}

function perform() payable {
    if not uint8(stor4.field_168):
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = sub_94ace420
        mem[132] = sub_20ca969e
        mem[196] = this.address
        mem[228] = block.timestamp + 300
        mem[164] = 160
        mem[260] = stor8.length
        if not stor8.length:
            require ext_code.size(routerContractAddress)
            call routerContractAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, uint32(stor5.field_0), sub_20ca969e, 160, address(this.address), block.timestamp + 300, stor8.length
        else:
            mem[0] = 8
            mem[292] = address(stor8.field_0)
            idx = 292
            s = 0
            while (32 * stor8.length) + 292 > idx + 32:
                mem[idx + 32] = stor8[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(routerContractAddress)
            call routerContractAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, uint32(stor5.field_0), sub_20ca969e, 160, address(this.address), block.timestamp + 300, stor8.length, mem[292 len 32 * stor8.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require mem[96 len 4], Mask(224, 0, stor5.field_32) <= 4294967296
        require mem[96 len 4], Mask(224, 0, stor5.field_32) + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 0, stor5.field_32) + 96] <= 4294967296 and mem[96 len 4], Mask(224, 0, stor5.field_32) + (32 * mem[mem[96 len 4], Mask(224, 0, stor5.field_32) + 96]) + 32 <= return_data.size
        Mask(88, 0, stor4.field_168) = 1
    else:
        if not uint8(stor4.field_176):
            require ext_code.size(TOKENAddress)
            staticcall TOKENAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                if not uint8(stor4.field_160):
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(TOKENAddress)
                    call TOKENAddress.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args routerAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    Mask(96, 0, stor4.field_160) = 1
                mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[100] = ext_call.return_data[0]
                mem[132] = sub_94ace420 * multiplier
                mem[196] = this.address
                mem[228] = block.timestamp + 300
                mem[164] = 160
                mem[260] = stor9.length
                if not stor9.length:
                    require ext_code.size(routerContractAddress)
                    call routerContractAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], sub_94ace420 * multiplier, 160, address(this.address), block.timestamp + 300, stor9.length
                else:
                    mem[0] = 9
                    mem[292] = address(stor9.field_0)
                    idx = 292
                    s = 0
                    while (32 * stor9.length) + 292 > idx + 32:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(routerContractAddress)
                    call routerContractAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], sub_94ace420 * multiplier, 160, address(this.address), block.timestamp + 300, stor9.length, mem[292 len 32 * stor9.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                Mask(80, 0, stor4.field_176) = 1
}



}
