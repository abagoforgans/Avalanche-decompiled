contract main {




// =====================  Runtime code  =====================


uint256 activeProfileCount;
uint64 userCount;
uint256 registerFee;
uint256 updateFee;
uint256 pauseFee;
uint256 reactivateFee;
address stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
mapping of struct stor10;

function registerFee() {
    return registerFee
}

function userCount() {
    return userCount
}

function reactivateFee() {
    return reactivateFee
}

function activeProfileCount() {
    return activeProfileCount
}

function updateFee() {
    return updateFee
}

function hasRegistered(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[arg1])
}

function pauseFee() {
    return pauseFee
}

function getUserStatus(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor10[address(arg1)].field_768)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6 != msg.sender:
        revert with 0, 'not owner'
    stor6 = arg1
}

function withdraw() {
    if stor6 != msg.sender:
        revert with 0, 'not owner'
    call stor6 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'failed to send avax'
}

function updateFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if stor6 != msg.sender:
        revert with 0, 'not owner'
    registerFee = arg1
    updateFee = arg2
    pauseFee = arg3
    reactivateFee = arg4
}

function updateNftAddressState(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6 != msg.sender:
        revert with 0, 'not owner'
    uint256(stor7[address(arg1)]) = not uint8(stor7[address(arg1)]) or Mask(248, 8, uint256(stor7[address(arg1)]))
}

function updateApprovedContractState(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6 != msg.sender:
        revert with 0, 'not owner'
    uint256(stor8[address(arg1)]) = not uint8(stor8[address(arg1)]) or Mask(248, 8, uint256(stor8[address(arg1)]))
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function pauseProfile() payable {
    if not stor9[msg.sender]:
        revert with 0, 'not registered'
    if msg.value < pauseFee:
        revert with 0, 'not enough avax sent'
    if not stor10[msg.sender].field_768:
        revert with 0, 'user not active'
    stor10[msg.sender].field_768 = 0
    if not activeProfileCount:
        revert with 0, 17
    activeProfileCount--
    stor10[msg.sender].field_256 = 0
    require ext_code.size(stor10[msg.sender].field_256)
    call stor10[msg.sender].field_256.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), msg.sender, stor10[msg.sender].field_192
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit UserPause(msg.sender);
}

function updateUserPoints(address arg1, uint64 arg2, uint64 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not uint8(stor8[msg.sender]):
        if stor6 != msg.sender:
            revert with 0, 'not approved'
    if arg4:
        if stor10[address(arg1)].field_64 < arg2:
            revert with 0, 17
        stor10[address(arg1)].field_64 = uint64(stor10[address(arg1)].field_64 - arg2)
        emit 0xdf191625: arg2, arg1, arg3
    else:
        if stor10[address(arg1)].field_64 > -arg2 + test266151307():
            revert with 0, 17
        stor10[address(arg1)].field_64 = uint64(arg2 + stor10[address(arg1)].field_64)
        emit UserPointIncrease(arg2, arg1, arg3);
}

function reactivateProfile(address arg1, uint64 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor9[msg.sender]:
        revert with 0, 'not registered'
    if not uint8(stor7[address(arg1)]):
        revert with 0, 'NFT address invalid'
    if msg.value < reactivateFee:
        revert with 0, 'not enough avax sent'
    if stor10[msg.sender].field_768:
        revert with 0, 'user active'
    require ext_code.size(arg1)
    staticcall arg1.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'only NFT owner can update'
    require ext_code.size(arg1)
    call arg1.0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor10[msg.sender].field_768 = 1
    stor10[msg.sender].field_128 = uint64(block.timestamp)
    stor10[msg.sender].field_192 = arg2
    stor10[msg.sender].field_256 = arg1
    if activeProfileCount == -1:
        revert with 0, 17
    activeProfileCount++
    emit UserReactivate(address(arg1), arg2, msg.sender);
}

function updateProfile(address arg1, uint64 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor9[msg.sender]:
        revert with 0, 'not registered'
    if not uint8(stor7[address(arg1)]):
        revert with 0, 'NFT address invalid'
    if msg.value < updateFee:
        revert with 0, 'not enough avax sent'
    if not stor10[msg.sender].field_768:
        revert with 0, 'user not active'
    require ext_code.size(arg1)
    staticcall arg1.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'only NFT owner can update'
    require ext_code.size(arg1)
    call arg1.0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor10[msg.sender].field_256)
    call stor10[msg.sender].field_256.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), msg.sender, stor10[msg.sender].field_192
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor10[msg.sender].field_256 = arg1
    stor10[msg.sender].field_192 = arg2
    emit UserUpdate(address(arg1), arg2, msg.sender);
}

