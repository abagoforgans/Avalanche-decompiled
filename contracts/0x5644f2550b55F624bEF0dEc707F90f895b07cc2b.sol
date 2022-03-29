contract main {




// =====================  Runtime code  =====================


#
#  - uri(uint256 arg1)
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5)
#
mapping of uint8 stor0;
mapping of uint256 balanceOf;
mapping of uint8 stor2;
uint8 stor4;
mapping of uint8 stor5;
mapping of uint256 stor6;
array of address allProxyRegistries;
address registryManagerAddress;
mapping of uint256 totalBalances;
mapping of uint256 unlockTime;
mapping of uint8 stor13;
mapping of address stor14;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[207 len 21]
    return balanceOf[arg2][address(arg1)]
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function unlockTime(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return unlockTime[address(arg1)][arg2]
}

function allProxyRegistriesLength() payable {
    return allProxyRegistries.length
}

function paused() payable {
    return bool(stor4)
}

function allTokenHolders(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < allTokenHoldersLength[arg1].field_256
    return stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'allTokenHoldersLength', 12))) + arg2].field_0
}

function getRegistryManager() payable {
    return registryManagerAddress
}

function allProxyRegistries(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < allProxyRegistries.length
    return allProxyRegistries[arg1]
}

function allHeldTokensLength(address arg1) payable {
    require calldata.size - 4 >= 32
    return allHeldTokensLength[address(arg1)].field_256
}

function isController(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[address(arg1)])
}

function allHeldTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < allHeldTokensLength[address(arg1)].field_256
    return stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + arg2].field_0
}

function totalBalances(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return totalBalances[arg1]
}

function allTokenHoldersLength(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return allTokenHoldersLength[arg1].field_256
}

function _fallback() payable {
    revert
}

function getTokenData(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require stor13[arg1] <= 2
    return stor13[arg1], stor14[arg1]
}

function lock(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if unlockTime[address(msg.sender)][arg1] >= arg2:
        revert with 0, 'ALREADY_LOCKED'
    unlockTime[address(msg.sender)][arg1] = arg2
}

function setRegistryManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if registryManagerAddress != msg.sender:
        revert with 0, 'UNAUTHORIZED'
    if not arg1:
        revert with 0, 'UNAUTHORIZED'
    registryManagerAddress = arg1
}

