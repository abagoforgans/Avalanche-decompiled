contract main {




// =====================  Runtime code  =====================


const wavax = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


mapping of uint8 stor0;
address sub_2faff427Address;
address joeFactoryAddress;
array of struct paths;

function sub_2faff427(?) payable {
    return sub_2faff427Address
}

function joeFactory() payable {
    return joeFactoryAddress
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor0[arg1][address(arg2)])
}

function paths(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 < paths[arg1][arg2].field_0
    return paths[arg1][arg2][arg3].field_0
}

function _fallback() payable {
    revert
}

function sub_3c83a7a4(?) payable {
    require calldata.size - 4 >= 32
    if not stor0[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)]:
        revert with 0, ''
    joeFactoryAddress = arg1
}

function sub_3ac8d9a6(?) payable {
    require calldata.size - 4 >= 32
    if not stor0[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)]:
        revert with 0, ''
    sub_2faff427Address = arg1
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not stor0[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)]:
        revert with 0, ''
    if stor0[arg1][address(arg2)]:
        stor0[arg1][address(arg2)] = 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not stor0[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)]:
        revert with 0, ''
    if not stor0[arg1][address(arg2)]:
        stor0[arg1][address(arg2)] = 1
}

function approveToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor0[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)]:
        revert with 0, ''
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_2faff427Address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getPath(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not paths[address(arg1)][address(arg2)].field_0:
        mem[256 len 0] = None
        return Array(len=2, data=mem[256 len 64])
    mem[128] = paths[address(arg1)][address(arg2)].field_0
    idx = 128
    s = 0
    while (32 * paths[address(arg1)][address(arg2)].field_0) + 96 > idx:
        mem[idx + 32] = paths[address(arg1)][address(arg2)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * paths[address(arg1)][address(arg2)].field_0) + 192 len floor32(paths[address(arg1)][address(arg2)].field_0)] = mem[128 len floor32(paths[address(arg1)][address(arg2)].field_0)]
    return Array(len=paths[address(arg1)][address(arg2)].field_0, data=mem[128 len floor32(paths[address(arg1)][address(arg2)].field_0)], mem[(32 * paths[address(arg1)][address(arg2)].field_0) + floor32(paths[address(arg1)][address(arg2)].field_0) + 192 len (32 * paths[address(arg1)][address(arg2)].field_0) - floor32(paths[address(arg1)][address(arg2)].field_0)]), 
}

function setPath(address arg1, address arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if not stor0[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)]:
        revert with 0, ''
    paths[address(arg1)][address(arg2)].field_0 = arg3.length
    if not arg3.length:
        idx = 0
        while paths[address(arg1)][address(arg2)].field_0 > idx:
            paths[address(arg1)][address(arg2)][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg3 + 36
        while arg3 + (32 * arg3.length) + 36 > idx:
            paths[address(arg1)][address(arg2)][s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while paths[address(arg1)][address(arg2)].field_0 > idx:
            paths[address(arg1)][address(arg2)][idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_23878d0e(?) payable {
    require calldata.size - 4 >= 96
    mem[32] = sha3(address(arg2), 3)
    if not paths[address(arg2)][address(arg3)].field_0:
        mem[160] = arg3
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = arg1
        mem[228] = 0
        mem[292] = msg.sender
        mem[324] = block.timestamp
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(sub_2faff427Address)
        call sub_2faff427Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, 0, 160, msg.sender, block.timestamp, 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    else:
        mem[128] = paths[address(arg2)][address(arg3)].field_0
        idx = 128
        s = 0
        while (32 * paths[address(arg2)][address(arg3)].field_0) + 96 > idx:
            mem[idx + 32] = paths[address(arg2)][address(arg3)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 132] = arg1
        mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 164] = 0
        mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 228] = msg.sender
        mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 260] = block.timestamp
        mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 196] = 160
        mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 292] = paths[address(arg2)][address(arg3)].field_0
        mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 324 len floor32(paths[address(arg2)][address(arg3)].field_0)] = mem[128 len floor32(paths[address(arg2)][address(arg3)].field_0)]
        require ext_code.size(sub_2faff427Address)
        call sub_2faff427Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, 0, 160, msg.sender, block.timestamp, paths[address(arg2)][address(arg3)].field_0, mem[128 len floor32(paths[address(arg2)][address(arg3)].field_0)], mem[(32 * paths[address(arg2)][address(arg3)].field_0) + floor32(paths[address(arg2)][address(arg3)].field_0) + 324 len (32 * paths[address(arg2)][address(arg3)].field_0) - floor32(paths[address(arg2)][address(arg3)].field_0)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * paths[address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        require mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[(32 * paths[address(arg2)][address(arg3)].field_0) + mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128] <= 4294967296 and mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[(32 * paths[address(arg2)][address(arg3)].field_0) + mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 32 <= return_data.size
}

function sub_adefb002(?) payable {
    require calldata.size - 4 >= 64
    mem[32] = sha3(address(arg2), 3)
    if not paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0:
        mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[192] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[196] = arg1
        mem[228] = 0
        mem[292] = msg.sender
        mem[324] = block.timestamp
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(sub_2faff427Address)
        call sub_2faff427Address.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, 0, 160, msg.sender, block.timestamp, 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    else:
        mem[96] = paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0
        mem[0] = sha3(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, sha3(address(arg2), 3))
        mem[128] = paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0
        idx = 128
        s = 0
        while (32 * paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0) + 96 > idx:
            mem[idx + 32] = paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0) + 128] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[(32 * paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0) + 132] = arg1
        mem[(32 * paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0) + 164] = 0
        mem[(32 * paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0) + 228] = msg.sender
        mem[(32 * paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0) + 260] = block.timestamp
        mem[(32 * paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0) + 196] = 160
        mem[(32 * paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0) + 292] = paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0
        mem[(32 * paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0) + 324 len floor32(paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0)] = mem[128 len floor32(paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0)]
        require ext_code.size(sub_2faff427Address)
        call sub_2faff427Address.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, 0, 160, msg.sender, block.timestamp, paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0, mem[128 len floor32(paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0)], mem[(32 * paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0) + floor32(paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0) + 324 len (32 * paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0) - floor32(paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        require mem[(32 * paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[(32 * paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[(32 * paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0) + mem[(32 * paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128] <= 4294967296 and mem[(32 * paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[(32 * paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0) + mem[(32 * paths[address(arg2)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 32 <= return_data.size
}



}