function updateUserPointsMultiple(address[] arg1, uint64 arg2, uint64 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    require arg3 == arg3
    if not uint8(stor8[msg.sender]):
        if stor6 != msg.sender:
            revert with 0, 'not approved'
    if arg1.length >= 1001:
        revert with 0, 'length must be < 1001'
    if arg4:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 10
            if stor10[address(cd[((32 * idx) + arg1 + 36)])].field_64 < arg2:
                revert with 0, 17
            stor10[address(cd[((32 * idx) + arg1 + 36)])].field_64 = uint64(stor10[address(cd[((32 * idx) + arg1 + 36)])].field_64 - arg2)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        s = 192
        t = arg1 + 36
        while idx < arg1.length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x41a9a4c3: Array(len=arg1.length, data=mem[192 len 32 * arg1.length]), arg2, arg3
    else:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 10
            if stor10[address(cd[((32 * idx) + arg1 + 36)])].field_64 > -arg2 + test266151307():
                revert with 0, 17
            stor10[address(cd[((32 * idx) + arg1 + 36)])].field_64 = uint64(arg2 + stor10[address(cd[((32 * idx) + arg1 + 36)])].field_64)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        s = 192
        t = arg1 + 36
        while idx < arg1.length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit UserPointIncreaseMultiple(Array(len=arg1.length, data=mem[192 len 32 * arg1.length]), arg2, arg3);
}