function relinquishControl() payable {
    if bool(stor5[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x4e436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    stor5[msg.sender] = 0
}

function addController(address arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor5[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x4e436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    stor5[address(arg1)] = 1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x72455243313135353a2073657474696e6720617070726f76616c2073746174757320666f722073656c,
                    mem[205 len 23]
    stor2[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_7c881076(?) payable {
    require calldata.size - 4 >= 96
    if bool(stor5[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x4e436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    require arg2 <= 2
    stor13[arg1] = arg2
    stor14[arg1] = arg3
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg5.length) + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    idx = 0
    while idx < allProxyRegistries.length:
        mem[0] = 7
        mem[100] = arg1
        require ext_code.size(allProxyRegistries[idx])
        staticcall allProxyRegistries[idx].proxies(address rg1) with:
                gas gas_remaining wei
               args arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            idx = idx + 1
            continue 
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != arg2:
            idx = idx + 1
            continue 
        return 1
    return bool(stor2[address(arg1)][address(arg2)])
}

function addProxyRegistry(address arg1) payable {
    require calldata.size - 4 >= 32
    if registryManagerAddress != msg.sender:
        if bool(stor5[msg.sender]) != 1:
            revert with 0, 'UNAUTHORIZED'
    if allProxyRegistries.length:
        require stor6[address(arg1)] < allProxyRegistries.length
        if allProxyRegistries[stor6[address(arg1)]] == arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x73416464726573735365743a206b657920616c72656164792065786973747320696e2074686520736574,
                        mem[206 len 22]
    allProxyRegistries.length++
    allProxyRegistries[allProxyRegistries.length] = arg1
    stor6[address(arg1)] = allProxyRegistries.length - 1
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), 
           mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]
}

function tokenHolders(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not allTokenHoldersLength[arg1].field_256:
        mem[(32 * allTokenHoldersLength[arg1].field_256) + 128] = 32
        mem[(32 * allTokenHoldersLength[arg1].field_256) + 160] = allTokenHoldersLength[arg1].field_256
        mem[(32 * allTokenHoldersLength[arg1].field_256) + 192 len floor32(allTokenHoldersLength[arg1].field_256)] = mem[128 len floor32(allTokenHoldersLength[arg1].field_256)]
        return memory
          from (32 * allTokenHoldersLength[arg1].field_256) + 128
           len (96 * allTokenHoldersLength[arg1].field_256) + 64
    mem[128] = allTokenHoldersLength[arg1][1].field_0
    idx = 128
    s = 0
    while (32 * allTokenHoldersLength[arg1].field_256) + 96 > idx:
        mem[idx + 32] = allTokenHoldersLength[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * allTokenHoldersLength[arg1].field_256) + 192 len floor32(allTokenHoldersLength[arg1].field_256)] = mem[128 len floor32(allTokenHoldersLength[arg1].field_256)]
    return Array(len=allTokenHoldersLength[arg1].field_256, data=mem[128 len floor32(allTokenHoldersLength[arg1].field_256)], mem[(32 * allTokenHoldersLength[arg1].field_256) + floor32(allTokenHoldersLength[arg1].field_256) + 192 len (32 * allTokenHoldersLength[arg1].field_256) - floor32(allTokenHoldersLength[arg1].field_256)]), 
}

function removeProxyRegistryAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if registryManagerAddress != msg.sender:
        if bool(stor5[msg.sender]) != 1:
            revert with 0, 'UNAUTHORIZED'
    if arg1 >= allProxyRegistries.length:
        revert with 0, 'INVALID_INDEX'
    if not allProxyRegistries.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416464726573735365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                    mem[206 len 22]
    require stor6[stor7[arg1]] < allProxyRegistries.length
    if allProxyRegistries[stor6[allProxyRegistries[arg1]]] != allProxyRegistries[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416464726573735365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                    mem[206 len 22]
    if allProxyRegistries.length - 1 != stor6[stor7[arg1]]:
        require allProxyRegistries.length - 1 < allProxyRegistries.length
        stor6[stor7[stor7.length]] = stor6[stor7[arg1]]
        require stor6[stor7[arg1]] < allProxyRegistries.length
        allProxyRegistries[stor6[allProxyRegistries[arg1]]] = allProxyRegistries[allProxyRegistries.length]
    stor6[stor7[arg1]] = 0
    require allProxyRegistries.length - 1 < allProxyRegistries.length
    allProxyRegistries[allProxyRegistries.length] = 0
}

function heldTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if not allHeldTokensLength[address(arg1)].field_256:
        mem[(32 * allHeldTokensLength[address(arg1)].field_256) + 128] = 32
        mem[(32 * allHeldTokensLength[address(arg1)].field_256) + 160] = allHeldTokensLength[address(arg1)].field_256
        mem[(32 * allHeldTokensLength[address(arg1)].field_256) + 192 len floor32(allHeldTokensLength[address(arg1)].field_256)] = mem[128 len floor32(allHeldTokensLength[address(arg1)].field_256)]
        return memory
          from (32 * allHeldTokensLength[address(arg1)].field_256) + 128
           len (96 * allHeldTokensLength[address(arg1)].field_256) + 64
    mem[128] = allHeldTokensLength[address(arg1)][1].field_0
    idx = 128
    s = 0
    while (32 * allHeldTokensLength[address(arg1)].field_256) + 96 > idx:
        mem[idx + 32] = allHeldTokensLength[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * allHeldTokensLength[address(arg1)].field_256) + 192 len floor32(allHeldTokensLength[address(arg1)].field_256)] = mem[128 len floor32(allHeldTokensLength[address(arg1)].field_256)]
    return Array(len=allHeldTokensLength[address(arg1)].field_256, data=mem[128 len floor32(allHeldTokensLength[address(arg1)].field_256)], mem[(32 * allHeldTokensLength[address(arg1)].field_256) + floor32(allHeldTokensLength[address(arg1)].field_256) + 192 len (32 * allHeldTokensLength[address(arg1)].field_256) - floor32(allHeldTokensLength[address(arg1)].field_256)]), 
}

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg1.length != arg2.length:
        revert with 0, 
                    32,
                    41,
                    0x66455243313135353a206163636f756e747320616e6420696473206c656e677468206d69736d617463,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 269 len 23]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 
                        32,
                        43,
                        0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                        mem[(64 * arg1.length) + (32 * arg2.length) + 303 len 21]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + (32 * arg1.length) + 160], 1)
        require idx < arg1.length
        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = balanceOf[mem[(32 * idx) + (32 * arg1.length) + 160]][address(mem[(32 * idx) + 128])]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + (32 * arg2.length) + 192] = 32
    mem[(64 * arg1.length) + (32 * arg2.length) + 224] = arg1.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 256 len floor32(arg1.length)] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(arg1.length)]
    return memory
      from (64 * arg1.length) + (32 * arg2.length) + 192
       len (161 * arg1.length) + 64
}

