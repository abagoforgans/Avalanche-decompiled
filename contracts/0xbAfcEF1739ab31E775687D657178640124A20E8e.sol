contract main {




// =====================  Runtime code  =====================


#
#  - uri(uint256 arg1)
#
mapping of uint8 stor0;
mapping of uint256 balanceOf;
mapping of uint8 stor2;
uint8 paused;
mapping of uint8 stor5;
array of address allProxyRegistries;
address registryManagerAddress;
mapping of uint256 totalBalances;
mapping of uint256 unlockTime;
array of uint256 allHeldTokensLength;
array of struct allTokenHolders;

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
    return bool(paused)
}

function allTokenHolders(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256(allTokenHolders[arg1].field_0)
    return address(allTokenHolders[arg1][arg2].field_0)
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
    return allHeldTokensLength[address(arg1)]
}

function isController(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[address(arg1)])
}

function allHeldTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < allHeldTokensLength[address(arg1)]
    return allHeldTokensLength[address(arg1)][arg2]
}

function totalBalances(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return totalBalances[arg1]
}

function allTokenHoldersLength(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(allTokenHolders[arg1].field_0)
}

function _fallback() payable {
    revert
}

function lock(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if unlockTime[address(msg.sender)][arg1] >= arg2:
        revert with 0, 'ALREADY_LOCKED'
    unlockTime[address(msg.sender)][arg2] = arg2
}

function addProxyRegistry(address arg1) payable {
    require calldata.size - 4 >= 32
    if registryManagerAddress != msg.sender:
        revert with 0, 'UNAUTHORIZED'
    allProxyRegistries.length++
    allProxyRegistries[allProxyRegistries.length] = arg1
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

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg5.length) + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
}

function removeProxyRegistryAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if registryManagerAddress != msg.sender:
        revert with 0, 'UNAUTHORIZED'
    if arg1 >= allProxyRegistries.length:
        revert with 0, 'INVALID_INDEX'
    require allProxyRegistries.length - 1 < allProxyRegistries.length
    require arg1 < allProxyRegistries.length
    allProxyRegistries[arg1] = allProxyRegistries[allProxyRegistries.length]
    require allProxyRegistries.length - 1 < allProxyRegistries.length
    allProxyRegistries[allProxyRegistries.length] = 0
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    idx = 0
    while idx < allProxyRegistries.length:
        mem[0] = 6
        mem[100] = arg1
        require ext_code.size(allProxyRegistries[idx])
        staticcall allProxyRegistries[idx].proxies(address rg1) with:
                gas gas_remaining wei
               args arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != arg2:
            idx = idx + 1
            continue 
        return 1
    return bool(stor2[address(arg1)][address(arg2)])
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
    if paused:
        revert with 0, 32, 44, 0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365, mem[400 len 20]
    idx = 0
    while idx < 1:
        require idx < 1
        if arg1:
            if not arg1:
                revert with 0, 32, 43, 0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573, mem[399 len 21]
            if not balanceOf[mem[(32 * idx) + 192]][address(arg1)]:
                require idx < 1
                allHeldTokensLength[address(arg1)]++
                allHeldTokensLength[address(arg1)][allHeldTokensLength[address(arg1)]] = mem[(32 * idx) + 192]
                require idx < 1
                uint256(allTokenHolders[mem[(32 * idx) + 192]].field_0)++
                address(allTokenHolders[mem[(32 * idx) + 192]][uint256(allTokenHolders[mem[(32 * idx) + 192]].field_0)].field_0) = arg1
        require idx < 1
        if mem[(32 * idx) + 256] + totalBalances[mem[(32 * idx) + 192]] < totalBalances[mem[(32 * idx) + 192]]:
            revert with 0, 'SafeMath: addition overflow'
        require idx < 1
        mem[0] = mem[(32 * idx) + 192]
        mem[32] = 8
        totalBalances[mem[(32 * idx) + 192]] += mem[(32 * idx) + 256]
        if not arg1:
            require idx < 1
            require idx < 1
            if mem[(32 * idx) + 256] > totalBalances[mem[(32 * idx) + 192]]:
                revert with 0, 'SafeMath: subtraction overflow'
            require idx < 1
            mem[0] = mem[(32 * idx) + 192]
            mem[32] = 8
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
            args msg.sender, 0, arg2, arg3, 160, 3, '0x0' % 16777216
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
    if 1 == bool(stor5[msg.sender]):
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x64455243313135353a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[199 len 29]
        mem[128] = arg2
        mem[160] = 1
        mem[192] = arg3
        mem[224] = 0
        if paused:
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
                    if not balanceOf[mem[(32 * idx) + 128]][address(arg1)] - mem[(32 * idx) + 192]:
                        s = 0
                        while s < allHeldTokensLength[address(arg1)]:
                            require idx < 1
                            require s < allHeldTokensLength[address(arg1)]
                            if allHeldTokensLength[address(arg1)][s] == mem[(32 * idx) + 128]:
                                require allHeldTokensLength[address(arg1)] - 1 < allHeldTokensLength[address(arg1)]
                                require s < allHeldTokensLength[address(arg1)]
                                allHeldTokensLength[address(arg1)][s] = allHeldTokensLength[address(arg1)][allHeldTokensLength[address(arg1)]]
                                require allHeldTokensLength[address(arg1)] - 1 < allHeldTokensLength[address(arg1)]
                                allHeldTokensLength[address(arg1)][allHeldTokensLength[address(arg1)]] = 0
                            mem[0] = arg1
                            mem[32] = 10
                            s = s + 1
                            continue 
                        require idx < 1
                        if var60005 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                            require idx < 1
                            require var64006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                            if address(stor[sha3(var66002) + var66001]) != arg1:
                                require idx < 1
                                s = var66004
                                while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                    require idx < 1
                                    require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    if address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) == arg1:
                                        require idx < 1
                                        require idx < 1
                                        require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        require idx < 1
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0)
                                        require idx < 1
                                        require idx < 1
                                        require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0) = 0
                                    require idx < 1
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 11
                                    s = s + 1
                                    continue 
                            else:
                                require idx < 1
                                require idx < 1
                                require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(stor[var72006])
                                require idx < 1
                                require var76006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                address(stor[sha3(var78002) + var78001]) = address(var78003)
                                require idx < 1
                                require idx < 1
                                require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(stor[var82006])
                                address(stor[sha3(var84002) + var84001]) = 0
                                require idx < 1
                                s = var84003
                                while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                    require idx < 1
                                    require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    if address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) == arg1:
                                        require idx < 1
                                        require idx < 1
                                        require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        require idx < 1
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0)
                                        require idx < 1
                                        require idx < 1
                                        require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0) = 0
                                    require idx < 1
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 11
                                    s = s + 1
                                    continue 
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
            mem[32] = 8
            totalBalances[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
            idx = idx + 1
            continue 
    else:
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
                        0x64455243313135353a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[199 len 29]
        mem[128] = arg2
        mem[160] = 1
        mem[192] = arg3
        mem[224] = 0
        if paused:
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
                    if not balanceOf[mem[(32 * idx) + 128]][address(arg1)] - mem[(32 * idx) + 192]:
                        s = 0
                        while s < allHeldTokensLength[address(arg1)]:
                            require idx < 1
                            require s < allHeldTokensLength[address(arg1)]
                            if allHeldTokensLength[address(arg1)][s] == mem[(32 * idx) + 128]:
                                require allHeldTokensLength[address(arg1)] - 1 < allHeldTokensLength[address(arg1)]
                                require s < allHeldTokensLength[address(arg1)]
                                allHeldTokensLength[address(arg1)][s] = allHeldTokensLength[address(arg1)][allHeldTokensLength[address(arg1)]]
                                require allHeldTokensLength[address(arg1)] - 1 < allHeldTokensLength[address(arg1)]
                                allHeldTokensLength[address(arg1)][allHeldTokensLength[address(arg1)]] = 0
                            mem[0] = arg1
                            mem[32] = 10
                            s = s + 1
                            continue 
                        require idx < 1
                        if var61005 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                            require idx < 1
                            require var65006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                            if address(stor[sha3(var67002) + var67001]) != arg1:
                                require idx < 1
                                s = var67004
                                while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                    require idx < 1
                                    require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    if address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) == arg1:
                                        require idx < 1
                                        require idx < 1
                                        require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        require idx < 1
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0)
                                        require idx < 1
                                        require idx < 1
                                        require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0) = 0
                                    require idx < 1
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 11
                                    s = s + 1
                                    continue 
                            else:
                                require idx < 1
                                require idx < 1
                                require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(stor[var73006])
                                require idx < 1
                                require var77006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                address(stor[sha3(var79002) + var79001]) = address(var79003)
                                require idx < 1
                                require idx < 1
                                require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(stor[var83006])
                                address(stor[sha3(var85002) + var85001]) = 0
                                require idx < 1
                                s = var85003
                                while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                    require idx < 1
                                    require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    if address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) == arg1:
                                        require idx < 1
                                        require idx < 1
                                        require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        require idx < 1
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0)
                                        require idx < 1
                                        require idx < 1
                                        require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0) = 0
                                    require idx < 1
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 11
                                    s = s + 1
                                    continue 
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
            mem[32] = 8
            totalBalances[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
            idx = idx + 1
            continue 
    if arg3 > balanceOf[arg2][address(arg1)]:
        revert with 0, 32, 36, 0x73455243313135353a206275726e20616d6f756e7420657863656564732062616c616e63, mem[324 len 28], mem[380 len 4]
    balanceOf[arg2][address(arg1)] -= arg3
    emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[64] = ceil32(arg5.length) + 128
    mem[96] = arg5.length
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    if not arg2:
        revert with 0, 
                    32,
                    37,
                    0x64455243313135353a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(arg5.length) + 233 len 27]
    if arg1 == msg.sender:
        mem[ceil32(arg5.length) + 128] = 1
        require 0 < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
        mem[ceil32(arg5.length) + 160] = arg3
        mem[ceil32(arg5.length) + 192] = 1
        mem[ceil32(arg5.length) + 224] = arg4
        if paused:
            revert with 0, 
                        32,
                        44,
                        0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                        mem[ceil32(arg5.length) + 368 len 20]
        idx = 0
        while idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]:
            if arg1:
                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                mem[32] = sha3(address(arg1), 9)
                if unlockTime[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]] > block.timestamp:
                    revert with 0, 'TOKEN_LOCKED'
                if arg1:
                    require idx < 1
                    require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                    if not arg1:
                        revert with 0, 
                                    32,
                                    43,
                                    0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                                    mem[ceil32(arg5.length) + 367 len 21]
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 1)
                    if not balanceOf[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)] - mem[(32 * idx) + ceil32(arg5.length) + 224]:
                        s = 0
                        while s < allHeldTokensLength[address(arg1)]:
                            require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                            require s < allHeldTokensLength[address(arg1)]
                            if allHeldTokensLength[address(arg1)][s] == mem[(32 * idx) + ceil32(arg5.length) + 160]:
                                require allHeldTokensLength[address(arg1)] - 1 < allHeldTokensLength[address(arg1)]
                                require s < allHeldTokensLength[address(arg1)]
                                allHeldTokensLength[address(arg1)][s] = allHeldTokensLength[address(arg1)][allHeldTokensLength[address(arg1)]]
                                require allHeldTokensLength[address(arg1)] - 1 < allHeldTokensLength[address(arg1)]
                                allHeldTokensLength[address(arg1)][allHeldTokensLength[address(arg1)]] = 0
                            mem[0] = arg1
                            mem[32] = 10
                            s = s + 1
                            continue 
                        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                        mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                        mem[32] = 11
                        if var63005 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0):
                            require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                            require var67006 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                            if address(stor[sha3(var69002) + var69001]) != arg1:
                                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                                mem[32] = 11
                                s = var69004
                                while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0):
                                    require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                    require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                    if address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) == arg1:
                                        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                        require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0)
                                        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                        require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0) = 0
                                    require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                    mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                                    mem[32] = 11
                                    s = s + 1
                                    continue 
                            else:
                                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(stor[var75006])
                                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                require var79006 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                address(stor[sha3(var81002) + var81001]) = address(var81003)
                                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(stor[var85006])
                                address(stor[sha3(var87002) + var87001]) = 0
                                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                                mem[32] = 11
                                s = var87003
                                while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0):
                                    require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                    require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                    if address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) == arg1:
                                        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                        require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0)
                                        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                        require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0) = 0
                                    require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                    mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                                    mem[32] = 11
                                    s = s + 1
                                    continue 
            if arg2:
                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                if not arg2:
                    revert with 0, 
                                32,
                                43,
                                0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                                mem[ceil32(arg5.length) + 367 len 21]
                mem[0] = arg2
                mem[32] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 1)
                if not balanceOf[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg2)]:
                    require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                    allHeldTokensLength[address(arg2)]++
                    allHeldTokensLength[address(arg2)][allHeldTokensLength[address(arg2)]] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                    require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                    mem[32] = 11
                    uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)++
                    mem[0] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 11)
                    address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0) = arg2
            if not arg1:
                require idx < 1
                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                if mem[(32 * idx) + ceil32(arg5.length) + 224] + totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]] < totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                mem[32] = 8
                totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]] += mem[(32 * idx) + ceil32(arg5.length) + 224]
            if not arg2:
                require idx < 1
                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                if mem[(32 * idx) + ceil32(arg5.length) + 224] > totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                mem[32] = 8
                totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]] -= mem[(32 * idx) + ceil32(arg5.length) + 224]
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < allProxyRegistries.length:
            mem[0] = 6
            mem[ceil32(arg5.length) + 132] = arg1
            require ext_code.size(allProxyRegistries[idx])
            staticcall allProxyRegistries[idx].proxies(address rg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[ceil32(arg5.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) != msg.sender:
                idx = idx + 1
                continue 
            mem[ceil32(arg5.length) + 128] = 1
            mem[ceil32(arg5.length) + 160] = arg3
            mem[ceil32(arg5.length) + 192] = 1
            mem[ceil32(arg5.length) + 224] = arg4
            if paused:
                revert with 0, 
                            32,
                            44,
                            0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                            mem[ceil32(arg5.length) + 368 len 20]
            idx = 0
            while idx < 1:
                if arg1:
                    require idx < 1
                    mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                    mem[32] = sha3(address(arg1), 9)
                    if unlockTime[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]] > block.timestamp:
                        revert with 0, 'TOKEN_LOCKED'
                    if arg1:
                        require idx < 1
                        require idx < 1
                        if not arg1:
                            revert with 0, 
                                        32,
                                        43,
                                        0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                                        mem[ceil32(arg5.length) + 367 len 21]
                        mem[0] = arg1
                        mem[32] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 1)
                        if not balanceOf[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)] - mem[(32 * idx) + ceil32(arg5.length) + 224]:
                            s = 0
                            while s < allHeldTokensLength[address(arg1)]:
                                require idx < 1
                                require s < allHeldTokensLength[address(arg1)]
                                if allHeldTokensLength[address(arg1)][s] == mem[(32 * idx) + ceil32(arg5.length) + 160]:
                                    require allHeldTokensLength[address(arg1)] - 1 < allHeldTokensLength[address(arg1)]
                                    require s < allHeldTokensLength[address(arg1)]
                                    allHeldTokensLength[address(arg1)][s] = allHeldTokensLength[address(arg1)][allHeldTokensLength[address(arg1)]]
                                    require allHeldTokensLength[address(arg1)] - 1 < allHeldTokensLength[address(arg1)]
                                    allHeldTokensLength[address(arg1)][allHeldTokensLength[address(arg1)]] = 0
                                mem[0] = arg1
                                mem[32] = 10
                                s = s + 1
                                continue 
                            require idx < 1
                            mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                            mem[32] = 11
                            if var76005 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0):
                                require idx < 1
                                require var80006 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                if address(stor[sha3(var82002) + var82001]) != arg1:
                                    require idx < 1
                                    mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                                    mem[32] = 11
                                    s = var82004
                                    while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0):
                                        require idx < 1
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                        if address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) == arg1:
                                            require idx < 1
                                            require idx < 1
                                            require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            require idx < 1
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0)
                                            require idx < 1
                                            require idx < 1
                                            require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0) = 0
                                        require idx < 1
                                        mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                                        mem[32] = 11
                                        s = s + 1
                                        continue 
                                else:
                                    require idx < 1
                                    require idx < 1
                                    require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(stor[var88006])
                                    require idx < 1
                                    require var92006 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                    address(stor[sha3(var94002) + var94001]) = address(var94003)
                                    require idx < 1
                                    require idx < 1
                                    require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(stor[var98006])
                                    address(stor[sha3(var100002) + var100001]) = 0
                                    require idx < 1
                                    mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                                    mem[32] = 11
                                    s = var100003
                                    while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0):
                                        require idx < 1
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                        if address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) == arg1:
                                            require idx < 1
                                            require idx < 1
                                            require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            require idx < 1
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0)
                                            require idx < 1
                                            require idx < 1
                                            require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0) = 0
                                        require idx < 1
                                        mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                                        mem[32] = 11
                                        s = s + 1
                                        continue 
                if arg2:
                    require idx < 1
                    if not arg2:
                        revert with 0, 
                                    32,
                                    43,
                                    0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                                    mem[ceil32(arg5.length) + 367 len 21]
                    mem[0] = arg2
                    mem[32] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 1)
                    if not balanceOf[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg2)]:
                        require idx < 1
                        allHeldTokensLength[address(arg2)]++
                        allHeldTokensLength[address(arg2)][allHeldTokensLength[address(arg2)]] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                        require idx < 1
                        mem[32] = 11
                        uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)++
                        mem[0] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 11)
                        address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0) = arg2
                if not arg1:
                    require idx < 1
                    require idx < 1
                    if mem[(32 * idx) + ceil32(arg5.length) + 224] + totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]] < totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]]:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < 1
                    mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                    mem[32] = 8
                    totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]] += mem[(32 * idx) + ceil32(arg5.length) + 224]
                if not arg2:
                    require idx < 1
                    require idx < 1
                    if mem[(32 * idx) + ceil32(arg5.length) + 224] > totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require idx < 1
                    mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                    mem[32] = 8
                    totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]] -= mem[(32 * idx) + ceil32(arg5.length) + 224]
                idx = idx + 1
                continue 
            mem[ceil32(arg5.length) + 288 len 42] = 0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
            if arg4 > balanceOf[arg3][address(arg1)]:
                mem[ceil32(arg5.length) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg5.length) + 356] = 32
                idx = 0
                while idx < 42:
                    mem[idx + ceil32(arg5.length) + 420] = mem[idx + ceil32(arg5.length) + 288]
                    idx = idx + 32
                    continue 
                mem[ceil32(arg5.length) + 452] = mem[ceil32(arg5.length) + 474 len 10]
                revert with 0, 32, 42, mem[ceil32(arg5.length) + 420 len 64]
            balanceOf[arg3][address(arg1)] -= arg4
            if arg4 + balanceOf[arg3][arg2] < balanceOf[arg3][arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[arg3][address(arg2)] = arg4 + balanceOf[arg3][arg2]
            emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
            if ext_code.size(arg2):
                idx = 0
                while idx < arg5.length:
                    mem[idx + ceil32(arg5.length) + 548] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                require ext_code.size(arg2)
                call arg2.0xf23a6e61 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=mem[ceil32(arg5.length) + 548 len arg5.length])
                if not ext_call.success:
                    revert with 0, 
                                32,
                                52,
                                0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                                Mask(96, 0, arg4)
                require return_data.size >= 32
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 32, 40, 0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
        if not stor2[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        41,
                        0x64455243313135353a2063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                        mem[ceil32(arg5.length) + 237 len 23]
        mem[ceil32(arg5.length) + 160] = arg3
        mem[ceil32(arg5.length) + 192] = 1
        mem[ceil32(arg5.length) + 224] = arg4
        if paused:
            revert with 0, 
                        32,
                        44,
                        0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                        mem[ceil32(arg5.length) + 368 len 20]
        idx = 0
        while idx < 1:
            if arg1:
                require idx < 1
                mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                mem[32] = sha3(address(arg1), 9)
                if unlockTime[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]] > block.timestamp:
                    revert with 0, 'TOKEN_LOCKED'
                if arg1:
                    require idx < 1
                    require idx < 1
                    if not arg1:
                        revert with 0, 
                                    32,
                                    43,
                                    0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                                    mem[ceil32(arg5.length) + 367 len 21]
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 1)
                    if not balanceOf[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)] - mem[(32 * idx) + ceil32(arg5.length) + 224]:
                        s = 0
                        while s < allHeldTokensLength[address(arg1)]:
                            require idx < 1
                            require s < allHeldTokensLength[address(arg1)]
                            if allHeldTokensLength[address(arg1)][s] == mem[(32 * idx) + ceil32(arg5.length) + 160]:
                                require allHeldTokensLength[address(arg1)] - 1 < allHeldTokensLength[address(arg1)]
                                require s < allHeldTokensLength[address(arg1)]
                                allHeldTokensLength[address(arg1)][s] = allHeldTokensLength[address(arg1)][allHeldTokensLength[address(arg1)]]
                                require allHeldTokensLength[address(arg1)] - 1 < allHeldTokensLength[address(arg1)]
                                allHeldTokensLength[address(arg1)][allHeldTokensLength[address(arg1)]] = 0
                            mem[0] = arg1
                            mem[32] = 10
                            s = s + 1
                            continue 
                        require idx < 1
                        mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                        mem[32] = 11
                        if var72005 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0):
                            require idx < 1
                            require var76006 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                            if address(stor[sha3(var78002) + var78001]) != arg1:
                                require idx < 1
                                mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                                mem[32] = 11
                                s = var78004
                                while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0):
                                    require idx < 1
                                    require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                    if address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) == arg1:
                                        require idx < 1
                                        require idx < 1
                                        require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                        require idx < 1
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0)
                                        require idx < 1
                                        require idx < 1
                                        require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0) = 0
                                    require idx < 1
                                    mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                                    mem[32] = 11
                                    s = s + 1
                                    continue 
                            else:
                                require idx < 1
                                require idx < 1
                                require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(stor[var84006])
                                require idx < 1
                                require var88006 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                address(stor[sha3(var90002) + var90001]) = address(var90003)
                                require idx < 1
                                require idx < 1
                                require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(stor[var94006])
                                address(stor[sha3(var96002) + var96001]) = 0
                                require idx < 1
                                mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                                mem[32] = 11
                                s = var96003
                                while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0):
                                    require idx < 1
                                    require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                    if address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) == arg1:
                                        require idx < 1
                                        require idx < 1
                                        require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                        require idx < 1
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0)
                                        require idx < 1
                                        require idx < 1
                                        require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0) = 0
                                    require idx < 1
                                    mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                                    mem[32] = 11
                                    s = s + 1
                                    continue 
            if arg2:
                require idx < 1
                if not arg2:
                    revert with 0, 
                                32,
                                43,
                                0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                                mem[ceil32(arg5.length) + 367 len 21]
                mem[0] = arg2
                mem[32] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 1)
                if not balanceOf[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg2)]:
                    require idx < 1
                    allHeldTokensLength[address(arg2)]++
                    allHeldTokensLength[address(arg2)][allHeldTokensLength[address(arg2)]] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                    require idx < 1
                    mem[32] = 11
                    uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)++
                    mem[0] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 11)
                    address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0) = arg2
            if not arg1:
                require idx < 1
                require idx < 1
                if mem[(32 * idx) + ceil32(arg5.length) + 224] + totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]] < totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < 1
                mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                mem[32] = 8
                totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]] += mem[(32 * idx) + ceil32(arg5.length) + 224]
            if not arg2:
                require idx < 1
                require idx < 1
                if mem[(32 * idx) + ceil32(arg5.length) + 224] > totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require idx < 1
                mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                mem[32] = 8
                totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]] -= mem[(32 * idx) + ceil32(arg5.length) + 224]
            idx = idx + 1
            continue 
    if arg4 > balanceOf[arg3][address(arg1)]:
        revert with 0, 
                    32,
                    42,
                    0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                    mem[ceil32(arg5.length) + 330 len 22],
                    mem[ceil32(arg5.length) + 374 len 10]
    balanceOf[arg3][address(arg1)] -= arg4
    if arg4 + balanceOf[arg3][arg2] < balanceOf[arg3][arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[arg3][address(arg2)] = arg4 + balanceOf[arg3][arg2]
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        if not ext_call.success:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        Mask(96, 0, arg4)
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 32, 40, 0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len arg5.length] = arg5[all]
    mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 192] = 0
    if arg3.length != arg4.length:
        revert with 0, 
                    32,
                    40,
                    0x68455243313135353a2069647320616e6420616d6f756e7473206c656e677468206d69736d617463,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 300 len 24]
    if not arg2:
        revert with 0, 
                    32,
                    37,
                    0x64455243313135353a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 297 len 27]
    if arg1 == msg.sender:
        if paused:
            revert with 0, 
                        32,
                        44,
                        0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 304 len 20]
        idx = 0
        while idx < arg3.length:
            if arg1:
                require idx < arg3.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = sha3(address(arg1), 9)
                if unlockTime[address(arg1)][mem[(32 * idx) + 128]] > block.timestamp:
                    revert with 0, 'TOKEN_LOCKED'
                if arg1:
                    require idx < arg4.length
                    require idx < arg3.length
                    if not arg1:
                        revert with 0, 
                                    32,
                                    43,
                                    0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 303 len 21]
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 1)
                    if not balanceOf[mem[(32 * idx) + 128]][address(arg1)] - mem[(32 * idx) + (32 * arg3.length) + 160]:
                        s = 0
                        while s < allHeldTokensLength[address(arg1)]:
                            require idx < arg3.length
                            require s < allHeldTokensLength[address(arg1)]
                            if allHeldTokensLength[address(arg1)][s] == mem[(32 * idx) + 128]:
                                require allHeldTokensLength[address(arg1)] - 1 < allHeldTokensLength[address(arg1)]
                                require s < allHeldTokensLength[address(arg1)]
                                allHeldTokensLength[address(arg1)][s] = allHeldTokensLength[address(arg1)][allHeldTokensLength[address(arg1)]]
                                require allHeldTokensLength[address(arg1)] - 1 < allHeldTokensLength[address(arg1)]
                                allHeldTokensLength[address(arg1)][allHeldTokensLength[address(arg1)]] = 0
                            mem[0] = arg1
                            mem[32] = 10
                            s = s + 1
                            continue 
                        require idx < arg3.length
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 11
                        if var64005 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                            require idx < arg3.length
                            require var68006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                            if address(stor[sha3(var70002) + var70001]) != arg1:
                                require idx < arg3.length
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 11
                                s = var70004
                                while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                    require idx < arg3.length
                                    require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    if address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) == arg1:
                                        require idx < arg3.length
                                        require idx < arg3.length
                                        require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        require idx < arg3.length
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0)
                                        require idx < arg3.length
                                        require idx < arg3.length
                                        require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0) = 0
                                    require idx < arg3.length
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 11
                                    s = s + 1
                                    continue 
                            else:
                                require idx < arg3.length
                                require idx < arg3.length
                                require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(stor[var76006])
                                require idx < arg3.length
                                require var80006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                address(stor[sha3(var82002) + var82001]) = address(var82003)
                                require idx < arg3.length
                                require idx < arg3.length
                                require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(stor[var86006])
                                address(stor[sha3(var88002) + var88001]) = 0
                                require idx < arg3.length
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 11
                                s = var88003
                                while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                    require idx < arg3.length
                                    require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    if address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) == arg1:
                                        require idx < arg3.length
                                        require idx < arg3.length
                                        require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        require idx < arg3.length
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0)
                                        require idx < arg3.length
                                        require idx < arg3.length
                                        require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0) = 0
                                    require idx < arg3.length
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 11
                                    s = s + 1
                                    continue 
            if arg2:
                require idx < arg3.length
                if not arg2:
                    revert with 0, 
                                32,
                                43,
                                0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                                mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 303 len 21]
                mem[0] = arg2
                mem[32] = sha3(mem[(32 * idx) + 128], 1)
                if not balanceOf[mem[(32 * idx) + 128]][address(arg2)]:
                    require idx < arg3.length
                    allHeldTokensLength[address(arg2)]++
                    allHeldTokensLength[address(arg2)][allHeldTokensLength[address(arg2)]] = mem[(32 * idx) + 128]
                    require idx < arg3.length
                    mem[32] = 11
                    uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)++
                    mem[0] = sha3(mem[(32 * idx) + 128], 11)
                    address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0) = arg2
            if not arg1:
                require idx < arg4.length
                require idx < arg3.length
                if mem[(32 * idx) + (32 * arg3.length) + 160] + totalBalances[mem[(32 * idx) + 128]] < totalBalances[mem[(32 * idx) + 128]]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < arg3.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 8
                totalBalances[mem[(32 * idx) + 128]] += mem[(32 * idx) + (32 * arg3.length) + 160]
            if not arg2:
                require idx < arg4.length
                require idx < arg3.length
                if mem[(32 * idx) + (32 * arg3.length) + 160] > totalBalances[mem[(32 * idx) + 128]]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require idx < arg3.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 8
                totalBalances[mem[(32 * idx) + 128]] -= mem[(32 * idx) + (32 * arg3.length) + 160]
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg3.length:
            require idx < mem[96]
            _3479 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            _3491 = mem[(32 * idx) + (32 * arg3.length) + 160]
            _3492 = mem[64]
            mem[64] = mem[64] + 96
            mem[_3492] = 42
            mem[_3492 + 32 len 42] = 0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
            mem[32] = sha3(_3479, 1)
            if _3491 <= balanceOf[_3479][address(arg1)]:
                balanceOf[_3479][address(arg1)] -= _3491
                if _3491 + balanceOf[_3479][arg2] < balanceOf[_3479][arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg2
                mem[32] = sha3(_3479, 1)
                balanceOf[_3479][address(arg2)] = _3491 + balanceOf[_3479][arg2]
                idx = idx + 1
                continue 
            _3520 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 42
            idx = 0
            while idx < 42:
                mem[idx + _3520 + 68] = mem[idx + _3492 + 32]
                idx = idx + 32
                continue 
            mem[_3520 + 100] = mem[_3520 + 122 len 10]
            revert with memory
              from mem[64]
               len _3520 + -mem[64] + 132
        _3474 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _3476 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _3474 + 96] = mem[(32 * arg3.length) + 128]
        _4865 = mem[(32 * arg3.length) + 128]
        mem[(32 * _3476) + _3474 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                           mem[mem[64] len (32 * _4865) + (32 * _3476) + _3474 + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           arg2,
        if not ext_code.size(arg2):
        mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = mem[96]
        mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 100] = (32 * mem[96]) + 192
        mem[(32 * mem[96]) + mem[64] + 196] = mem[(32 * arg3.length) + 128]
        _6419 = mem[(32 * arg3.length) + 128]
        mem[(32 * mem[96]) + mem[64] + 228 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        mem[mem[64] + 132] = (32 * _6419) + (32 * mem[96]) + 224
        mem[(32 * _6419) + (32 * mem[96]) + mem[64] + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        _7566 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        mem[(32 * _6419) + (32 * mem[96]) + mem[64] + 260 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])]
        if not _7566 % 32:
            require ext_code.size(arg2)
            call arg2.0xbc197c81 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), 160, mem[mem[64] + 100 len _7566 + (32 * _6419) + (32 * mem[96]) + 160]
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                40,
                                0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                                mem[mem[64] + 108 len 24]
            if return_data.size < 68:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            _8629 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
            if not _8629 + ext_call.return_data[0]:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            _8758 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_8629 + ext_call.return_data[0]]
            _8760 = mem[_8629 + ext_call.return_data[0]]
            if not mem[_8629 + ext_call.return_data[0]]:
                if not mem[_8629 + ext_call.return_data[0]] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_8629 + ext_call.return_data[0]] + 32]
                mem[floor32(mem[_8629 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_8629 + ext_call.return_data[0]]) + mem[64] + -(mem[_8629 + ext_call.return_data[0]] % 32) + 100 len mem[_8629 + ext_call.return_data[0]] % 32]
                revert with memory
                  from mem[64]
                   len floor32(_8760) + _8758 + -mem[64] + 100
            mem[mem[64] + 68] = mem[_8629 + ext_call.return_data[0] + 32]
            mem[mem[64] + 100 len floor32(_8760 - 1)] = mem[_8629 + ext_call.return_data[0] + 64 len floor32(_8760 - 1)]
            if not _8760 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _8760 + 32]
            mem[floor32(_8760) + mem[64] + 68] = mem[floor32(_8760) + mem[64] + -(_8760 % 32) + 100 len _8760 % 32]
            revert with 0, 32, mem[mem[64] + 36 len floor32(_8760) + 64]
        mem[floor32(_7566) + (32 * _6419) + (32 * mem[96]) + mem[64] + 260] = mem[floor32(_7566) + (32 * _6419) + (32 * mem[96]) + mem[64] + -(_7566 % 32) + 292 len _7566 % 32]
        require ext_code.size(arg2)
        call arg2.0xbc197c81 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100 len floor32(_7566) + (32 * _6419) + (32 * mem[96]) + 192]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            40,
                            0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                            mem[mem[64] + 108 len 24]
        if return_data.size < 68:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _8662 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
        if not _8662 + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _8799 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_8662 + ext_call.return_data[0]]
        _8801 = mem[_8662 + ext_call.return_data[0]]
        if not mem[_8662 + ext_call.return_data[0]]:
            if not mem[_8662 + ext_call.return_data[0]] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_8662 + ext_call.return_data[0]] + 32]
            mem[floor32(mem[_8662 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_8662 + ext_call.return_data[0]]) + mem[64] + -(mem[_8662 + ext_call.return_data[0]] % 32) + 100 len mem[_8662 + ext_call.return_data[0]] % 32]
            revert with memory
              from mem[64]
               len floor32(_8801) + _8799 + -mem[64] + 100
        mem[mem[64] + 68] = mem[_8662 + ext_call.return_data[0] + 32]
        mem[mem[64] + 100 len floor32(_8801 - 1)] = mem[_8662 + ext_call.return_data[0] + 64 len floor32(_8801 - 1)]
        if not _8801 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _8801 + 32]
        mem[floor32(_8801) + mem[64] + 68] = mem[floor32(_8801) + mem[64] + -(_8801 % 32) + 100 len _8801 % 32]
        revert with 0, 32, mem[mem[64] + 36 len floor32(_8801) + 64]
    idx = 0
    while idx < allProxyRegistries.length:
        mem[0] = 6
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 196] = arg1
        require ext_code.size(allProxyRegistries[idx])
        staticcall allProxyRegistries[idx].proxies(address rg1) with:
                gas gas_remaining wei
               args arg1
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != msg.sender:
            idx = idx + 1
            continue 
        if paused:
            revert with 0, 
                        32,
                        44,
                        0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 304 len 20]
        idx = 0
        while idx < arg3.length:
            if arg1:
                require idx < arg3.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = sha3(address(arg1), 9)
                if unlockTime[address(arg1)][mem[(32 * idx) + 128]] > block.timestamp:
                    revert with 0, 'TOKEN_LOCKED'
                if arg1:
                    require idx < arg4.length
                    require idx < arg3.length
                    if not arg1:
                        revert with 0, 
                                    32,
                                    43,
                                    0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 303 len 21]
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 1)
                    if not balanceOf[mem[(32 * idx) + 128]][address(arg1)] - mem[(32 * idx) + (32 * arg3.length) + 160]:
                        s = 0
                        while s < allHeldTokensLength[address(arg1)]:
                            require idx < arg3.length
                            require s < allHeldTokensLength[address(arg1)]
                            if allHeldTokensLength[address(arg1)][s] == mem[(32 * idx) + 128]:
                                require allHeldTokensLength[address(arg1)] - 1 < allHeldTokensLength[address(arg1)]
                                require s < allHeldTokensLength[address(arg1)]
                                allHeldTokensLength[address(arg1)][s] = allHeldTokensLength[address(arg1)][allHeldTokensLength[address(arg1)]]
                                require allHeldTokensLength[address(arg1)] - 1 < allHeldTokensLength[address(arg1)]
                                allHeldTokensLength[address(arg1)][allHeldTokensLength[address(arg1)]] = 0
                            mem[0] = arg1
                            mem[32] = 10
                            s = s + 1
                            continue 
                        require idx < arg3.length
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 11
                        if var77005 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                            require idx < arg3.length
                            require var81006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                            if address(stor[sha3(var83002) + var83001]) != arg1:
                                require idx < arg3.length
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 11
                                s = var83004
                                while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                    require idx < arg3.length
                                    require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    if address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) == arg1:
                                        require idx < arg3.length
                                        require idx < arg3.length
                                        require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        require idx < arg3.length
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0)
                                        require idx < arg3.length
                                        require idx < arg3.length
                                        require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0) = 0
                                    require idx < arg3.length
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 11
                                    s = s + 1
                                    continue 
                            else:
                                require idx < arg3.length
                                require idx < arg3.length
                                require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(stor[var89006])
                                require idx < arg3.length
                                require var93006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                address(stor[sha3(var95002) + var95001]) = address(var95003)
                                require idx < arg3.length
                                require idx < arg3.length
                                require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(stor[var99006])
                                address(stor[sha3(var101002) + var101001]) = 0
                                require idx < arg3.length
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 11
                                s = var101003
                                while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                    require idx < arg3.length
                                    require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    if address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) == arg1:
                                        require idx < arg3.length
                                        require idx < arg3.length
                                        require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        require idx < arg3.length
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0)
                                        require idx < arg3.length
                                        require idx < arg3.length
                                        require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0) = 0
                                    require idx < arg3.length
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 11
                                    s = s + 1
                                    continue 
            if arg2:
                require idx < arg3.length
                if not arg2:
                    revert with 0, 
                                32,
                                43,
                                0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                                mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 303 len 21]
                mem[0] = arg2
                mem[32] = sha3(mem[(32 * idx) + 128], 1)
                if not balanceOf[mem[(32 * idx) + 128]][address(arg2)]:
                    require idx < arg3.length
                    allHeldTokensLength[address(arg2)]++
                    allHeldTokensLength[address(arg2)][allHeldTokensLength[address(arg2)]] = mem[(32 * idx) + 128]
                    require idx < arg3.length
                    mem[32] = 11
                    uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)++
                    mem[0] = sha3(mem[(32 * idx) + 128], 11)
                    address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0) = arg2
            if not arg1:
                require idx < arg4.length
                require idx < arg3.length
                if mem[(32 * idx) + (32 * arg3.length) + 160] + totalBalances[mem[(32 * idx) + 128]] < totalBalances[mem[(32 * idx) + 128]]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < arg3.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 8
                totalBalances[mem[(32 * idx) + 128]] += mem[(32 * idx) + (32 * arg3.length) + 160]
            if not arg2:
                require idx < arg4.length
                require idx < arg3.length
                if mem[(32 * idx) + (32 * arg3.length) + 160] > totalBalances[mem[(32 * idx) + 128]]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require idx < arg3.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 8
                totalBalances[mem[(32 * idx) + 128]] -= mem[(32 * idx) + (32 * arg3.length) + 160]
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg3.length:
            require idx < mem[96]
            _4888 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            _4911 = mem[(32 * idx) + (32 * arg3.length) + 160]
            _4912 = mem[64]
            mem[64] = mem[64] + 96
            mem[_4912] = 42
            mem[_4912 + 32 len 42] = 0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
            mem[32] = sha3(_4888, 1)
            if _4911 <= balanceOf[_4888][address(arg1)]:
                balanceOf[_4888][address(arg1)] -= _4911
                if _4911 + balanceOf[_4888][arg2] < balanceOf[_4888][arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg2
                mem[32] = sha3(_4888, 1)
                balanceOf[_4888][address(arg2)] = _4911 + balanceOf[_4888][arg2]
                idx = idx + 1
                continue 
            _4937 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 42
            idx = 0
            while idx < 42:
                mem[idx + _4937 + 68] = mem[idx + _4912 + 32]
                idx = idx + 32
                continue 
            mem[_4937 + 100] = mem[_4937 + 122 len 10]
            revert with memory
              from mem[64]
               len _4937 + -mem[64] + 132
        _4875 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _4877 = mem[96]
        idx = 0
        while idx < 32 * _4877:
            mem[idx + mem[64] + 96] = mem[idx + 128]
            idx = idx + 32
            continue 
        mem[_4875 + 32] = (32 * _4877) + 96
        mem[(32 * _4877) + _4875 + 96] = mem[(32 * arg3.length) + 128]
        _5578 = mem[(32 * arg3.length) + 128]
        idx = 0
        while idx < 32 * _5578:
            mem[idx + (32 * _4877) + _4875 + 128] = mem[idx + (32 * arg3.length) + 160]
            idx = idx + 32
            continue 
        emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                           mem[mem[64] len (32 * _5578) + (32 * _4877) + _4875 + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           arg2,
        if not ext_code.size(arg2):
        _6463 = mem[64]
        mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = mem[96]
        _6465 = mem[96]
        idx = 0
        while idx < 32 * mem[96]:
            mem[idx + mem[64] + 196] = mem[idx + 128]
            idx = idx + 32
            continue 
        mem[_6463 + 100] = (32 * mem[96]) + 192
        mem[(32 * _6465) + _6463 + 196] = mem[(32 * arg3.length) + 128]
        _7575 = mem[(32 * arg3.length) + 128]
        idx = 0
        while idx < 32 * _7575:
            mem[idx + (32 * _6465) + _6463 + 228] = mem[idx + (32 * arg3.length) + 160]
            idx = idx + 32
            continue 
        mem[_6463 + 132] = (32 * _7575) + (32 * _6465) + 224
        mem[(32 * _7575) + (32 * _6465) + _6463 + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        _8503 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        idx = 0
        while idx < _8503:
            mem[idx + (32 * _7575) + (32 * _6465) + _6463 + 260] = mem[idx + (32 * arg3.length) + (32 * arg4.length) + 192]
            idx = idx + 32
            continue 
        if not _8503 % 32:
            require ext_code.size(arg2)
            call arg2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _8503 + (32 * _7575) + (32 * _6465) + _6463 + -mem[64] + 256]
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                40,
                                0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                                mem[mem[64] + 108 len 24]
            if return_data.size < 68:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            _9616 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
            if not _9616 + ext_call.return_data[0]:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_9616 + ext_call.return_data[0]]
            _9770 = mem[_9616 + ext_call.return_data[0]]
            if not mem[_9616 + ext_call.return_data[0]]:
                if not mem[_9616 + ext_call.return_data[0]] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_9616 + ext_call.return_data[0]] + 32]
                mem[floor32(mem[_9616 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_9616 + ext_call.return_data[0]]) + mem[64] + -(mem[_9616 + ext_call.return_data[0]] % 32) + 100 len mem[_9616 + ext_call.return_data[0]] % 32]
            else:
                mem[mem[64] + 68] = mem[_9616 + ext_call.return_data[0] + 32]
                idx = 32
                while idx < _9770:
                    mem[idx + mem[64] + 68] = mem[idx + _9616 + ext_call.return_data[0] + 32]
                    idx = idx + 32
                    continue 
                if not _9770 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _9770 + 32]
                mem[floor32(_9770) + mem[64] + 68] = mem[floor32(_9770) + mem[64] + -(_9770 % 32) + 100 len _9770 % 32]
            revert with 0, 32, mem[mem[64] + 36 len floor32(_9770) + 64]
        mem[floor32(_8503) + (32 * _7575) + (32 * _6465) + _6463 + 260] = mem[floor32(_8503) + (32 * _7575) + (32 * _6465) + _6463 + -(_8503 % 32) + 292 len _8503 % 32]
        require ext_code.size(arg2)
        call arg2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len floor32(_8503) + (32 * _7575) + (32 * _6465) + _6463 + -mem[64] + 288]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            40,
                            0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                            mem[mem[64] + 108 len 24]
        if return_data.size < 68:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _9643 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
        if not _9643 + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_9643 + ext_call.return_data[0]]
        _9815 = mem[_9643 + ext_call.return_data[0]]
        if not mem[_9643 + ext_call.return_data[0]]:
            if not mem[_9643 + ext_call.return_data[0]] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_9643 + ext_call.return_data[0]] + 32]
            mem[floor32(mem[_9643 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_9643 + ext_call.return_data[0]]) + mem[64] + -(mem[_9643 + ext_call.return_data[0]] % 32) + 100 len mem[_9643 + ext_call.return_data[0]] % 32]
        else:
            mem[mem[64] + 68] = mem[_9643 + ext_call.return_data[0] + 32]
            idx = 32
            while idx < _9815:
                mem[idx + mem[64] + 68] = mem[idx + _9643 + ext_call.return_data[0] + 32]
                idx = idx + 32
                continue 
            if not _9815 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _9815 + 32]
            mem[floor32(_9815) + mem[64] + 68] = mem[floor32(_9815) + mem[64] + -(_9815 % 32) + 100 len _9815 % 32]
        revert with 0, 32, mem[mem[64] + 36 len floor32(_9815) + 64]
    mem[0] = msg.sender
    mem[32] = sha3(address(arg1), 2)
    if not stor2[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    50,
                    0x73455243313135353a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 310 len 14]
    if paused:
        revert with 0, 
                    32,
                    44,
                    0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 304 len 20]
    idx = 0
    while idx < arg3.length:
        if arg1:
            require idx < arg3.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(address(arg1), 9)
            if unlockTime[address(arg1)][mem[(32 * idx) + 128]] > block.timestamp:
                revert with 0, 'TOKEN_LOCKED'
            if arg1:
                require idx < arg4.length
                require idx < arg3.length
                if not arg1:
                    revert with 0, 
                                32,
                                43,
                                0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                                mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 303 len 21]
                mem[0] = arg1
                mem[32] = sha3(mem[(32 * idx) + 128], 1)
                if not balanceOf[mem[(32 * idx) + 128]][address(arg1)] - mem[(32 * idx) + (32 * arg3.length) + 160]:
                    s = 0
                    while s < allHeldTokensLength[address(arg1)]:
                        require idx < arg3.length
                        require s < allHeldTokensLength[address(arg1)]
                        if allHeldTokensLength[address(arg1)][s] == mem[(32 * idx) + 128]:
                            require allHeldTokensLength[address(arg1)] - 1 < allHeldTokensLength[address(arg1)]
                            require s < allHeldTokensLength[address(arg1)]
                            allHeldTokensLength[address(arg1)][s] = allHeldTokensLength[address(arg1)][allHeldTokensLength[address(arg1)]]
                            require allHeldTokensLength[address(arg1)] - 1 < allHeldTokensLength[address(arg1)]
                            allHeldTokensLength[address(arg1)][allHeldTokensLength[address(arg1)]] = 0
                        mem[0] = arg1
                        mem[32] = 10
                        s = s + 1
                        continue 
                    require idx < arg3.length
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 11
                    if var73005 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                        require idx < arg3.length
                        require var77006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                        if address(stor[sha3(var79002) + var79001]) != arg1:
                            require idx < arg3.length
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 11
                            s = var79004
                            while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                require idx < arg3.length
                                require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                if address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) == arg1:
                                    require idx < arg3.length
                                    require idx < arg3.length
                                    require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    require idx < arg3.length
                                    require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0)
                                    require idx < arg3.length
                                    require idx < arg3.length
                                    require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0) = 0
                                require idx < arg3.length
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 11
                                s = s + 1
                                continue 
                        else:
                            require idx < arg3.length
                            require idx < arg3.length
                            require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(stor[var85006])
                            require idx < arg3.length
                            require var89006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                            address(stor[sha3(var91002) + var91001]) = address(var91003)
                            require idx < arg3.length
                            require idx < arg3.length
                            require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(stor[var95006])
                            address(stor[sha3(var97002) + var97001]) = 0
                            require idx < arg3.length
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 11
                            s = var97003
                            while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                require idx < arg3.length
                                require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                if address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) == arg1:
                                    require idx < arg3.length
                                    require idx < arg3.length
                                    require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    require idx < arg3.length
                                    require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0)
                                    require idx < arg3.length
                                    require idx < arg3.length
                                    require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0) = 0
                                require idx < arg3.length
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 11
                                s = s + 1
                                continue 
        if arg2:
            require idx < arg3.length
            if not arg2:
                revert with 0, 
                            32,
                            43,
                            0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 303 len 21]
            mem[0] = arg2
            mem[32] = sha3(mem[(32 * idx) + 128], 1)
            if not balanceOf[mem[(32 * idx) + 128]][address(arg2)]:
                require idx < arg3.length
                allHeldTokensLength[address(arg2)]++
                allHeldTokensLength[address(arg2)][allHeldTokensLength[address(arg2)]] = mem[(32 * idx) + 128]
                require idx < arg3.length
                mem[32] = 11
                uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)++
                mem[0] = sha3(mem[(32 * idx) + 128], 11)
                address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0) = arg2
        if not arg1:
            require idx < arg4.length
            require idx < arg3.length
            if mem[(32 * idx) + (32 * arg3.length) + 160] + totalBalances[mem[(32 * idx) + 128]] < totalBalances[mem[(32 * idx) + 128]]:
                revert with 0, 'SafeMath: addition overflow'
            require idx < arg3.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 8
            totalBalances[mem[(32 * idx) + 128]] += mem[(32 * idx) + (32 * arg3.length) + 160]
        if not arg2:
            require idx < arg4.length
            require idx < arg3.length
            if mem[(32 * idx) + (32 * arg3.length) + 160] > totalBalances[mem[(32 * idx) + 128]]:
                revert with 0, 'SafeMath: subtraction overflow'
            require idx < arg3.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 8
            totalBalances[mem[(32 * idx) + 128]] -= mem[(32 * idx) + (32 * arg3.length) + 160]
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg3.length:
        require idx < mem[96]
        _4883 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg3.length) + 128]
        _4901 = mem[(32 * idx) + (32 * arg3.length) + 160]
        _4902 = mem[64]
        mem[64] = mem[64] + 96
        mem[_4902] = 42
        mem[_4902 + 32 len 42] = 0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
        mem[32] = sha3(_4883, 1)
        if _4901 <= balanceOf[_4883][address(arg1)]:
            balanceOf[_4883][address(arg1)] -= _4901
            if _4901 + balanceOf[_4883][arg2] < balanceOf[_4883][arg2]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = arg2
            mem[32] = sha3(_4883, 1)
            balanceOf[_4883][address(arg2)] = _4901 + balanceOf[_4883][arg2]
            idx = idx + 1
            continue 
        _4928 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 42
        idx = 0
        while idx < 42:
            mem[idx + _4928 + 68] = mem[idx + _4902 + 32]
            idx = idx + 32
            continue 
        mem[_4928 + 100] = mem[_4928 + 122 len 10]
        revert with memory
          from mem[64]
           len _4928 + -mem[64] + 132
    _4870 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[96]
    _4872 = mem[96]
    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    mem[(32 * mem[96]) + _4870 + 96] = mem[(32 * arg3.length) + 128]
    _5572 = mem[(32 * arg3.length) + 128]
    mem[(32 * _4872) + _4870 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                       mem[mem[64] len (32 * _5572) + (32 * _4872) + _4870 + -mem[64] + 128],
                       msg.sender,
                       arg1,
                       arg2,
    if not ext_code.size(arg2):
    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg1
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = mem[96]
    mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 100] = (32 * mem[96]) + 192
    mem[(32 * mem[96]) + mem[64] + 196] = mem[(32 * arg3.length) + 128]
    _7570 = mem[(32 * arg3.length) + 128]
    mem[(32 * mem[96]) + mem[64] + 228 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    mem[mem[64] + 132] = (32 * _7570) + (32 * mem[96]) + 224
    mem[(32 * _7570) + (32 * mem[96]) + mem[64] + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    _8499 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    mem[(32 * _7570) + (32 * mem[96]) + mem[64] + 260 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])]
    if not _8499 % 32:
        require ext_code.size(arg2)
        call arg2.0xbc197c81 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100 len _8499 + (32 * _7570) + (32 * mem[96]) + 160]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            40,
                            0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                            mem[mem[64] + 108 len 24]
        if return_data.size < 68:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _9608 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
        if not _9608 + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_9608 + ext_call.return_data[0]]
        _9752 = mem[_9608 + ext_call.return_data[0]]
        if not mem[_9608 + ext_call.return_data[0]]:
            if not mem[_9608 + ext_call.return_data[0]] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_9608 + ext_call.return_data[0]] + 32]
            mem[floor32(mem[_9608 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_9608 + ext_call.return_data[0]]) + mem[64] + -(mem[_9608 + ext_call.return_data[0]] % 32) + 100 len mem[_9608 + ext_call.return_data[0]] % 32]
            revert with 0, 32, mem[mem[64] + 36], 160, mem[mem[64] + 100 len floor32(_9752)]
        mem[mem[64] + 68] = mem[_9608 + ext_call.return_data[0] + 32]
        mem[mem[64] + 100 len floor32(_9752 - 1)] = mem[_9608 + ext_call.return_data[0] + 64 len floor32(_9752 - 1)]
        if not _9752 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _9752 + 32]
        mem[floor32(_9752) + mem[64] + 68] = mem[floor32(_9752) + mem[64] + -(_9752 % 32) + 100 len _9752 % 32]
        revert with 0, 32, mem[mem[64] + 36 len floor32(_9752) + 64]
    mem[floor32(_8499) + (32 * _7570) + (32 * mem[96]) + mem[64] + 260] = mem[floor32(_8499) + (32 * _7570) + (32 * mem[96]) + mem[64] + -(_8499 % 32) + 292 len _8499 % 32]
    require ext_code.size(arg2)
    call arg2.0xbc197c81 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), 160, mem[mem[64] + 100 len floor32(_8499) + (32 * _7570) + (32 * mem[96]) + 192]
    mem[mem[64]] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 
                        32,
                        40,
                        0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                        mem[mem[64] + 108 len 24]
    if return_data.size < 68:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    _9633 = mem[64]
    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    if mem[mem[64] + ext_call.return_data[0]] > test266151307():
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
    if not _9633 + ext_call.return_data[0]:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[_9633 + ext_call.return_data[0]]
    _9799 = mem[_9633 + ext_call.return_data[0]]
    if not mem[_9633 + ext_call.return_data[0]]:
        if not mem[_9633 + ext_call.return_data[0]] % 32:
            revert with 0, 32, mem[mem[64] + 36 len mem[_9633 + ext_call.return_data[0]] + 32]
        mem[floor32(mem[_9633 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_9633 + ext_call.return_data[0]]) + mem[64] + -(mem[_9633 + ext_call.return_data[0]] % 32) + 100 len mem[_9633 + ext_call.return_data[0]] % 32]
        revert with 0, 32, mem[mem[64] + 36], 160, mem[mem[64] + 100 len floor32(_9799)]
    mem[mem[64] + 68] = mem[_9633 + ext_call.return_data[0] + 32]
    mem[mem[64] + 100 len floor32(_9799 - 1)] = mem[_9633 + ext_call.return_data[0] + 64 len floor32(_9799 - 1)]
    if not _9799 % 32:
        revert with 0, 32, mem[mem[64] + 36 len _9799 + 32]
    mem[floor32(_9799) + mem[64] + 68] = mem[floor32(_9799) + mem[64] + -(_9799 % 32) + 100 len _9799 % 32]
    revert with 0, 32, mem[mem[64] + 36 len floor32(_9799) + 64]
}



}