function updateUsername(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if stor6 != msg.sender:
        revert with 0, 'not owner'
    if stor10[address(arg1)].field_64 > 368934881474191032:
        revert with 0, 17
    if stor10[address(arg1)].field_64 < uint64(uint64(50 * stor10[address(arg1)].field_64) / 100):
        revert with 0, 17
    stor10[address(arg1)].field_64 = uint64(stor10[address(arg1)].field_64 - uint64(uint64(50 * stor10[address(arg1)].field_64) / 100))
    if stor10[address(arg1)].field_512:
        if stor10[address(arg1)].field_512 == uint255(stor10[address(arg1)].field_512) * 0.5 < 32:
            revert with 0, 34
        if not arg2.length:
            stor10[address(arg1)].field_512 = 0
            idx = 0
            while (uint255(stor10[address(arg1)].field_512) * 0.5) + 31 / 32 > idx:
                stor10[address(arg1)][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor10[address(arg1)].field_512 = (2 * arg2.length) + 1
            s = 0
            idx = arg2 + 36
            while arg2 + arg2.length + 36 > idx:
                stor10[address(arg1)][s + 2].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg2.length + 31) >> 5
            while (uint255(stor10[address(arg1)].field_512) * 0.5) + 31 / 32 > idx:
                stor10[address(arg1)][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor10[address(arg1)].field_512 == stor10[address(arg1)].field_513 < 32:
            revert with 0, 34
        if not arg2.length:
            stor10[address(arg1)].field_512 = 0
            idx = 0
            while stor10[address(arg1)].field_513 + 31 / 32 > idx:
                stor10[address(arg1)][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor10[address(arg1)].field_512 = (2 * arg2.length) + 1
            s = 0
            idx = arg2 + 36
            while arg2 + arg2.length + 36 > idx:
                stor10[address(arg1)][s + 2].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg2.length + 31) >> 5
            while stor10[address(arg1)].field_513 + 31 / 32 > idx:
                stor10[address(arg1)][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
}

function createProfile(address arg1, uint64 arg2, string arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if stor9[msg.sender]:
        revert with 0, 'already registered'
    if not uint8(stor7[address(arg1)]):
        revert with 0, 'NFT address invalid'
    if msg.value < registerFee:
        revert with 0, 'not enough avax sent'
    require ext_code.size(arg1)
    staticcall arg1.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'only NFT owner can register'
    require ext_code.size(arg1)
    call arg1.0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor10[msg.sender].field_0 = userCount
    stor10[msg.sender].field_64 = 0
    stor10[msg.sender].field_128 = uint64(block.timestamp)
    stor10[msg.sender].field_192 = arg2
    stor10[msg.sender].field_256 = 0
    stor10[msg.sender].field_256 = arg1
    if stor10[msg.sender].field_512:
        if stor10[msg.sender].field_512 == uint255(stor10[msg.sender].field_512) * 0.5 < 32:
            revert with 0, 34
        if arg3.length:
            stor10[msg.sender][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor10[msg.sender].field_512 = 0
            idx = 0
            while (uint255(stor10[msg.sender].field_512) * 0.5) + 31 / 32 > idx:
                stor10[msg.sender][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor10[msg.sender].field_512 == stor10[msg.sender].field_513 < 32:
            revert with 0, 34
        if arg3.length:
            stor10[msg.sender][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor10[msg.sender].field_512 = 0
            idx = 0
            while stor10[msg.sender].field_513 + 31 / 32 > idx:
                stor10[msg.sender][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    stor10[msg.sender].field_768 = 1
    if userCount == test266151307():
        revert with 0, 17
    userCount = uint64(userCount + 1)
    if activeProfileCount == -1:
        revert with 0, 17
    activeProfileCount++
    stor9[msg.sender] = 1
    mem[ceil32(return_data.size) + ceil32(arg3.length) + 352] = arg1
    mem[ceil32(return_data.size) + ceil32(arg3.length) + 384] = arg2
    mem[ceil32(return_data.size) + ceil32(arg3.length) + 416] = 96
    mem[ceil32(return_data.size) + ceil32(arg3.length) + 448] = arg3.length
    emit 0x8156b0f7: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(return_data.size) + arg3.length + 384 len (2 * ceil32(arg3.length)) + -arg3.length + 96], msg.sender
}

function users(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor10[arg1].field_512:
        if stor10[arg1].field_512 == uint255(stor10[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if stor10[arg1].field_512:
            if stor10[arg1].field_512 == uint255(stor10[arg1].field_512) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor10[arg1].field_512):
                if 31 >= uint255(stor10[arg1].field_512) * 0.5:
                    mem[128] = 256 * stor10[arg1].field_520
                else:
                    mem[128] = stor10[arg1][2].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor10[arg1].field_512) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor10[arg1].field_512 == stor10[arg1].field_513 < 32:
                revert with 0, 34
            if stor10[arg1].field_513:
                if 31 >= stor10[arg1].field_513:
                    mem[128] = 256 * stor10[arg1].field_520
                else:
                    mem[128] = stor10[arg1][2].field_0
                    idx = 128
                    s = 0
                    while stor10[arg1].field_513 + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor10[arg1].field_0, 
               stor10[arg1].field_0,
               stor10[arg1].field_0,
               stor10[arg1].field_0,
               stor10[arg1].field_256,
               Array(len=2 * Mask(256, -1, stor10[arg1].field_512), data=mem[128 len ceil32(uint255(stor10[arg1].field_512) * 0.5)]),
               bool(stor10[arg1].field_768)
    if stor10[arg1].field_512 == stor10[arg1].field_513 < 32:
        revert with 0, 34
    if stor10[arg1].field_512:
        if stor10[arg1].field_512 == uint255(stor10[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor10[arg1].field_512):
            if 31 >= uint255(stor10[arg1].field_512) * 0.5:
                mem[128] = 256 * stor10[arg1].field_520
            else:
                mem[128] = stor10[arg1][2].field_0
                idx = 128
                s = 0
                while (uint255(stor10[arg1].field_512) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor10[arg1].field_512 == stor10[arg1].field_513 < 32:
            revert with 0, 34
        if stor10[arg1].field_513:
            if 31 >= stor10[arg1].field_513:
                mem[128] = 256 * stor10[arg1].field_520
            else:
                mem[128] = stor10[arg1][2].field_0
                idx = 128
                s = 0
                while stor10[arg1].field_513 + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor10[arg1].field_0, 
           stor10[arg1].field_0,
           stor10[arg1].field_0,
           stor10[arg1].field_0,
           stor10[arg1].field_256,
           Array(len=stor10[arg1].field_512, data=mem[128 len ceil32(stor10[arg1].field_513)]),
           bool(stor10[arg1].field_768)
}

function getUserProfile(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor9[address(arg1)]:
        revert with 0, 'not registered'
    if stor10[address(arg1)].field_512:
        if stor10[address(arg1)].field_512 == uint255(stor10[address(arg1)].field_512) * 0.5 < 32:
            revert with 0, 34
        if stor10[address(arg1)].field_512:
            if stor10[address(arg1)].field_512 == uint255(stor10[address(arg1)].field_512) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor10[address(arg1)].field_512):
                if 31 >= uint255(stor10[address(arg1)].field_512) * 0.5:
                    mem[352] = 256 * stor10[address(arg1)].field_520
                else:
                    mem[352] = stor10[address(arg1)][2].field_0
                    idx = 352
                    s = 0
                    while (uint255(stor10[address(arg1)].field_512) * 0.5) + 320 > idx:
                        mem[idx + 32] = stor10[address(arg1)][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor10[address(arg1)].field_512 == stor10[address(arg1)].field_513 < 32:
                revert with 0, 34
            if stor10[address(arg1)].field_513:
                if 31 >= stor10[address(arg1)].field_513:
                    mem[352] = 256 * stor10[address(arg1)].field_520
                else:
                    mem[352] = stor10[address(arg1)][2].field_0
                    idx = 352
                    s = 0
                    while stor10[address(arg1)].field_513 + 320 > idx:
                        mem[idx + 32] = stor10[address(arg1)][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor10[address(arg1)].field_0, 
               stor10[address(arg1)].field_0,
               stor10[address(arg1)].field_0,
               stor10[address(arg1)].field_0,
               stor10[address(arg1)].field_256,
               Array(len=2 * Mask(256, -1, stor10[address(arg1)].field_512), data=mem[352 len ceil32(uint255(stor10[address(arg1)].field_512) * 0.5)]),
               bool(stor10[address(arg1)].field_768)
    if stor10[address(arg1)].field_512 == stor10[address(arg1)].field_513 < 32:
        revert with 0, 34
    if stor10[address(arg1)].field_512:
        if stor10[address(arg1)].field_512 == uint255(stor10[address(arg1)].field_512) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor10[address(arg1)].field_512):
            if 31 >= uint255(stor10[address(arg1)].field_512) * 0.5:
                mem[352] = 256 * stor10[address(arg1)].field_520
            else:
                mem[352] = stor10[address(arg1)][2].field_0
                idx = 352
                s = 0
                while (uint255(stor10[address(arg1)].field_512) * 0.5) + 320 > idx:
                    mem[idx + 32] = stor10[address(arg1)][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor10[address(arg1)].field_512 == stor10[address(arg1)].field_513 < 32:
            revert with 0, 34
        if stor10[address(arg1)].field_513:
            if 31 >= stor10[address(arg1)].field_513:
                mem[352] = 256 * stor10[address(arg1)].field_520
            else:
                mem[352] = stor10[address(arg1)][2].field_0
                idx = 352
                s = 0
                while stor10[address(arg1)].field_513 + 320 > idx:
                    mem[idx + 32] = stor10[address(arg1)][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor10[address(arg1)].field_0, 
           stor10[address(arg1)].field_0,
           stor10[address(arg1)].field_0,
           stor10[address(arg1)].field_0,
           stor10[address(arg1)].field_256,
           Array(len=stor10[address(arg1)].field_512, data=mem[352 len ceil32(stor10[address(arg1)].field_513)]),
           bool(stor10[address(arg1)].field_768)
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x987ee156(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x1eee61ed(?????) > uint32(call.func_hash) >> 224:
                if registerFee() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return registerFee
                if updateApprovedContractState(address rg1) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if stor6 != msg.sender:
                        revert with 0, 'not owner'
                    uint256(stor8[address(cd[4])]) = not uint8(stor8[address(cd[4])]) or Mask(248, 8, uint256(stor8[address(cd[4])]))
                if userCount() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return userCount
                if uint32(call.func_hash) >> 224 != unknown_0x150b7a02(?????):
                    require unknown_0x15725b5e(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return reactivateFee
                require not msg.value
                require calldata.size - 4 >= 128
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
                require cd[100] <= test266151307()
                require cd[100] + 35 < calldata.size
                if ('cd', 100).length > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(('cd', 100).length)) + 129 < 128 or ceil32(ceil32(('cd', 100).length)) + 129 > test266151307():
                    revert with 0, 65
                require cd[100] + ('cd', 100).length + 36 <= calldata.size
                return 0x150b7a0200000000000000000000000000000000000000000000000000000000
            if unknown_0x1eee61ed(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if stor6 != msg.sender:
                    revert with 0, 'not owner'
                uint256(stor7[address(cd[4])]) = not uint8(stor7[address(cd[4])]) or Mask(248, 8, uint256(stor7[address(cd[4])]))
            else:
                if unknown_0x3ccfd60b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if stor6 != msg.sender:
                        revert with 0, 'not owner'
                    call stor6 with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'failed to send avax'
                else:
                    if unknown_0x5110063b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] <= test266151307()
                        require cd[36] + 35 < calldata.size
                        require ('cd', 36).length <= test266151307()
                        require cd[36] + ('cd', 36).length + 36 <= calldata.size
                        if stor6 != msg.sender:
                            revert with 0, 'not owner'
                        if stor10[address(cd[4])].field_64 > 368934881474191032:
                            revert with 0, 17
                        if stor10[address(cd[4])].field_64 < uint64(uint64(50 * stor10[address(cd[4])].field_64) / 100):
                            revert with 0, 17
                        stor10[address(cd[4])].field_64 = uint64(stor10[address(cd[4])].field_64 - uint64(uint64(50 * stor10[address(cd[4])].field_64) / 100))
                        if stor10[address(cd[4])].field_512:
                            if stor10[address(cd[4])].field_512 == uint255(stor10[address(cd[4])].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not ('cd', 36).length:
                                stor10[address(cd[4])].field_512 = 0
                                idx = 0
                                while (uint255(stor10[address(cd[4])].field_512) * 0.5) + 31 / 32 > idx:
                                    stor10[address(cd[4])][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                stor10[address(cd[4])].field_512 = (2 * ('cd', 36).length) + 1
                                s = 0
                                idx = cd[36] + 36
                                while cd[36] + ('cd', 36).length + 36 > idx:
                                    stor10[address(cd[4])][s + 2].field_0 = cd[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                                while (uint255(stor10[address(cd[4])].field_512) * 0.5) + 31 / 32 > idx:
                                    stor10[address(cd[4])][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor10[address(cd[4])].field_512 == stor10[address(cd[4])].field_513 < 32:
                                revert with 0, 34
                            if not ('cd', 36).length:
                                stor10[address(cd[4])].field_512 = 0
                                idx = 0
                                while stor10[address(cd[4])].field_513 + 31 / 32 > idx:
                                    stor10[address(cd[4])][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                stor10[address(cd[4])].field_512 = (2 * ('cd', 36).length) + 1
                                s = 0
                                idx = cd[36] + 36
                                while cd[36] + ('cd', 36).length + 36 > idx:
                                    stor10[address(cd[4])][s + 2].field_0 = cd[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                                while stor10[address(cd[4])].field_513 + 31 / 32 > idx:
                                    stor10[address(cd[4])][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        if unknown_0x70c7bf72(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return activeProfileCount
                        if unknown_0x758cdcf0(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return updateFee
                        require unknown_0x78a2e5cc(?????) == uint32(call.func_hash) >> 224
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == uint64(cd[36])
                        if not stor9[msg.sender]:
                            revert with 0, 'not registered'
                        if not uint8(stor7[address(cd[4])]):
                            revert with 0, 'NFT address invalid'
                        if msg.value < reactivateFee:
                            revert with 0, 'not enough avax sent'
                        if stor10[msg.sender].field_768:
                            revert with 0, 'user active'
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).0x6352211e with:
                                gas gas_remaining wei
                               args uint64(cd[36])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] != msg.sender:
                            revert with 0, 'only NFT owner can update'
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).0x42842e0e with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), uint64(cd[36])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        stor10[msg.sender].field_768 = 1
                        stor10[msg.sender].field_128 = uint64(block.timestamp)
                        stor10[msg.sender].field_192 = uint64(cd[36])
                        stor10[msg.sender].field_256 = address(cd[4])
                        if activeProfileCount == -1:
                            revert with 0, 17
                        activeProfileCount++
                        emit UserReactivate(address(cd[4]), uint64(cd[36]), msg.sender);
        else:
            if unknown_0xdcbfe4f6(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x987ee156(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if not stor9[address(cd[4])]:
                        revert with 0, 'not registered'
                    if stor10[address(cd[4])].field_512:
                        if stor10[address(cd[4])].field_512 == uint255(stor10[address(cd[4])].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if stor10[address(cd[4])].field_512:
                            if stor10[address(cd[4])].field_512 == uint255(stor10[address(cd[4])].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor10[address(cd[4])].field_512):
                                if 31 >= uint255(stor10[address(cd[4])].field_512) * 0.5:
                                    mem[384] = 256 * stor10[address(cd[4])].field_520
                                else:
                                    mem[384] = stor10[address(cd[4])][2].field_0
                                    idx = 384
                                    s = 0
                                    while (uint255(stor10[address(cd[4])].field_512) * 0.5) + 352 > idx:
                                        mem[idx + 32] = stor10[address(cd[4])][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        else:
                            if stor10[address(cd[4])].field_512 == stor10[address(cd[4])].field_513 < 32:
                                revert with 0, 34
                            if stor10[address(cd[4])].field_513:
                                if 31 >= stor10[address(cd[4])].field_513:
                                    mem[384] = 256 * stor10[address(cd[4])].field_520
                                else:
                                    mem[384] = stor10[address(cd[4])][2].field_0
                                    idx = 384
                                    s = 0
                                    while stor10[address(cd[4])].field_513 + 352 > idx:
                                        mem[idx + 32] = stor10[address(cd[4])][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        return stor10[address(cd[4])].field_0, 
                               stor10[address(cd[4])].field_0,
                               stor10[address(cd[4])].field_0,
                               stor10[address(cd[4])].field_0,
                               stor10[address(cd[4])].field_256,
                               Array(len=2 * Mask(256, -1, stor10[address(cd[4])].field_512), data=mem[384 len ceil32(uint255(stor10[address(cd[4])].field_512) * 0.5)]),
                               bool(stor10[address(cd[4])].field_768)
                    if stor10[address(cd[4])].field_512 == stor10[address(cd[4])].field_513 < 32:
                        revert with 0, 34
                    if stor10[address(cd[4])].field_512:
                        if stor10[address(cd[4])].field_512 == uint255(stor10[address(cd[4])].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor10[address(cd[4])].field_512):
                            if 31 >= uint255(stor10[address(cd[4])].field_512) * 0.5:
                                mem[384] = 256 * stor10[address(cd[4])].field_520
                            else:
                                mem[384] = stor10[address(cd[4])][2].field_0
                                idx = 384
                                s = 0
                                while (uint255(stor10[address(cd[4])].field_512) * 0.5) + 352 > idx:
                                    mem[idx + 32] = stor10[address(cd[4])][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    else:
                        if stor10[address(cd[4])].field_512 == stor10[address(cd[4])].field_513 < 32:
                            revert with 0, 34
                        if stor10[address(cd[4])].field_513:
                            if 31 >= stor10[address(cd[4])].field_513:
                                mem[384] = 256 * stor10[address(cd[4])].field_520
                            else:
                                mem[384] = stor10[address(cd[4])][2].field_0
                                idx = 384
                                s = 0
                                while stor10[address(cd[4])].field_513 + 352 > idx:
                                    mem[idx + 32] = stor10[address(cd[4])][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    return stor10[address(cd[4])].field_0, 
                           stor10[address(cd[4])].field_0,
                           stor10[address(cd[4])].field_0,
                           stor10[address(cd[4])].field_0,
                           stor10[address(cd[4])].field_256,
                           Array(len=stor10[address(cd[4])].field_512, data=mem[384 len ceil32(stor10[address(cd[4])].field_513)]),
                           bool(stor10[address(cd[4])].field_768)
                if unknown_0xa0d03526(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return bool(stor9[cd[4]])
                if unknown_0xa87430ba(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if stor10[cd[4]].field_512:
                        if stor10[cd[4]].field_512 == uint255(stor10[cd[4]].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if stor10[cd[4]].field_512:
                            if stor10[cd[4]].field_512 == uint255(stor10[cd[4]].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor10[cd[4]].field_512):
                                if 31 >= uint255(stor10[cd[4]].field_512) * 0.5:
                                    mem[160] = 256 * stor10[cd[4]].field_520
                                else:
                                    mem[160] = stor10[cd[4]][2].field_0
                                    idx = 160
                                    s = 0
                                    while (uint255(stor10[cd[4]].field_512) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor10[cd[4]][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        else:
                            if stor10[cd[4]].field_512 == stor10[cd[4]].field_513 < 32:
                                revert with 0, 34
                            if stor10[cd[4]].field_513:
                                if 31 >= stor10[cd[4]].field_513:
                                    mem[160] = 256 * stor10[cd[4]].field_520
                                else:
                                    mem[160] = stor10[cd[4]][2].field_0
                                    idx = 160
                                    s = 0
                                    while stor10[cd[4]].field_513 + 128 > idx:
                                        mem[idx + 32] = stor10[cd[4]][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        return stor10[cd[4]].field_0, 
                               stor10[cd[4]].field_0,
                               stor10[cd[4]].field_0,
                               stor10[cd[4]].field_0,
                               stor10[cd[4]].field_256,
                               Array(len=2 * Mask(256, -1, stor10[cd[4]].field_512), data=mem[160 len ceil32(uint255(stor10[cd[4]].field_512) * 0.5)]),
                               bool(stor10[cd[4]].field_768)
                    if stor10[cd[4]].field_512 == stor10[cd[4]].field_513 < 32:
                        revert with 0, 34
                    if stor10[cd[4]].field_512:
                        if stor10[cd[4]].field_512 == uint255(stor10[cd[4]].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor10[cd[4]].field_512):
                            if 31 >= uint255(stor10[cd[4]].field_512) * 0.5:
                                mem[160] = 256 * stor10[cd[4]].field_520
                            else:
                                mem[160] = stor10[cd[4]][2].field_0
                                idx = 160
                                s = 0
                                while (uint255(stor10[cd[4]].field_512) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor10[cd[4]][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    else:
                        if stor10[cd[4]].field_512 == stor10[cd[4]].field_513 < 32:
                            revert with 0, 34
                        if stor10[cd[4]].field_513:
                            if 31 >= stor10[cd[4]].field_513:
                                mem[160] = 256 * stor10[cd[4]].field_520
                            else:
                                mem[160] = stor10[cd[4]][2].field_0
                                idx = 160
                                s = 0
                                while stor10[cd[4]].field_513 + 128 > idx:
                                    mem[idx + 32] = stor10[cd[4]][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    return stor10[cd[4]].field_0, 
                           stor10[cd[4]].field_0,
                           stor10[cd[4]].field_0,
                           stor10[cd[4]].field_0,
                           stor10[cd[4]].field_256,
                           Array(len=stor10[cd[4]].field_512, data=mem[160 len ceil32(stor10[cd[4]].field_513)]),
                           bool(stor10[cd[4]].field_768)
                if uint32(call.func_hash) >> 224 != unknown_0xc1694a2f(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xc6616ba1(?????):
                        require unknown_0xca797fab(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return pauseFee
                    require not msg.value
                    require calldata.size - 4 >= 128
                    if stor6 != msg.sender:
                        revert with 0, 'not owner'
                    registerFee = cd[4]
                    updateFee = cd[36]
                    pauseFee = cd[68]
                    reactivateFee = cd[100]
                else:
                    if not stor9[msg.sender]:
                        revert with 0, 'not registered'
                    if msg.value < pauseFee:
                        revert with 0, 'not enough avax sent'
                    if not stor10[msg.sender].field_768:
                        revert with 0, 'user not active'
                    stor10[msg.sender].field_768 = 0
                    if not activeProfileCount:
                        revert with 0, 17
                    activeProfileCount--
                    stor10[msg.sender].field_256 = 0
                    require ext_code.size(stor10[msg.sender].field_256)
                    call stor10[msg.sender].field_256.0x42842e0e with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, stor10[msg.sender].field_192
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit UserPause(msg.sender);
            else:
                if unknown_0xdcbfe4f6(?????) == uint32(call.func_hash) >> 224:
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == uint64(cd[36])
                    if not stor9[msg.sender]:
                        revert with 0, 'not registered'
                    if not uint8(stor7[address(cd[4])]):
                        revert with 0, 'NFT address invalid'
                    if msg.value < updateFee:
                        revert with 0, 'not enough avax sent'
                    if not stor10[msg.sender].field_768:
                        revert with 0, 'user not active'
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).0x6352211e with:
                            gas gas_remaining wei
                           args uint64(cd[36])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != msg.sender:
                        revert with 0, 'only NFT owner can update'
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).0x42842e0e with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), uint64(cd[36])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor10[msg.sender].field_256)
                    call stor10[msg.sender].field_256.0x42842e0e with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, stor10[msg.sender].field_192
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor10[msg.sender].field_256 = address(cd[4])
                    stor10[msg.sender].field_192 = uint64(cd[36])
                    emit UserUpdate(address(cd[4]), uint64(cd[36]), msg.sender);
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xe13a7f63(?????):
                        if unknown_0xea0d5dcd(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            return bool(stor10[address(cd[4])].field_768)
                        if unknown_0xea5c6b01(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 128
                            require cd[4] == address(cd[4])
                            require cd[36] == uint64(cd[36])
                            require cd[68] == uint64(cd[68])
                            if not uint8(stor8[msg.sender]):
                                if stor6 != msg.sender:
                                    revert with 0, 'not approved'
                            if cd[100]:
                                if stor10[address(cd[4])].field_64 < uint64(cd[36]):
                                    revert with 0, 17
                                stor10[address(cd[4])].field_64 = uint64(stor10[address(cd[4])].field_64 - uint64(cd[36]))
                                emit 0xdf191625: uint64(cd[36]), address(cd[4]), uint64(cd[68])
                            else:
                                if stor10[address(cd[4])].field_64 > -uint64(cd[36]) + test266151307():
                                    revert with 0, 17
                                stor10[address(cd[4])].field_64 = uint64(uint64(cd[36]) + stor10[address(cd[4])].field_64)
                                emit UserPointIncrease(uint64(cd[36]), address(cd[4]), uint64(cd[68]));
                        else:
                            if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] == address(cd[4])
                                if stor6 != msg.sender:
                                    revert with 0, 'not owner'
                                stor6 = address(cd[4])
                            else:
                                require unknown_0xfceea350(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                require calldata.size - 4 >= 128
                                require cd[4] <= test266151307()
                                require cd[4] + 35 < calldata.size
                                require ('cd', 4).length <= test266151307()
                                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                                require cd[36] == uint64(cd[36])
                                require cd[68] == uint64(cd[68])
                                if not uint8(stor8[msg.sender]):
                                    if stor6 != msg.sender:
                                        revert with 0, 'not approved'
                                if ('cd', 4).length >= 1001:
                                    revert with 0, 'length must be < 1001'
                                if cd[100]:
                                    idx = 0
                                    while idx < ('cd', 4).length:
                                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[32] = 10
                                        if stor10[address(cd[((32 * idx) + cd[4] + 36)])].field_64 < uint64(cd[36]):
                                            revert with 0, 17
                                        stor10[address(cd[((32 * idx) + cd[4] + 36)])].field_64 = uint64(stor10[address(cd[((32 * idx) + cd[4] + 36)])].field_64 - uint64(cd[36]))
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    idx = 0
                                    s = 224
                                    t = cd[4] + 36
                                    while idx < ('cd', 4).length:
                                        require cd[t] == address(cd[t])
                                        mem[s] = address(cd[t])
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit 0x41a9a4c3: Array(len=('cd', 4).length, data=mem[224 len 32 * ('cd', 4).length]), uint64(cd[36]), uint64(cd[68])
                                else:
                                    idx = 0
                                    while idx < ('cd', 4).length:
                                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[32] = 10
                                        if stor10[address(cd[((32 * idx) + cd[4] + 36)])].field_64 > -uint64(cd[36]) + test266151307():
                                            revert with 0, 17
                                        stor10[address(cd[((32 * idx) + cd[4] + 36)])].field_64 = uint64(uint64(cd[36]) + stor10[address(cd[((32 * idx) + cd[4] + 36)])].field_64)
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    idx = 0
                                    s = 224
                                    t = cd[4] + 36
                                    while idx < ('cd', 4).length:
                                        require cd[t] == address(cd[t])
                                        mem[s] = address(cd[t])
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit UserPointIncreaseMultiple(Array(len=('cd', 4).length, data=mem[224 len 32 * ('cd', 4).length]), uint64(cd[36]), uint64(cd[68]));
                    else:
                        require calldata.size - 4 >= 96
                        require cd[4] == address(cd[4])
                        require cd[36] == uint64(cd[36])
                        require cd[68] <= test266151307()
                        require cd[68] + 35 < calldata.size
                        require ('cd', 68).length <= test266151307()
                        require cd[68] + ('cd', 68).length + 36 <= calldata.size
                        if stor9[msg.sender]:
                            revert with 0, 'already registered'
                        if not uint8(stor7[address(cd[4])]):
                            revert with 0, 'NFT address invalid'
                        if msg.value < registerFee:
                            revert with 0, 'not enough avax sent'
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).0x6352211e with:
                                gas gas_remaining wei
                               args uint64(cd[36])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] != msg.sender:
                            revert with 0, 'only NFT owner can register'
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).0x42842e0e with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), uint64(cd[36])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        stor10[msg.sender].field_0 = userCount
                        stor10[msg.sender].field_64 = 0
                        stor10[msg.sender].field_128 = uint64(block.timestamp)
                        stor10[msg.sender].field_192 = uint64(cd[36])
                        stor10[msg.sender].field_256 = 0
                        stor10[msg.sender].field_256 = address(cd[4])
                        if stor10[msg.sender].field_512:
                            if stor10[msg.sender].field_512 == uint255(stor10[msg.sender].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if ('cd', 68).length:
                                stor10[msg.sender][2][].field_0 = Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
                            else:
                                stor10[msg.sender].field_512 = 0
                                idx = 0
                                while (uint255(stor10[msg.sender].field_512) * 0.5) + 31 / 32 > idx:
                                    stor10[msg.sender][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor10[msg.sender].field_512 == stor10[msg.sender].field_513 < 32:
                                revert with 0, 34
                            if ('cd', 68).length:
                                stor10[msg.sender][2][].field_0 = Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
                            else:
                                stor10[msg.sender].field_512 = 0
                                idx = 0
                                while stor10[msg.sender].field_513 + 31 / 32 > idx:
                                    stor10[msg.sender][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        stor10[msg.sender].field_768 = 1
                        if userCount == test266151307():
                            revert with 0, 17
                        userCount = uint64(userCount + 1)
                        if activeProfileCount == -1:
                            revert with 0, 17
                        activeProfileCount++
                        stor9[msg.sender] = 1
                        mem[ceil32(return_data.size) + ceil32(('cd', 68).length) + 384] = address(cd[4])
                        mem[ceil32(return_data.size) + ceil32(('cd', 68).length) + 416] = uint64(cd[36])
                        mem[ceil32(return_data.size) + ceil32(('cd', 68).length) + 448] = 96
                        mem[ceil32(return_data.size) + ceil32(('cd', 68).length) + 480] = ('cd', 68).length
                        emit 0x8156b0f7: Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(return_data.size) + ('cd', 68).length + 416 len (2 * ceil32(('cd', 68).length)) + -('cd', 68).length + 96], msg.sender
}



}