function mint(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if bool(stor5[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x4e436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    if not arg1:
        revert with 0, 32, 33, 0x68455243313135353a206d696e7420746f20746865207a65726f20616464726573, mem[261 len 31]
    mem[192] = arg2
    mem[224] = 1
    mem[256] = arg3
    if stor4:
        revert with 0, 32, 44, 0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365, mem[400 len 20]
    idx = 0
    while idx < 1:
        require idx < 1
        if arg1:
            if not arg1:
                revert with 0, 32, 43, 0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573, mem[399 len 21]
            if not balanceOf[mem[(32 * idx) + 192]][address(arg1)]:
                require idx < 1
                if not allHeldTokensLength[address(arg1)].field_256:
                    require idx < 1
                    if allHeldTokensLength[address(arg1)].field_256:
                        require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 192]].field_0 < allHeldTokensLength[address(arg1)].field_256
                        if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 192]].field_0].field_0 == mem[(32 * idx) + 192]:
                            revert with 0, 32, 42, 0x6455496e743235365365743a206b657920616c72656164792065786973747320696e2074686520736574, mem[398 len 22]
                    allHeldTokensLength[address(arg1)].field_256++
                    stor[allHeldTokensLength[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11)))].field_0 = mem[(32 * idx) + 192]
                    allHeldTokensLength[address(arg1)][mem[(32 * idx) + 192]].field_0 = allHeldTokensLength[address(arg1)].field_256 - 1
                else:
                    require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 192]].field_0 < allHeldTokensLength[address(arg1)].field_256
                    if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 192]].field_0].field_0 != mem[(32 * idx) + 192]:
                        require idx < 1
                        if allHeldTokensLength[address(arg1)].field_256:
                            require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 192]].field_0 < allHeldTokensLength[address(arg1)].field_256
                            if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 192]].field_0].field_0 == mem[(32 * idx) + 192]:
                                revert with 0, 32, 42, 0x6455496e743235365365743a206b657920616c72656164792065786973747320696e2074686520736574, mem[398 len 22]
                        allHeldTokensLength[address(arg1)].field_256++
                        stor[allHeldTokensLength[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11)))].field_0 = mem[(32 * idx) + 192]
                        allHeldTokensLength[address(arg1)][mem[(32 * idx) + 192]].field_0 = allHeldTokensLength[address(arg1)].field_256 - 1
                require idx < 1
                if not allTokenHoldersLength[mem[(32 * idx) + 192]].field_256:
                    require idx < 1
                    if allTokenHoldersLength[mem[(32 * idx) + 192]].field_256:
                        require allTokenHoldersLength[mem[(32 * idx) + 192]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 192]].field_256
                        if stor[('array', 1, ('map', ('mem', ('range', ('add', 192, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 192]][address(arg1)].field_0].field_0 == arg1:
                            revert with 0, 32, 42, 0x73416464726573735365743a206b657920616c72656164792065786973747320696e2074686520736574, mem[398 len 22]
                    allTokenHoldersLength[mem[(32 * idx) + 192]].field_256++
                    stor[allTokenHoldersLength[mem[(32 * idx) + 192]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 192, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0 = arg1
                    allTokenHoldersLength[mem[(32 * idx) + 192]][address(arg1)].field_0 = allTokenHoldersLength[mem[(32 * idx) + 192]].field_256 - 1
                else:
                    require allTokenHoldersLength[mem[(32 * idx) + 192]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 192]].field_256
                    if stor[('array', 1, ('map', ('mem', ('range', ('add', 192, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 192]][address(arg1)].field_0].field_0 != arg1:
                        require idx < 1
                        if allTokenHoldersLength[mem[(32 * idx) + 192]].field_256:
                            require allTokenHoldersLength[mem[(32 * idx) + 192]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 192]].field_256
                            if stor[('array', 1, ('map', ('mem', ('range', ('add', 192, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 192]][address(arg1)].field_0].field_0 == arg1:
                                revert with 0, 32, 42, 0x73416464726573735365743a206b657920616c72656164792065786973747320696e2074686520736574, mem[398 len 22]
                        allTokenHoldersLength[mem[(32 * idx) + 192]].field_256++
                        stor[allTokenHoldersLength[mem[(32 * idx) + 192]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 192, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0 = arg1
                        allTokenHoldersLength[mem[(32 * idx) + 192]][address(arg1)].field_0 = allTokenHoldersLength[mem[(32 * idx) + 192]].field_256 - 1
        require idx < 1
        if mem[(32 * idx) + 256] + totalBalances[mem[(32 * idx) + 192]] < totalBalances[mem[(32 * idx) + 192]]:
            revert with 0, 'SafeMath: addition overflow'
        require idx < 1
        mem[0] = mem[(32 * idx) + 192]
        mem[32] = 9
        totalBalances[mem[(32 * idx) + 192]] += mem[(32 * idx) + 256]
        if not arg1:
            require idx < 1
            require idx < 1
            if mem[(32 * idx) + 256] > totalBalances[mem[(32 * idx) + 192]]:
                revert with 0, 'SafeMath: subtraction overflow'
            require idx < 1
            mem[0] = mem[(32 * idx) + 192]
            mem[32] = 9
            totalBalances[mem[(32 * idx) + 192]] -= mem[(32 * idx) + 256]
        idx = idx + 1
        continue 
    if arg3 + balanceOf[arg2][address(arg1)] < balanceOf[arg2][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[arg2][address(arg1)] += arg3
    emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
    if ext_code.size(arg1):
        require ext_code.size(arg1)
        call arg1.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, 0, arg2, arg3, 160, 3, 0
        if not ext_call.success:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        Mask(96, 0, arg3)
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 32, 40, 0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg3)
}

function burn(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if bool(stor5[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x4e436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x2e455243313135353a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[199 len 29]
    mem[128] = arg2
    mem[160] = 1
    mem[192] = arg3
    mem[224] = 0
    if stor4:
        revert with 0, 32, 44, 0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365, mem[368 len 20]
    idx = 0
    while idx < 1:
        require idx < 1
        if arg1:
            if unlockTime[address(arg1)][mem[(32 * idx) + 128]] > block.timestamp:
                revert with 0, 'TOKEN_LOCKED'
            if arg1:
                require idx < 1
                require idx < 1
                if not arg1:
                    revert with 0, 32, 43, 0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573, mem[367 len 21]
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] == mem[(32 * idx) + 192]:
                    require idx < 1
                    if allHeldTokensLength[address(arg1)].field_256:
                        require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 < allHeldTokensLength[address(arg1)].field_256
                        if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0].field_0 == mem[(32 * idx) + 128]:
                            require idx < 1
                            if not allHeldTokensLength[address(arg1)].field_256:
                                revert with 0, 32, 42, 0x6455496e743235365365743a206b657920646f6573206e6f7420657869737420696e2074686520736574, mem[366 len 22]
                            require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 < allHeldTokensLength[address(arg1)].field_256
                            if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0].field_0 != mem[(32 * idx) + 128]:
                                revert with 0, 32, 42, 0x6455496e743235365365743a206b657920646f6573206e6f7420657869737420696e2074686520736574, mem[366 len 22]
                            if allHeldTokensLength[address(arg1)].field_256 - 1 != allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0:
                                require allHeldTokensLength[address(arg1)].field_256 - 1 < allHeldTokensLength[address(arg1)].field_256
                                allHeldTokensLength[address(arg1)][stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0].field_0 = allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0
                                require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 < allHeldTokensLength[address(arg1)].field_256
                                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0].field_0 = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0
                            allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 = 0
                            require allHeldTokensLength[address(arg1)].field_256 - 1 < allHeldTokensLength[address(arg1)].field_256
                            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0 = 0
                    require idx < 1
                    if allTokenHoldersLength[mem[(32 * idx) + 128]].field_256:
                        require allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                        if stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0].field_0 == arg1:
                            require idx < 1
                            if not allTokenHoldersLength[mem[(32 * idx) + 128]].field_256:
                                revert with 0, 32, 42, 0x73416464726573735365743a206b657920646f6573206e6f7420657869737420696e2074686520736574, mem[366 len 22]
                            require allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                            if stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0].field_0 != arg1:
                                revert with 0, 32, 42, 0x73416464726573735365743a206b657920646f6573206e6f7420657869737420696e2074686520736574, mem[366 len 22]
                            if allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1 != allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0:
                                require allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                                allTokenHoldersLength[mem[(32 * idx) + 128]][stor[allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0].field_0 = allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0
                                require allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                                stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0].field_0 = stor[allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0
                            allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 = 0
                            require allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                            stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]].field_256].field_0 = 0
        require idx < 1
        if not arg1:
            if mem[(32 * idx) + 192] + totalBalances[mem[(32 * idx) + 128]] < totalBalances[mem[(32 * idx) + 128]]:
                revert with 0, 'SafeMath: addition overflow'
            require idx < 1
            totalBalances[mem[(32 * idx) + 128]] += mem[(32 * idx) + 192]
        if mem[(32 * idx) + 192] > totalBalances[mem[(32 * idx) + 128]]:
            revert with 0, 'SafeMath: subtraction overflow'
        require idx < 1
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 9
        totalBalances[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
        idx = idx + 1
        continue 
    if arg3 > balanceOf[arg2][address(arg1)]:
        revert with 0, 32, 36, 0x73455243313135353a206275726e20616d6f756e7420657863656564732062616c616e63, mem[324 len 28], mem[380 len 4]
    balanceOf[arg2][address(arg1)] -= arg3
    emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
}

function mintBatch(address arg1, uint256[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[0] = msg.sender
    if bool(stor5[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0, 
                        32,
                        40,
                        0x4e436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[(32 * arg2.length) + (32 * arg3.length) + 268 len 24]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 3
    mem[(32 * arg2.length) + (32 * arg3.length) + 192] = 0x3078300000000000000000000000000000000000000000000000000000000000
    if not arg1:
        revert with 0, 
                    32,
                    33,
                    0x68455243313135353a206d696e7420746f20746865207a65726f20616464726573,
                    mem[(32 * arg2.length) + (32 * arg3.length) + 325 len 31]
    if arg2.length != arg3.length:
        revert with 0, 
                    32,
                    40,
                    0x68455243313135353a2069647320616e6420616d6f756e7473206c656e677468206d69736d617463,
                    mem[(32 * arg2.length) + (32 * arg3.length) + 332 len 24]
    if stor4:
        revert with 0, 
                    32,
                    44,
                    0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[(32 * arg2.length) + (32 * arg3.length) + 336 len 20]
    idx = 0
    while idx < arg2.length:
        if arg1:
            require idx < arg2.length
            if not arg1:
                revert with 0, 
                            32,
                            43,
                            0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                            mem[(32 * arg2.length) + (32 * arg3.length) + 335 len 21]
            if not balanceOf[mem[(32 * idx) + 128]][address(arg1)]:
                require idx < arg2.length
                if not allHeldTokensLength[address(arg1)].field_256:
                    require idx < arg2.length
                    if allHeldTokensLength[address(arg1)].field_256:
                        require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 < allHeldTokensLength[address(arg1)].field_256
                        if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0].field_0 == mem[(32 * idx) + 128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6455496e743235365365743a206b657920616c72656164792065786973747320696e2074686520736574,
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 334 len 22]
                    allHeldTokensLength[address(arg1)].field_256++
                    stor[allHeldTokensLength[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11)))].field_0 = mem[(32 * idx) + 128]
                    allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 = allHeldTokensLength[address(arg1)].field_256 - 1
                else:
                    require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 < allHeldTokensLength[address(arg1)].field_256
                    if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0].field_0 != mem[(32 * idx) + 128]:
                        require idx < arg2.length
                        if allHeldTokensLength[address(arg1)].field_256:
                            require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 < allHeldTokensLength[address(arg1)].field_256
                            if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0].field_0 == mem[(32 * idx) + 128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6455496e743235365365743a206b657920616c72656164792065786973747320696e2074686520736574,
                                            mem[(32 * arg2.length) + (32 * arg3.length) + 334 len 22]
                        allHeldTokensLength[address(arg1)].field_256++
                        stor[allHeldTokensLength[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11)))].field_0 = mem[(32 * idx) + 128]
                        allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 = allHeldTokensLength[address(arg1)].field_256 - 1
                require idx < arg2.length
                if not allTokenHoldersLength[mem[(32 * idx) + 128]].field_256:
                    require idx < arg2.length
                    if allTokenHoldersLength[mem[(32 * idx) + 128]].field_256:
                        require allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                        if stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0].field_0 == arg1:
                            revert with 0, 
                                        32,
                                        42,
                                        0x73416464726573735365743a206b657920616c72656164792065786973747320696e2074686520736574,
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 334 len 22]
                    allTokenHoldersLength[mem[(32 * idx) + 128]].field_256++
                    stor[allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0 = arg1
                    allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 = allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1
                else:
                    require allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                    if stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0].field_0 != arg1:
                        require idx < arg2.length
                        if allTokenHoldersLength[mem[(32 * idx) + 128]].field_256:
                            require allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                            if stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0].field_0 == arg1:
                                revert with 0, 
                                            32,
                                            42,
                                            0x73416464726573735365743a206b657920616c72656164792065786973747320696e2074686520736574,
                                            mem[(32 * arg2.length) + (32 * arg3.length) + 334 len 22]
                        allTokenHoldersLength[mem[(32 * idx) + 128]].field_256++
                        stor[allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0 = arg1
                        allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 = allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1
        require idx < arg3.length
        require idx < arg2.length
        if mem[(32 * idx) + (32 * arg2.length) + 160] + totalBalances[mem[(32 * idx) + 128]] < totalBalances[mem[(32 * idx) + 128]]:
            revert with 0, 'SafeMath: addition overflow'
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 9
        totalBalances[mem[(32 * idx) + 128]] += mem[(32 * idx) + (32 * arg2.length) + 160]
        if not arg1:
            require idx < arg3.length
            require idx < arg2.length
            if mem[(32 * idx) + (32 * arg2.length) + 160] > totalBalances[mem[(32 * idx) + 128]]:
                revert with 0, 'SafeMath: subtraction overflow'
            require idx < arg2.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 9
            totalBalances[mem[(32 * idx) + 128]] -= mem[(32 * idx) + (32 * arg2.length) + 160]
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg3.length
        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] + mem[(32 * idx) + (32 * arg2.length) + 160] < mem[(32 * idx) + (32 * arg2.length) + 160]:
            revert with 0, 'SafeMath: addition overflow'
        require idx < arg2.length
        mem[0] = arg1
        mem[32] = sha3(mem[(32 * idx) + 128], 1)
        balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + (32 * arg2.length) + 160]
        idx = idx + 1
        continue 
    mem[(32 * arg2.length) + (32 * arg3.length) + 224] = 64
    mem[(32 * arg2.length) + (32 * arg3.length) + 288] = arg2.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 320 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(32 * arg2.length) + (32 * arg3.length) + 256] = (32 * arg2.length) + 96
    mem[(64 * arg2.length) + (32 * arg3.length) + 320] = arg3.length
    s = 0
    while arg2.length < 32 * arg3.length:
        mem[(67 * arg2.length) + (32 * arg3.length) + 352] = mem[(34 * arg2.length) + 160]
        s = arg2.length + 32
        continue 
    emit TransferBatch(Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + (32 * arg3.length) + floor32(arg2.length) + 320 len (32 * arg2.length) + (32 * arg3.length) + -floor32(arg2.length) + 32]), (32 * arg2.length) + 96, msg.sender, 0, arg1);
    if not ext_code.size(arg1):
    mem[(32 * arg2.length) + (32 * arg3.length) + 228] = msg.sender
    mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0
    mem[(32 * arg2.length) + (32 * arg3.length) + 292] = 160
    mem[(32 * arg2.length) + (32 * arg3.length) + 388] = arg2.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 420 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(32 * arg2.length) + (32 * arg3.length) + 324] = (32 * arg2.length) + 192
    mem[(64 * arg2.length) + (32 * arg3.length) + 420] = arg3.length
    mem[(64 * arg2.length) + (32 * arg3.length) + 452 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(32 * arg2.length) + (32 * arg3.length) + 356] = (32 * arg3.length) + (32 * arg2.length) + 224
    mem[(64 * arg3.length) + (64 * arg2.length) + 452] = 3
    mem[(64 * arg3.length) + (64 * arg2.length) + 484] = 0
    require ext_code.size(arg1)
    call arg1.0xbc197c81 with:
         gas gas_remaining wei
        args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg3.length) + (32 * arg2.length) + 224, arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + (32 * arg3.length) + floor32(arg2.length) + 420 len (32 * arg2.length) + (32 * arg3.length) + -floor32(arg2.length) + 32], 3, 0
    mem[(32 * arg2.length) + (32 * arg3.length) + 224] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 
                        32,
                        40,
                        0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                        Mask(192, 0, (32 * arg2.length) + 192)
    if return_data.size < 68:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    Mask(96, 0, (32 * arg2.length) + 192)
    if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    Mask(96, 0, (32 * arg2.length) + 192)
    mem[(32 * arg2.length) + (32 * arg3.length) + 224 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    Mask(96, 0, (32 * arg2.length) + 192)
    if mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224] > test266151307():
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    Mask(96, 0, (32 * arg2.length) + 192)
    if ext_call.return_data[0] + mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224] + 32 > return_data.size:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    Mask(96, 0, (32 * arg2.length) + 192)
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + ceil32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]) + 256
    if not (32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + ceil32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]) + 376 len 12]
    mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + ceil32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + ceil32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]) + 260] = 32
    mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + ceil32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]) + 292] = mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]
    if mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]:
        mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + ceil32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]) + 324] = mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 256]
        mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + ceil32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]) + 356 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224] - 1)] = mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 288 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224] - 1)]
    if not mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224] % 32:
        revert with 0, 
                    32,
                    mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + ceil32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]) + 292 len mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224] + 32]
    mem[floor32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]) + (32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + ceil32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]) + 324] = mem[floor32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]) + (32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + ceil32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]) + -(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224] % 32) + 356 len mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224] % 32]
    revert with 0, 
                32,
                mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224],
                mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + ceil32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]) + 324 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]) + 32]
}

