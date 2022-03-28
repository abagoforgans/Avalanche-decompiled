contract main {




// =====================  Runtime code  =====================


address owner;
address routerAddress;
address routerContractAddress;
address TOKENAddress;
address NATIVEAddress;
uint8 stor5; offset 160
uint8 stor5; offset 168
uint8 stor5; offset 176
uint128 stor5; offset 176
uint128 stor5; offset 168
uint128 stor5; offset 160
address receiverAddress;
uint32 stor6;
uint256 stor6; offset 32
uint256 stor6;
uint256 stor7;
uint256 stor8;
array of struct stor9;
array of struct stor10;

function routerContract() payable {
    return routerContractAddress
}

function TOKEN() payable {
    return TOKENAddress
}

function owner() payable {
    return owner
}

function NATIVE() payable {
    return NATIVEAddress
}

function receiver() payable {
    return receiverAddress
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function sub_56401d1e(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = arg1
}

function sub_c930d143(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    TOKENAddress = arg1
    require 1 < stor9.length
    address(stor9.field_256) = TOKENAddress
    require 0 < stor10.length
    address(stor10.field_0) = TOKENAddress
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
    uint256(stor6.field_0) = arg1
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
    if not uint8(stor5.field_168):
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = uint256(stor6.field_0)
        mem[132] = stor7
        mem[196] = this.address
        mem[228] = block.timestamp + 300
        mem[164] = 160
        mem[260] = stor9.length
        if not stor9.length:
            require ext_code.size(routerContractAddress)
            call routerContractAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, uint32(stor6.field_0), stor7, 160, address(this.address), block.timestamp + 300, stor9.length
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
                args 0, uint32(stor6.field_0), stor7, 160, address(this.address), block.timestamp + 300, stor9.length, mem[292 len 32 * stor9.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require mem[96 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
        require mem[96 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 0, stor6.field_32) + 96] <= 4294967296 and mem[96 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[96 len 4], Mask(224, 0, stor6.field_32) + 96]) + 32 <= return_data.size
        Mask(88, 0, stor5.field_168) = 1
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
        if not uint8(stor5.field_160):
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            require ext_code.size(TOKENAddress)
            call TOKENAddress.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args routerAddress, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            Mask(96, 0, stor5.field_160) = 1
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = ext_call.return_data[0]
        mem[132] = uint256(stor6.field_0) * stor8
        mem[196] = this.address
        mem[228] = block.timestamp + 300
        mem[164] = 160
        mem[260] = stor10.length
        if not stor10.length:
            require ext_code.size(routerContractAddress)
            call routerContractAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[28 len 4], uint256(stor6.field_0) * stor8, 160, address(this.address), block.timestamp + 300, stor10.length
        else:
            mem[0] = 10
            mem[292] = address(stor10.field_0)
            idx = 292
            s = 0
            while (32 * stor10.length) + 292 > idx + 32:
                mem[idx + 32] = stor10[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(routerContractAddress)
            call routerContractAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[28 len 4], uint256(stor6.field_0) * stor8, 160, address(this.address), block.timestamp + 300, stor10.length, mem[292 len 32 * stor10.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
        Mask(80, 0, stor5.field_176) = 1
}

function perform() payable {
    if uint8(stor5.field_168):
        if not uint8(stor5.field_176):
            require ext_code.size(TOKENAddress)
            staticcall TOKENAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                if not uint8(stor5.field_160):
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(TOKENAddress)
                    call TOKENAddress.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args routerAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    Mask(96, 0, stor5.field_160) = 1
                mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[100] = ext_call.return_data[0]
                mem[132] = uint256(stor6.field_0) * stor8
                mem[196] = this.address
                mem[228] = block.timestamp + 300
                mem[164] = 160
                mem[260] = stor10.length
                if not stor10.length:
                    require ext_code.size(routerContractAddress)
                    call routerContractAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], uint256(stor6.field_0) * stor8, 160, address(this.address), block.timestamp + 300, stor10.length
                else:
                    mem[0] = 10
                    mem[292] = address(stor10.field_0)
                    idx = 292
                    s = 0
                    while (32 * stor10.length) + 292 > idx + 32:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(routerContractAddress)
                    call routerContractAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], uint256(stor6.field_0) * stor8, 160, address(this.address), block.timestamp + 300, stor10.length, mem[292 len 32 * stor10.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                Mask(80, 0, stor5.field_176) = 1
    else:
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = uint256(stor6.field_0)
        mem[132] = stor7
        mem[196] = this.address
        mem[228] = block.timestamp + 300
        mem[164] = 160
        mem[260] = stor9.length
        if not stor9.length:
            require ext_code.size(routerContractAddress)
            call routerContractAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, uint32(stor6.field_0), stor7, 160, address(this.address), block.timestamp + 300, stor9.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _8 = mem[96 len 4], Mask(224, 0, stor6.field_32)
            require mem[96 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
            require mem[96 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 0, stor6.field_32) + 96] <= 4294967296 and mem[96 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[96 len 4], Mask(224, 0, stor6.field_32) + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 0, stor6.field_32) + 96]
            _13 = mem[_8 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_8 + 96])] = mem[_8 + 128 len floor32(mem[_8 + 96])]
            Mask(88, 0, stor5.field_168) = 1
            if uint8(stor5.field_168):
                if not uint8(stor5.field_176):
                    require ext_code.size(TOKENAddress)
                    staticcall TOKENAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0:
                        if not uint8(stor5.field_160):
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(TOKENAddress)
                            call TOKENAddress.approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, -1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            Mask(96, 0, stor5.field_160) = 1
                        mem[(32 * _13) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _13) + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                        mem[(32 * _13) + ceil32(return_data.size) + 164] = uint256(stor6.field_0) * stor8
                        mem[(32 * _13) + ceil32(return_data.size) + 228] = this.address
                        mem[(32 * _13) + ceil32(return_data.size) + 260] = block.timestamp + 300
                        mem[(32 * _13) + ceil32(return_data.size) + 196] = 160
                        mem[(32 * _13) + ceil32(return_data.size) + 292] = stor10.length
                        if not stor10.length:
                            require ext_code.size(routerContractAddress)
                            call routerContractAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], uint256(stor6.field_0) * stor8, 160, address(this.address), block.timestamp + 300, stor10.length
                        else:
                            mem[0] = 10
                            mem[(32 * _13) + ceil32(return_data.size) + 324] = address(stor10.field_0)
                            idx = (32 * _13) + ceil32(return_data.size) + 324
                            s = 0
                            while (32 * _13) + ceil32(return_data.size) + (32 * stor10.length) + 324 > idx + 32:
                                mem[idx + 32] = stor10[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(routerContractAddress)
                            call routerContractAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], uint256(stor6.field_0) * stor8, Array(len=stor10.length, data=mem[(32 * _13) + ceil32(return_data.size) + 324 len 32 * stor10.length]), address(this.address), block.timestamp + 300
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _13) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _13) + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        require mem[(32 * _13) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * _13) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[(32 * _13) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * _13) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _13) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _13) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * _13) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                        Mask(80, 0, stor5.field_176) = 1
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
                args 0, uint32(stor6.field_0), stor7, 160, address(this.address), block.timestamp + 300, stor9.length, mem[292 len 32 * stor9.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _109 = mem[96 len 4], Mask(224, 0, stor6.field_32)
            require mem[96 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
            require mem[96 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 0, stor6.field_32) + 96] <= 4294967296 and mem[96 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[96 len 4], Mask(224, 0, stor6.field_32) + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 0, stor6.field_32) + 96]
            _116 = mem[_109 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_109 + 96])] = mem[_109 + 128 len floor32(mem[_109 + 96])]
            Mask(88, 0, stor5.field_168) = 1
            if uint8(stor5.field_168):
                if not uint8(stor5.field_176):
                    require ext_code.size(TOKENAddress)
                    staticcall TOKENAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0:
                        if uint8(stor5.field_160):
                            mem[(32 * _116) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _116) + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                            mem[(32 * _116) + ceil32(return_data.size) + 164] = uint256(stor6.field_0) * stor8
                            mem[(32 * _116) + ceil32(return_data.size) + 228] = this.address
                            mem[(32 * _116) + ceil32(return_data.size) + 260] = block.timestamp + 300
                            mem[(32 * _116) + ceil32(return_data.size) + 196] = 160
                            mem[(32 * _116) + ceil32(return_data.size) + 292] = stor10.length
                            if not stor10.length:
                                require ext_code.size(routerContractAddress)
                                call routerContractAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], uint256(stor6.field_0) * stor8, 160, address(this.address), block.timestamp + 300, stor10.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _116) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _116) + (2 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                require mem[(32 * _116) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(32 * _116) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[(32 * _116) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * _116) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _116) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _116) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * _116) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                            else:
                                mem[0] = 10
                                mem[(32 * _116) + ceil32(return_data.size) + 324] = address(stor10.field_0)
                                idx = (32 * _116) + ceil32(return_data.size) + 324
                                s = 0
                                while (32 * _116) + ceil32(return_data.size) + (32 * stor10.length) + 324 > idx + 32:
                                    mem[idx + 32] = stor10[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(routerContractAddress)
                                call routerContractAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], uint256(stor6.field_0) * stor8, Array(len=stor10.length, data=mem[(32 * _116) + ceil32(return_data.size) + 324 len 32 * stor10.length]), address(this.address), block.timestamp + 300
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _116) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _116) + (2 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                _201 = mem[(32 * _116) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28]
                                require mem[(32 * _116) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(32 * _116) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[(32 * _116) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * _116) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _116) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _116) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * _116) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                                mem[(32 * _116) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _116) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * _116) + ceil32(return_data.size) + 128]
                                var45001 = floor32(mem[_201 + (32 * _116) + ceil32(return_data.size) + 128])
                        else:
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(TOKENAddress)
                            call TOKENAddress.approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, -1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            Mask(96, 0, stor5.field_160) = 1
                            mem[(32 * _116) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _116) + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                            mem[(32 * _116) + ceil32(return_data.size) + 164] = uint256(stor6.field_0) * stor8
                            mem[(32 * _116) + ceil32(return_data.size) + 228] = this.address
                            mem[(32 * _116) + ceil32(return_data.size) + 260] = block.timestamp + 300
                            mem[(32 * _116) + ceil32(return_data.size) + 196] = 160
                            mem[(32 * _116) + ceil32(return_data.size) + 292] = stor10.length
                            if not stor10.length:
                                require ext_code.size(routerContractAddress)
                                call routerContractAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], uint256(stor6.field_0) * stor8, 160, address(this.address), block.timestamp + 300, stor10.length
                            else:
                                mem[0] = 10
                                mem[(32 * _116) + ceil32(return_data.size) + 324] = address(stor10.field_0)
                                idx = (32 * _116) + ceil32(return_data.size) + 324
                                s = 0
                                while (32 * _116) + ceil32(return_data.size) + (32 * stor10.length) + 324 > idx + 32:
                                    mem[idx + 32] = stor10[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(routerContractAddress)
                                call routerContractAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], uint256(stor6.field_0) * stor8, Array(len=stor10.length, data=mem[(32 * _116) + ceil32(return_data.size) + 324 len 32 * stor10.length]), address(this.address), block.timestamp + 300
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _116) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _116) + (2 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            require mem[(32 * _116) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(32 * _116) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[(32 * _116) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * _116) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _116) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _116) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * _116) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                        Mask(80, 0, stor5.field_176) = 1
}



}
