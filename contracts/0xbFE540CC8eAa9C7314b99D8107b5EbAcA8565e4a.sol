contract main {




// =====================  Runtime code  =====================


#
#  - stakeEnd(uint256 arg1, uint40 arg2)
#  - stakeStart(uint256 arg1, uint256 arg2)
#  - stakeGoodAccounting(address arg1, uint256 arg2, uint40 arg3)
#  - dailyDataUpdate(uint256 arg1)
#  - btcAddressClaim(uint256 arg1, bytes32[] arg2, address arg3, bytes32 arg4, bytes32 arg5, uint8 arg6, uint8 arg7, bytes32 arg8, bytes32 arg9, uint256 arg10, address arg11)
#  - xfLobbyExit(uint256 arg1, uint256 arg2)
#  - claimMessageMatchesSignature(address arg1, bytes32 arg2, bytes32 arg3, bytes32 arg4, uint8 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8)
#
const name = 'HEX'

const decimals = 8

const currentDay = (block.timestamp - (437592 * 24 * 3600) / 24 * 3600)

const symbol = 'HEX'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint64 stor3;
uint128 stor3;
uint16 stor4;
uint32 stor4;
uint64 stor4;
uint64 stor4;
uint128 stor4;
uint128 stor4; offset 128
mapping of uint8 stor5;
mapping of struct dailyData;
array of struct stakeLists;
mapping of uint256 xfLobby;
mapping of struct xfLobbyEntry;

function totalSupply() {
    return totalSupply
}

function stakeLists(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < stakeLists[arg1].field_0
    return stakeLists[arg1][arg2].field_0, 
           stakeLists[arg1][arg2].field_0,
           stakeLists[arg1][arg2].field_0,
           stakeLists[arg1][arg2].field_0,
           stakeLists[arg1][arg2].field_200,
           stakeLists[arg1][arg2].field_0,
           bool(stakeLists[arg1][arg2].field_232)
}

function stakeCount(address arg1) {
    require calldata.size - 4 >= 32
    return stakeLists[address(arg1)].field_0
}

function xfLobbyMembers(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return xfLobbyEntry[arg1][arg2].field_0, xfLobbyEntry[arg1][arg2].field_40
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function btcAddressClaims(bytes20 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[Mask(160, 96, arg1)])
}

function xfLobby(uint256 arg1) {
    require calldata.size - 4 >= 32
    return xfLobby[arg1]
}

function dailyData(uint256 arg1) {
    require calldata.size - 4 >= 32
    return dailyData[arg1].field_0, dailyData[arg1].field_0, dailyData[arg1].field_144
}

function xfLobbyEntry(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not xfLobbyEntry[Mask(256, -40, arg2) << 40][address(arg1)][1][arg2 << 216].field_0:
        revert with 0, 'HEX: Param invalid'
    return xfLobbyEntry[Mask(256, -40, arg2) << 40][address(arg1)][1][arg2 << 216].field_0, 
           xfLobbyEntry[Mask(256, -40, arg2) << 40][address(arg1)][1][arg2 << 216].field_96
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
  stop
}

function allocatedSupply() {
    return (totalSupply + Mask(72, 0, stor3))
}

function pubKeyToEthAddress(bytes32 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    return address(sha3(arg1, arg2))
}

function globals() {
    return Mask(72, 0, stor3), 
           Mask(72, 0, stor3),
           stor3 % 1099511627776,
           Mask(72, 0, stor3),
           uint16(stor4.field_0),
           Mask(72, 0, stor4.field_0),
           stor4.field_0 % 1099511627776,
           uint128(stor4.field_128)
}

function xfLobbyFlush() {
    if not eth.balance(this.address):
        revert with 0, 'HEX: No value'
    call 0xdec9f2793e3c17cd26eefb21c4762fa5128e0399 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function globalInfo() {
    return Mask(72, 0, stor3), 
           Mask(72, 0, stor3),
           stor3 % 1099511627776,
           Mask(72, 0, stor3),
           uint16(stor4.field_0),
           Mask(72, 0, stor4.field_0),
           stor4.field_0 % 1099511627776,
           stor4.field_0 % 2251799813685248,
           stor4.field_0 % 2251799813685248,
           stor4.field_0 % 67108864,
           block.timestamp,
           totalSupply,
           xfLobby[block.timestamp - (437592 * 24 * 3600) / 24 * 3600]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6d45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function merkleProofIsValid(bytes32 arg1, bytes32[] arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    idx = 0
    s = arg1
    while idx < arg2.length:
        require idx < mem[96]
        _17 = mem[(32 * idx) + 128]
        if s >= mem[(32 * idx) + 128]:
            mem[mem[64] + 32] = mem[(32 * idx) + 128]
            mem[mem[64] + 64] = s
            _19 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            idx = idx + 1
            s = sha3(mem[_19 + 32 len mem[_19]])
            continue 
        mem[mem[64] + 32] = s
        mem[mem[64] + 64] = _17
        _23 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        idx = idx + 1
        s = sha3(mem[_23 + 32 len mem[_23]])
        continue 
    return (s == 0x4e831acb4223b66de3b3d2e54a2edeefb0de3d7916e2886a4b134d9764d41bec)
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6d45524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function pubKeyToBtcAddress(bytes32 arg1, bytes32 arg2, uint8 arg3) {
    require calldata.size - 4 >= 96
    if not Mask(1, 1, arg3):
        if Mask(1, 2, arg3):
            revert with 0, 'HEX: claimFlags invalid'
        if Mask(1, 3, arg3):
            revert with 0, 'HEX: claimFlags invalid'
        hash = sha256hash(0, arg1, arg2 / 256, mem[257 len 1]) 
    else:
        if Mask(1, 2, arg3):
            if Mask(1, 3, arg3):
                revert with 0, 'HEX: claimFlags invalid'
        hash = sha256hash(0, arg1 / 256, mem[193 len 1]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    hash = ripemd160hash(hash) 
    if not ripemd160hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    if Mask(1, 2, arg3):
        hash = sha256hash(0, Mask(96, 160, Mask(96, 0, hash), 0, 0) >> 160) 
        if not sha256hash.result:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        hash = ripemd160hash(hash) 
        if not ripemd160hash.result:
            revert with ext_call.return_data[0 len return_data.size]
    return address(hash)
}

function xfLobbyPendingDays(address arg1) {
    require calldata.size - 4 >= 32
    mem[64] = 160
    mem[96 len 64] = code.data[31550 len 64]
    if (block.timestamp - (437592 * 24 * 3600) / 24 * 3600) + 1 <= 351:
        idx = (block.timestamp - (437592 * 24 * 3600) / 24 * 3600) + 1
        while idx:
            mem[0] = arg1
            mem[32] = sha3(idx - 1, 9)
            if xfLobbyEntry[idx - 1][address(arg1)].field_40 > xfLobbyEntry[idx - 1][address(arg1)].field_0:
                require Mask(248, 0, idx - 1) * 0.00390625 < 2
                mem[(Mask(240, 8, idx - 1) >> 3) + 96] = mem[(Mask(240, 8, idx - 1) >> 3) + 96] or 1 << uint8(idx - 1)
            idx = idx - 1
            continue 
    else:
        idx = 351
        while idx:
            mem[0] = arg1
            mem[32] = sha3(idx - 1, 9)
            if xfLobbyEntry[idx - 1][address(arg1)].field_40 > xfLobbyEntry[idx - 1][address(arg1)].field_0:
                require Mask(248, 0, idx - 1) * 0.00390625 < 2
                mem[(Mask(240, 8, idx - 1) >> 3) + 96] = mem[(Mask(240, 8, idx - 1) >> 3) + 96] or 1 << uint8(idx - 1)
            idx = idx - 1
            continue 
    mem[160 len 64] = mem[96 len 64]
    return memory
      from mem[64]
       len -mem[64] + 224
}

function xfLobbyEnter(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp - (437592 * 24 * 3600) / 24 * 3600 >= 351:
        revert with 0, 'HEX: Lobbies have ended'
    if not msg.value:
        revert with 0, 'HEX: Amount required'
    xfLobbyEntry[block.timestamp - (437592 * 24 * 3600) / 24 * 3600][address(msg.sender)].field_40 = xfLobbyEntry[block.timestamp - (437592 * 24 * 3600) / 24 * 3600][address(msg.sender)].field_40 + 1 % 1099511627776
    xfLobbyEntry[block.timestamp - (437592 * 24 * 3600) / 24 * 3600][address(msg.sender)][1][xfLobbyEntry[block.timestamp - (437592 * 24 * 3600) / 24 * 3600][address(msg.sender)].field_0].field_0 = Mask(96, 0, msg.value)
    xfLobbyEntry[block.timestamp - (437592 * 24 * 3600) / 24 * 3600][address(msg.sender)][1][xfLobbyEntry[block.timestamp - (437592 * 24 * 3600) / 24 * 3600][address(msg.sender)].field_0].field_96 = arg1
    xfLobby[block.timestamp - (437592 * 24 * 3600) / 24 * 3600] += msg.value
    emit XfLobbyEnter(uint256 rg1, address rg2, uint256 rg3, address rg4):
                      0,
                      Mask(96, 0, msg.value),
                      block.timestamp % 1099511627776,
                      msg.sender,
                      block.timestamp - (437592 * 24 * 3600) / 24 * 3600 << 40 or xfLobbyEntry[block.timestamp - (437592 * 24 * 3600) / 24 * 3600][address(msg.sender)].field_40,
                      arg1,
}

function btcAddressIsValid(bytes20 arg1, uint256 arg2, bytes32[] arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    require 0 < arg3.length
    if Mask(51, 45, mem[128]):
        revert with 0, 'HEX: proof invalid'
    idx = 1
    while idx < arg3.length:
        require idx < arg3.length
        if not Mask(51, 45, mem[(32 * idx) + 128]):
            revert with 0, 'HEX: proof invalid'
        idx = idx + 1
        continue 
    idx = 0
    s = Mask(160, 96, arg1) or arg2
    while idx < arg3.length:
        require idx < mem[96]
        _44 = mem[(32 * idx) + 128]
        if s >= mem[(32 * idx) + 128]:
            mem[mem[64] + 32] = mem[(32 * idx) + 128]
            mem[mem[64] + 64] = s
            _46 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            idx = idx + 1
            s = sha3(mem[_46 + 32 len mem[_46]])
            continue 
        mem[mem[64] + 32] = s
        mem[mem[64] + 64] = _44
        _50 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        idx = idx + 1
        s = sha3(mem[_50 + 32 len mem[_50]])
        continue 
    return (s == 0x4e831acb4223b66de3b3d2e54a2edeefb0de3d7916e2886a4b134d9764d41bec)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6d45524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function btcAddressIsClaimable(bytes20 arg1, uint256 arg2, bytes32[] arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if block.timestamp - (437592 * 24 * 3600) / 24 * 3600 < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x734845583a20436c61696d20706861736520686173206e6f742079657420737461727465,
                    mem[200 len 28]
    if block.timestamp - (437592 * 24 * 3600) / 24 * 3600 >= 351:
        revert with 0, 'HEX: Claim phase has ended'
    mem[0] = Mask(160, 96, arg1)
    mem[32] = 5
    if stor5[Mask(160, 96, arg1)]:
        return 0
    mem[64] = (32 * arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    require 0 < arg3.length
    if Mask(51, 45, mem[128]):
        revert with 0, 'HEX: proof invalid'
    idx = 1
    while idx < arg3.length:
        require idx < arg3.length
        if not Mask(51, 45, mem[(32 * idx) + 128]):
            revert with 0, 'HEX: proof invalid'
        idx = idx + 1
        continue 
    idx = 0
    s = Mask(160, 96, arg1) or arg2
    while idx < arg3.length:
        require idx < mem[96]
        _51 = mem[(32 * idx) + 128]
        if s >= mem[(32 * idx) + 128]:
            mem[mem[64] + 32] = mem[(32 * idx) + 128]
            mem[mem[64] + 64] = s
            _53 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            idx = idx + 1
            s = sha3(mem[_53 + 32 len mem[_53]])
            continue 
        mem[mem[64] + 32] = s
        mem[mem[64] + 64] = _51
        _57 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        idx = idx + 1
        s = sha3(mem[_57 + 32 len mem[_57]])
        continue 
    return (s == 0x4e831acb4223b66de3b3d2e54a2edeefb0de3d7916e2886a4b134d9764d41bec)
}

function dailyDataRange(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg1 >= arg2:
        revert with 0, 'HEX: range invalid'
    if arg2 > uint16(stor4.field_0):
        revert with 0, 'HEX: range invalid'
    mem[96] = arg2 - arg1
    if not arg2 - arg1:
        require var11002 < arg2 - arg1
        mem[(32 * var13001) + 128] = var13003
        if var13006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var15002 < arg2 - arg1
        mem[(32 * var17001) + 128] = var17003
        if var17006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var19002 < arg2 - arg1
        mem[(32 * var21001) + 128] = var21003
        if var21006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var23002 < arg2 - arg1
        mem[(32 * var25001) + 128] = var25003
        if var25006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var27002 < arg2 - arg1
        mem[(32 * var29001) + 128] = var29003
        if var29006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var31002 < arg2 - arg1
        mem[(32 * var33001) + 128] = var33003
        if var33006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var35002 < arg2 - arg1
        mem[(32 * var37001) + 128] = var37003
        if var37006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var39002 < arg2 - arg1
        mem[(32 * var41001) + 128] = var41003
        if var41006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var43002 < arg2 - arg1
        mem[(32 * var45001) + 128] = var45003
        if var45006 + 1 < arg2:
            require var47002 < arg2 - arg1
            # nil
        else:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
    else:
        mem[128 len 32 * arg2 - arg1] = code.data[31550 len 32 * arg2 - arg1]
        require var12002 < arg2 - arg1
        mem[(32 * var14001) + 128] = var14003
        if var14006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var16002 < arg2 - arg1
        mem[(32 * var18001) + 128] = var18003
        if var18006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var20002 < arg2 - arg1
        mem[(32 * var22001) + 128] = var22003
        if var22006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var24002 < arg2 - arg1
        mem[(32 * var26001) + 128] = var26003
        if var26006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var28002 < arg2 - arg1
        mem[(32 * var30001) + 128] = var30003
        if var30006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var32002 < arg2 - arg1
        mem[(32 * var34001) + 128] = var34003
        if var34006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var36002 < arg2 - arg1
        mem[(32 * var38001) + 128] = var38003
        if var38006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var40002 < arg2 - arg1
        mem[(32 * var42001) + 128] = var42003
        if var42006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var44002 < arg2 - arg1
        mem[(32 * var46001) + 128] = var46003
        if var46006 + 1 < arg2:
            require var48002 < arg2 - arg1
            # nil
        else:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
}

function xfLobbyRange(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg1 >= arg2:
        revert with 0, 'HEX: invalid range'
    if arg2 > 351:
        revert with 0, 'HEX: invalid range'
    if arg2 > block.timestamp - (437592 * 24 * 3600) / 24 * 3600:
        revert with 0, 'HEX: invalid range'
    mem[96] = arg2 - arg1
    if not arg2 - arg1:
        require var16001 < arg2 - arg1
        mem[(32 * var18001) + 128] = var18003
        if var18005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var20001 < arg2 - arg1
        mem[(32 * var22001) + 128] = var22003
        if var22005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var24001 < arg2 - arg1
        mem[(32 * var26001) + 128] = var26003
        if var26005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var28001 < arg2 - arg1
        mem[(32 * var30001) + 128] = var30003
        if var30005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var32001 < arg2 - arg1
        mem[(32 * var34001) + 128] = var34003
        if var34005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var36001 < arg2 - arg1
        mem[(32 * var38001) + 128] = var38003
        if var38005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var40001 < arg2 - arg1
        mem[(32 * var42001) + 128] = var42003
        if var42005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var44001 < arg2 - arg1
        mem[(32 * var46001) + 128] = var46003
        if var46005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var48001 < arg2 - arg1
        mem[(32 * var50001) + 128] = var50003
        if var50005 < arg2:
            require var52001 < arg2 - arg1
            # nil
        else:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
    else:
        mem[128 len 32 * arg2 - arg1] = code.data[31550 len 32 * arg2 - arg1]
        require var17001 < arg2 - arg1
        mem[(32 * var19001) + 128] = var19003
        if var19005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var21001 < arg2 - arg1
        mem[(32 * var23001) + 128] = var23003
        if var23005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var25001 < arg2 - arg1
        mem[(32 * var27001) + 128] = var27003
        if var27005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var29001 < arg2 - arg1
        mem[(32 * var31001) + 128] = var31003
        if var31005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var33001 < arg2 - arg1
        mem[(32 * var35001) + 128] = var35003
        if var35005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var37001 < arg2 - arg1
        mem[(32 * var39001) + 128] = var39003
        if var39005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var41001 < arg2 - arg1
        mem[(32 * var43001) + 128] = var43003
        if var43005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var45001 < arg2 - arg1
        mem[(32 * var47001) + 128] = var47003
        if var47005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var49001 < arg2 - arg1
        mem[(32 * var51001) + 128] = var51003
        if var51005 < arg2:
            require var53001 < arg2 - arg1
            # nil
        else:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
}



}