function burnBatch(address arg1, uint256[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[0] = msg.sender
    mem[32] = 5
    if 1 == bool(stor5[msg.sender]):
        if not arg1:
            revert with 0, 
                        32,
                        35,
                        0x2e455243313135353a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[(32 * arg2.length) + (32 * arg3.length) + 263 len 29]
        if arg2.length != arg3.length:
            revert with 0, 
                        32,
                        40,
                        0x68455243313135353a2069647320616e6420616d6f756e7473206c656e677468206d69736d617463,
                        mem[(32 * arg2.length) + (32 * arg3.length) + 268 len 24]
        mem[64] = (32 * arg2.length) + (32 * arg3.length) + 192
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
        if stor4:
            revert with 0, 
                        32,
                        44,
                        0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                        mem[(32 * arg2.length) + (32 * arg3.length) + 304 len 20]
        idx = 0
        while idx < arg2.length:
            if arg1:
                require idx < arg2.length
                if unlockTime[address(arg1)][mem[(32 * idx) + 128]] > block.timestamp:
                    revert with 0, 'TOKEN_LOCKED'
                if arg1:
                    require idx < arg3.length
                    require idx < arg2.length
                    if not arg1:
                        revert with 0, 
                                    32,
                                    43,
                                    0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 303 len 21]
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] == mem[(32 * idx) + (32 * arg2.length) + 160]:
                        require idx < arg2.length
                        if allHeldTokensLength[address(arg1)].field_256:
                            require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 < allHeldTokensLength[address(arg1)].field_256
                            if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0].field_0 == mem[(32 * idx) + 128]:
                                require idx < arg2.length
                                if not allHeldTokensLength[address(arg1)].field_256:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6455496e743235365365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                                mem[(32 * arg2.length) + (32 * arg3.length) + 302 len 22]
                                require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 < allHeldTokensLength[address(arg1)].field_256
                                if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0].field_0 != mem[(32 * idx) + 128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6455496e743235365365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                                mem[(32 * arg2.length) + (32 * arg3.length) + 302 len 22]
                                if allHeldTokensLength[address(arg1)].field_256 - 1 != allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0:
                                    require allHeldTokensLength[address(arg1)].field_256 - 1 < allHeldTokensLength[address(arg1)].field_256
                                    allHeldTokensLength[address(arg1)][stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0].field_0 = allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0
                                    require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 < allHeldTokensLength[address(arg1)].field_256
                                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0].field_0 = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0
                                allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 = 0
                                require allHeldTokensLength[address(arg1)].field_256 - 1 < allHeldTokensLength[address(arg1)].field_256
                                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0 = 0
                        require idx < arg2.length
                        if allTokenHoldersLength[mem[(32 * idx) + 128]].field_256:
                            require allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                            if stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0].field_0 == arg1:
                                require idx < arg2.length
                                if not allTokenHoldersLength[mem[(32 * idx) + 128]].field_256:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x73416464726573735365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                                mem[(32 * arg2.length) + (32 * arg3.length) + 302 len 22]
                                require allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                                if stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0].field_0 != arg1:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x73416464726573735365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                                mem[(32 * arg2.length) + (32 * arg3.length) + 302 len 22]
                                if allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1 != allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0:
                                    require allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                                    allTokenHoldersLength[mem[(32 * idx) + 128]][stor[allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0].field_0 = allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0
                                    require allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                                    stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0].field_0 = stor[allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0
                                allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 = 0
                                require allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                                stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]].field_256].field_0 = 0
            require idx < arg3.length
            require idx < arg2.length
            if not arg1:
                if mem[(32 * idx) + (32 * arg2.length) + 160] + totalBalances[mem[(32 * idx) + 128]] < totalBalances[mem[(32 * idx) + 128]]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < arg2.length
                totalBalances[mem[(32 * idx) + 128]] += mem[(32 * idx) + (32 * arg2.length) + 160]
            if mem[(32 * idx) + (32 * arg2.length) + 160] > totalBalances[mem[(32 * idx) + 128]]:
                revert with 0, 'SafeMath: subtraction overflow'
            require idx < arg2.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 9
            totalBalances[mem[(32 * idx) + 128]] -= mem[(32 * idx) + (32 * arg2.length) + 160]
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg2.length:
            require idx < mem[(32 * arg2.length) + 128]
            _2922 = mem[(32 * idx) + (32 * arg2.length) + 160]
            _2923 = mem[64]
            mem[64] = mem[64] + 96
            mem[_2923] = 36
            mem[_2923 + 32 len 36] = 0x73455243313135353a206275726e20616d6f756e7420657863656564732062616c616e63
            require idx < mem[96]
            mem[32] = sha3(mem[(32 * idx) + 128], 1)
            if _2922 <= balanceOf[mem[(32 * idx) + 128]][address(arg1)]:
                require idx < mem[96]
                mem[0] = arg1
                mem[32] = sha3(mem[(32 * idx) + 128], 1)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= _2922
                idx = idx + 1
                continue 
            _2942 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 36
            idx = 0
            while idx < 36:
                mem[idx + _2942 + 68] = mem[idx + _2923 + 32]
                idx = idx + 32
                continue 
            mem[_2942 + 100] = mem[_2942 + 128 len 4]
            revert with memory
              from mem[64]
               len _2942 + -mem[64] + 132
        _2914 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _2916 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _2914 + 96] = mem[(32 * arg2.length) + 128]
        _2967 = mem[(32 * arg2.length) + 128]
        mem[(32 * _2916) + _2914 + 128 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                           mem[mem[64] len (32 * _2967) + (32 * _2916) + _2914 + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           0,
    else:
        if this.address != msg.sender:
            revert with 0, 
                        32,
                        40,
                        0x4e436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[(32 * arg2.length) + (32 * arg3.length) + 268 len 24]
        if not arg1:
            revert with 0, 
                        32,
                        35,
                        0x2e455243313135353a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[(32 * arg2.length) + (32 * arg3.length) + 263 len 29]
        if arg2.length != arg3.length:
            revert with 0, 
                        32,
                        40,
                        0x68455243313135353a2069647320616e6420616d6f756e7473206c656e677468206d69736d617463,
                        mem[(32 * arg2.length) + (32 * arg3.length) + 268 len 24]
        mem[64] = (32 * arg2.length) + (32 * arg3.length) + 192
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
        if stor4:
            revert with 0, 
                        32,
                        44,
                        0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                        mem[(32 * arg2.length) + (32 * arg3.length) + 304 len 20]
        idx = 0
        while idx < arg2.length:
            if arg1:
                require idx < arg2.length
                if unlockTime[address(arg1)][mem[(32 * idx) + 128]] > block.timestamp:
                    revert with 0, 'TOKEN_LOCKED'
                if arg1:
                    require idx < arg3.length
                    require idx < arg2.length
                    if not arg1:
                        revert with 0, 
                                    32,
                                    43,
                                    0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 303 len 21]
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] == mem[(32 * idx) + (32 * arg2.length) + 160]:
                        require idx < arg2.length
                        if allHeldTokensLength[address(arg1)].field_256:
                            require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 < allHeldTokensLength[address(arg1)].field_256
                            if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0].field_0 == mem[(32 * idx) + 128]:
                                require idx < arg2.length
                                if not allHeldTokensLength[address(arg1)].field_256:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6455496e743235365365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                                mem[(32 * arg2.length) + (32 * arg3.length) + 302 len 22]
                                require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 < allHeldTokensLength[address(arg1)].field_256
                                if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0].field_0 != mem[(32 * idx) + 128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6455496e743235365365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                                mem[(32 * arg2.length) + (32 * arg3.length) + 302 len 22]
                                if allHeldTokensLength[address(arg1)].field_256 - 1 != allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0:
                                    require allHeldTokensLength[address(arg1)].field_256 - 1 < allHeldTokensLength[address(arg1)].field_256
                                    allHeldTokensLength[address(arg1)][stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0].field_0 = allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0
                                    require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 < allHeldTokensLength[address(arg1)].field_256
                                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0].field_0 = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0
                                allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 = 0
                                require allHeldTokensLength[address(arg1)].field_256 - 1 < allHeldTokensLength[address(arg1)].field_256
                                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0 = 0
                        require idx < arg2.length
                        if allTokenHoldersLength[mem[(32 * idx) + 128]].field_256:
                            require allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                            if stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0].field_0 == arg1:
                                require idx < arg2.length
                                if not allTokenHoldersLength[mem[(32 * idx) + 128]].field_256:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x73416464726573735365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                                mem[(32 * arg2.length) + (32 * arg3.length) + 302 len 22]
                                require allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                                if stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0].field_0 != arg1:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x73416464726573735365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                                mem[(32 * arg2.length) + (32 * arg3.length) + 302 len 22]
                                if allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1 != allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0:
                                    require allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                                    allTokenHoldersLength[mem[(32 * idx) + 128]][stor[allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0].field_0 = allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0
                                    require allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                                    stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0].field_0 = stor[allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0
                                allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 = 0
                                require allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                                stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]].field_256].field_0 = 0
            require idx < arg3.length
            require idx < arg2.length
            if not arg1:
                if mem[(32 * idx) + (32 * arg2.length) + 160] + totalBalances[mem[(32 * idx) + 128]] < totalBalances[mem[(32 * idx) + 128]]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < arg2.length
                totalBalances[mem[(32 * idx) + 128]] += mem[(32 * idx) + (32 * arg2.length) + 160]
            if mem[(32 * idx) + (32 * arg2.length) + 160] > totalBalances[mem[(32 * idx) + 128]]:
                revert with 0, 'SafeMath: subtraction overflow'
            require idx < arg2.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 9
            totalBalances[mem[(32 * idx) + 128]] -= mem[(32 * idx) + (32 * arg2.length) + 160]
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg2.length:
            require idx < mem[(32 * arg2.length) + 128]
            _2925 = mem[(32 * idx) + (32 * arg2.length) + 160]
            _2926 = mem[64]
            mem[64] = mem[64] + 96
            mem[_2926] = 36
            mem[_2926 + 32 len 36] = 0x73455243313135353a206275726e20616d6f756e7420657863656564732062616c616e63
            require idx < mem[96]
            mem[32] = sha3(mem[(32 * idx) + 128], 1)
            if _2925 <= balanceOf[mem[(32 * idx) + 128]][address(arg1)]:
                require idx < mem[96]
                mem[0] = arg1
                mem[32] = sha3(mem[(32 * idx) + 128], 1)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= _2925
                idx = idx + 1
                continue 
            _2947 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 36
            idx = 0
            while idx < 36:
                mem[idx + _2947 + 68] = mem[idx + _2926 + 32]
                idx = idx + 32
                continue 
            mem[_2947 + 100] = mem[_2947 + 128 len 4]
            revert with memory
              from mem[64]
               len _2947 + -mem[64] + 132
        _2918 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _2920 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _2918 + 96] = mem[(32 * arg2.length) + 128]
        _2971 = mem[(32 * arg2.length) + 128]
        mem[(32 * _2920) + _2918 + 128 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                           mem[mem[64] len (32 * _2971) + (32 * _2920) + _2918 + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           0,
}



}
