contract main {




// =====================  Runtime code  =====================


#
#  - sub_2da8a1ed(?)
#  - swapExactInput(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5)
#  - sub_754a0274(?)
#  - withdraw(address arg1, uint256 arg2, uint32 arg3)
#  - sub_ac211b95(?)
#  - harvestYield()
#  - _fallback()
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address sub_0f0a1c6fAddress; offset 16
mapping of uint8 stor1;
array of address sub_e94b0dd2;
uint32 stor3;
address stor3; offset 24
uint32 stor4;
address stor4;
uint256 stor4;
uint32 stor5;
address stor5;
uint256 stor5;
address stor6;
address stor7;
mapping of struct pool;
uint32 poolCount;
array of uint256 stor10;
mapping of uint256 stor11;
mapping of uint256 balance;
mapping of uint256 sub_e809529e;

function sub_0f0a1c6f(?) {
    return sub_0f0a1c6fAddress
}

function getBalance(uint32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return balance[arg1 << 224][address(arg2)]
}

function getPool(uint32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, pool[arg1 << 224].field_512
}

function sub_e809529e(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    return sub_e809529e[arg1]
}

function sub_e94b0dd2(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_e94b0dd2.length
    return address(sub_e94b0dd2[arg1])
}

function poolCount() {
    return poolCount
}

function sub_705eca35(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if address(arg1) >= address(arg2):
        return address(arg2), address(arg1)
    return address(arg1), address(arg2)
}

function deposit(address arg1, uint256 arg2, uint32 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Controlled::onlyController: Caller is not controller'
    if balance[arg3 << 224][address(arg1)] > !arg2:
        revert with 0, 17
    balance[arg3 << 224][address(arg1)] += arg2
}

function sub_a9c75cff(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not address(arg1):
        return 0
    require ext_code.size(address(stor5))
    staticcall address(stor5).pendingTokens(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg2, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_59cf86da(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint32(arg1)
    require arg2 == address(arg2)
    require ext_code.size(sub_0f0a1c6fAddress)
    staticcall sub_0f0a1c6fAddress.0x6f8c3f8a with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).isManager(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Controlled::onlyManager: Caller is not manager'
    if balance[arg1 << 224][address(arg2)] > !arg3:
        revert with 0, 17
    balance[arg1 << 224][address(arg2)] += arg3
}

function addController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_0f0a1c6fAddress)
    staticcall sub_0f0a1c6fAddress.0x6f8c3f8a with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).isOwner(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Controlled::onlyOwner: Caller is not owner'
    stor1[address(arg1)] = 1
    idx = 0
    s = 0
    while idx < sub_e94b0dd2.length:
        mem[0] = 2
        if idx == -1:
            revert with 0, 17
        if address(sub_e94b0dd2[idx]) != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        sub_e94b0dd2.length++
        address(sub_e94b0dd2[sub_e94b0dd2.length]) = arg1
}

function sub_0c3fa05f(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    require ext_code.size(sub_0f0a1c6fAddress)
    staticcall sub_0f0a1c6fAddress.0x6f8c3f8a with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).isManager(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Controlled::onlyManager: Caller is not manager'
    require ext_code.size(address(stor3.field_24))
    staticcall address(stor3.field_24).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256
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
    if ext_call.return_data[0]:
        require ext_code.size(address(stor5))
        call address(stor5).deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor11[arg1 << 224], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_98c671ce(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_e94b0dd2.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_e94b0dd2.length > idx:
            uint256(sub_e94b0dd2[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            address(sub_e94b0dd2[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_e94b0dd2.length > idx:
            uint256(sub_e94b0dd2[idx]) = 0
            idx = idx + 1
            continue 
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        sub_0f0a1c6fAddress = address(cd[36])
    else:
        uint16(stor0.field_0) = 257
        sub_0f0a1c6fAddress = address(cd[36])
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
}

function sub_e7daae2e(?) {
    require calldata.size - 4 >= 224
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require cd[132] == address(cd[132])
    require cd[164] == address(cd[164])
    require cd[196] == cd[196] % 16777216
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0, 'Initializable: contract is already initialized'
    else:
        uint16(stor0.field_0) = 257
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_e94b0dd2.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_e94b0dd2.length > idx:
            uint256(sub_e94b0dd2[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            address(sub_e94b0dd2[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_e94b0dd2.length > idx:
            uint256(sub_e94b0dd2[idx]) = 0
            idx = idx + 1
            continue 
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        sub_0f0a1c6fAddress = address(cd[36])
    else:
        uint16(stor0.field_0) = 257
        sub_0f0a1c6fAddress = address(cd[36])
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
    address(stor4) = address(cd[100])
    address(stor5) = address(cd[132])
    stor3.field_0 % 16777216 = cd[196] % 16777216
    address(stor3.field_24) = address(cd[68])
    stor6 = address(cd[164])
    require ext_code.size(sub_0f0a1c6fAddress)
    staticcall sub_0f0a1c6fAddress.0x6f8c3f8a with:
            gas gas_remaining wei
           args 3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(ext_call.return_data[12 len 20])
    staticcall ext_call.return_data[12 len 20].getWethTokenAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor7 = ext_call.return_data[12 len 20]
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function getPoolBalance(uint32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(address(stor5))
    staticcall address(stor5).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor11[arg1 << 224], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not bool(ceil32(return_data.size) + 544 <= test266151307()):
        revert with 0, 65
    require ext_code.size(address(stor3.field_24))
    staticcall address(stor3.field_24).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256
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
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(address(stor3.field_24))
    staticcall address(stor3.field_24).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(address(stor3.field_24))
    staticcall address(stor3.field_24).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(pool[arg1 << 224].field_0)
    staticcall pool[arg1 << 224].field_0.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 2 * 10^10 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(address(stor3.field_24))
    staticcall address(stor3.field_24).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(pool[arg1 << 224].field_256)
    staticcall pool[arg1 << 224].field_256.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 2 * 10^10 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return ext_call.return_data[0] * 2 * 10^10 * ext_call.return_data[0] / ext_call.return_data[0] / 10^10, 
           ext_call.return_data[0] * 2 * 10^10 * ext_call.return_data[0] / ext_call.return_data[0] / 10^10
}

function getAmountOut(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'amountIn must be greater than zero'
    if arg1 == arg2:
        revert with 0, 'Identical token addresses'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'Zero address'
        require ext_code.size(address(stor3.field_24))
        staticcall address(stor3.field_24).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg1 == arg1:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'No liquidity in pool reserves'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'No liquidity in pool reserves'
            if arg3 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if 997 * arg3 and ext_call.return_data[50 len 14] > -1 / 997 * arg3:
                revert with 0, 17
            if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * ext_call.return_data[18 len 14] > !(997 * arg3):
                revert with 0, 17
            if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg3):
                revert with 0, 18
            return (997 * arg3 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg3))
    else:
        if not arg2:
            revert with 0, 'Zero address'
        require ext_code.size(address(stor3.field_24))
        staticcall address(stor3.field_24).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg1 == arg2:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'No liquidity in pool reserves'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'No liquidity in pool reserves'
            if arg3 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if 997 * arg3 and ext_call.return_data[50 len 14] > -1 / 997 * arg3:
                revert with 0, 17
            if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * ext_call.return_data[18 len 14] > !(997 * arg3):
                revert with 0, 17
            if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg3):
                revert with 0, 18
            return (997 * arg3 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg3))
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'No liquidity in pool reserves'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'No liquidity in pool reserves'
    if arg3 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
        revert with 0, 17
    if 997 * arg3 and ext_call.return_data[18 len 14] > -1 / 997 * arg3:
        revert with 0, 17
    if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if 1000 * ext_call.return_data[50 len 14] > !(997 * arg3):
        revert with 0, 17
    if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg3):
        revert with 0, 18
    return (997 * arg3 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg3))
}

function getAmountOutMinimum(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if 10^6 < stor3.field_0 % 16777216:
        revert with 0, 17
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'amountIn must be greater than zero'
    if arg1 == arg2:
        revert with 0, 'Identical token addresses'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'Zero address'
        require ext_code.size(address(stor3.field_24))
        staticcall address(stor3.field_24).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg1 == arg1:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'No liquidity in pool reserves'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'No liquidity in pool reserves'
            if arg3 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if 997 * arg3 and ext_call.return_data[50 len 14] > -1 / 997 * arg3:
                revert with 0, 17
            if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * ext_call.return_data[18 len 14] > !(997 * arg3):
                revert with 0, 17
            if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg3):
                revert with 0, 18
            if 997 * arg3 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg3) and -stor3.field_0 % 16777216 + 10^6 % 16777216 > -1 / 997 * arg3 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg3):
                revert with 0, 17
            return (997 * arg3 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg3) * -stor3.field_0 % 16777216 + 10^6 % 16777216 / 10^6)
    else:
        if not arg2:
            revert with 0, 'Zero address'
        require ext_code.size(address(stor3.field_24))
        staticcall address(stor3.field_24).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg1 == arg2:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'No liquidity in pool reserves'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'No liquidity in pool reserves'
            if arg3 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if 997 * arg3 and ext_call.return_data[50 len 14] > -1 / 997 * arg3:
                revert with 0, 17
            if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * ext_call.return_data[18 len 14] > !(997 * arg3):
                revert with 0, 17
            if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg3):
                revert with 0, 18
            if 997 * arg3 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg3) and -stor3.field_0 % 16777216 + 10^6 % 16777216 > -1 / 997 * arg3 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg3):
                revert with 0, 17
            return (997 * arg3 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg3) * -stor3.field_0 % 16777216 + 10^6 % 16777216 / 10^6)
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'No liquidity in pool reserves'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'No liquidity in pool reserves'
    if arg3 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
        revert with 0, 17
    if 997 * arg3 and ext_call.return_data[18 len 14] > -1 / 997 * arg3:
        revert with 0, 17
    if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if 1000 * ext_call.return_data[50 len 14] > !(997 * arg3):
        revert with 0, 17
    if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg3):
        revert with 0, 18
    if 997 * arg3 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg3) and -stor3.field_0 % 16777216 + 10^6 % 16777216 > -1 / 997 * arg3 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg3):
        revert with 0, 17
    return (997 * arg3 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg3) * -stor3.field_0 % 16777216 + 10^6 % 16777216 / 10^6)
}

function sub_364d0f5a(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    mem[100] = 0
    require ext_code.size(sub_0f0a1c6fAddress)
    staticcall sub_0f0a1c6fAddress.0x6f8c3f8a with:
            gas gas_remaining wei
           args 0
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).isManager(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Controlled::onlyManager: Caller is not manager'
    mem[(2 * ceil32(return_data.size)) + 96] = 0
    mem[(2 * ceil32(return_data.size)) + 128] = 0
    mem[(2 * ceil32(return_data.size)) + 160] = 0
    mem[(2 * ceil32(return_data.size)) + 192] = pool[arg1 << 224].field_0
    mem[(2 * ceil32(return_data.size)) + 224] = pool[arg1 << 224].field_256
    mem[(2 * ceil32(return_data.size)) + 256] = pool[arg1 << 224].field_512
    if not pool[arg1 << 224].field_0:
        revert with 0, 'Pool doesn't exist'
    require ext_code.size(address(stor5))
    staticcall address(stor5).poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    mem[(2 * ceil32(return_data.size)) + 288 len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool((4 * ceil32(return_data.size)) + 416 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 320] = ext_call.return_data[32]
    mem[(4 * ceil32(return_data.size)) + 352] = ext_call.return_data[64]
    mem[(4 * ceil32(return_data.size)) + 384] = ext_call.return_data[96]
    mem[(4 * ceil32(return_data.size)) + 420] = pool[arg1 << 224].field_0
    mem[(4 * ceil32(return_data.size)) + 452] = pool[arg1 << 224].field_256
    require ext_code.size(address(stor3.field_24))
    staticcall address(stor3.field_24).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256
    mem[(4 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != ext_call.return_data[12 len 20]:
        revert with 0, 'Incorrect MasterChef's poolId was provided'
    stor11[arg1 << 224] = arg2
    mem[(6 * ceil32(return_data.size)) + 420] = this.address
    mem[(6 * ceil32(return_data.size)) + 452] = address(stor5)
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(stor5)
    mem[(6 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < -1:
        mem[(7 * ceil32(return_data.size)) + 420] = this.address
        mem[(7 * ceil32(return_data.size)) + 452] = address(stor5)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), address(stor5)
        mem[(7 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(8 * ceil32(return_data.size)) + 452] = address(stor5)
        mem[(8 * ceil32(return_data.size)) + 484] = -1
        mem[(8 * ceil32(return_data.size)) + 416] = 68
        mem[(8 * ceil32(return_data.size)) + 452 len 28] = Mask(224, 0, stor5)
        mem[(8 * ceil32(return_data.size)) + 448 len 4] = approve(address arg1, uint256 arg2)
        mem[(8 * ceil32(return_data.size)) + 516] = 32
        mem[(8 * ceil32(return_data.size)) + 548] = 'SafeERC20: low-level call failed'
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[(8 * ceil32(return_data.size)) + 580 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), -1, 0
        mem[(8 * ceil32(return_data.size)) + 648] = 0
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(8 * ceil32(return_data.size)) + 612 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(8 * ceil32(return_data.size)) + 612] == bool(mem[(8 * ceil32(return_data.size)) + 612])
                if not mem[(8 * ceil32(return_data.size)) + 612]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_680c3052(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    mem[100] = 0
    require ext_code.size(sub_0f0a1c6fAddress)
    staticcall sub_0f0a1c6fAddress.0x6f8c3f8a with:
            gas gas_remaining wei
           args 0
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).isManager(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Controlled::onlyManager: Caller is not manager'
    mem[(2 * ceil32(return_data.size)) + 96] = 0
    mem[(2 * ceil32(return_data.size)) + 128] = 0
    mem[(2 * ceil32(return_data.size)) + 160] = 0
    mem[(2 * ceil32(return_data.size)) + 192] = pool[arg1 << 224].field_0
    mem[(2 * ceil32(return_data.size)) + 224] = pool[arg1 << 224].field_256
    mem[(2 * ceil32(return_data.size)) + 256] = pool[arg1 << 224].field_512
    if not pool[arg1 << 224].field_0:
        revert with 0, 'Pool doesn't exist'
    if stor11[arg1 << 224]:
        revert with 0, 'Staking already configured'
    require ext_code.size(address(stor5))
    staticcall address(stor5).poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    mem[(2 * ceil32(return_data.size)) + 288 len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool((4 * ceil32(return_data.size)) + 416 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 320] = ext_call.return_data[32]
    mem[(4 * ceil32(return_data.size)) + 352] = ext_call.return_data[64]
    mem[(4 * ceil32(return_data.size)) + 384] = ext_call.return_data[96]
    mem[(4 * ceil32(return_data.size)) + 420] = pool[arg1 << 224].field_0
    mem[(4 * ceil32(return_data.size)) + 452] = pool[arg1 << 224].field_256
    require ext_code.size(address(stor3.field_24))
    staticcall address(stor3.field_24).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256
    mem[(4 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != ext_call.return_data[12 len 20]:
        revert with 0, 'Incorrect MasterChef's poolId was provided'
    stor11[arg1 << 224] = arg2
    mem[(6 * ceil32(return_data.size)) + 420] = this.address
    mem[(6 * ceil32(return_data.size)) + 452] = address(stor5)
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(stor5)
    mem[(6 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < -1:
        mem[(7 * ceil32(return_data.size)) + 420] = this.address
        mem[(7 * ceil32(return_data.size)) + 452] = address(stor5)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), address(stor5)
        mem[(7 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(8 * ceil32(return_data.size)) + 452] = address(stor5)
        mem[(8 * ceil32(return_data.size)) + 484] = -1
        mem[(8 * ceil32(return_data.size)) + 416] = 68
        mem[(8 * ceil32(return_data.size)) + 452 len 28] = Mask(224, 0, stor5)
        mem[(8 * ceil32(return_data.size)) + 448 len 4] = approve(address arg1, uint256 arg2)
        mem[(8 * ceil32(return_data.size)) + 516] = 32
        mem[(8 * ceil32(return_data.size)) + 548] = 'SafeERC20: low-level call failed'
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[(8 * ceil32(return_data.size)) + 580 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), -1, 0
        mem[(8 * ceil32(return_data.size)) + 648] = 0
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(8 * ceil32(return_data.size)) + 612 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(8 * ceil32(return_data.size)) + 612] == bool(mem[(8 * ceil32(return_data.size)) + 612])
                if not mem[(8 * ceil32(return_data.size)) + 612]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function createPool(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Controlled::onlyController: Caller is not controller'
    if poolCount == test266151307():
        revert with 0, 17
    poolCount = uint32(poolCount + 1)
    pool[stor9].field_0 = arg1
    pool[stor9].field_256 = arg2
    stor10.length++
    stor10[stor10.length.field_3].field_0 = stor10[stor10.length.field_3].field_0 and !(test266151307() * 256^(4 * stor10.length % 8)) or 256^(4 * stor10.length % 8) * poolCount
    mem[100] = this.address
    mem[132] = address(stor4)
    require ext_code.size(arg1)
    staticcall arg1.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(stor4)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = address(stor4)
    if ext_call.return_data[0] >= -1:
        require ext_code.size(arg2)
        staticcall arg2.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), address(stor4)
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < -1:
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            mem[(2 * ceil32(return_data.size)) + 132] = address(stor4)
            require ext_code.size(arg2)
            staticcall arg2.allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), address(stor4)
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[(4 * ceil32(return_data.size)) + 132] = address(stor4)
            mem[(4 * ceil32(return_data.size)) + 164] = -1
            mem[(4 * ceil32(return_data.size)) + 96] = 68
            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
            mem[(4 * ceil32(return_data.size)) + 196] = 32
            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if not ext_code.size(arg2):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), -1, 0
            mem[(4 * ceil32(return_data.size)) + 328] = 0
            call arg2 with:
               funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), -1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), -1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, Mask(224, 0, stor4) == bool(0, Mask(224, 0, stor4))
                    if not 0, Mask(224, 0, stor4):
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                    if not mem[(4 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        require ext_code.size(arg1)
        staticcall arg1.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), address(stor4)
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + 132] = address(stor4)
        mem[(2 * ceil32(return_data.size)) + 164] = -1
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), -1, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, Mask(224, 0, stor4) == bool(0, Mask(224, 0, stor4))
                if not 0, Mask(224, 0, stor4):
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(2 * ceil32(return_data.size)) + 264] = this.address
            mem[(2 * ceil32(return_data.size)) + 296] = address(stor4)
            require ext_code.size(arg2)
            staticcall arg2.allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), address(stor4)
            mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < -1:
                mem[(4 * ceil32(return_data.size)) + 264] = this.address
                mem[(4 * ceil32(return_data.size)) + 296] = address(stor4)
                require ext_code.size(arg2)
                staticcall arg2.allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(stor4)
                mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[(6 * ceil32(return_data.size)) + 296] = address(stor4)
                mem[(6 * ceil32(return_data.size)) + 328] = -1
                mem[(6 * ceil32(return_data.size)) + 260] = 68
                mem[(6 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                mem[(6 * ceil32(return_data.size)) + 360] = 32
                mem[(6 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 424 len 96] = 0, address(stor4), -1, 0
                mem[(6 * ceil32(return_data.size)) + 492] = 0
                call arg2 with:
                   funct Mask(32, 224, 0, address(stor4), -1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(stor4), -1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, Mask(224, 0, stor4) == bool(0, Mask(224, 0, stor4))
                        if not 0, Mask(224, 0, stor4):
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 456] == bool(mem[(6 * ceil32(return_data.size)) + 456])
                        if not mem[(6 * ceil32(return_data.size)) + 456]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(stor4)
            require ext_code.size(arg2)
            staticcall arg2.allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), address(stor4)
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < -1:
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(stor4)
                require ext_code.size(arg2)
                staticcall arg2.allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(stor4)
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(stor4)
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = -1
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(stor4), -1, 0
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                call arg2 with:
                   funct Mask(32, 224, 0, address(stor4), -1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(stor4), -1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, Mask(224, 0, stor4) == bool(0, Mask(224, 0, stor4))
                        if not 0, Mask(224, 0, stor4):
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(9 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                        if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        'SafeERC20: ERC20 operation did not succeed',
                                        mem[(9 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function deploy(uint32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Controlled::onlyController: Caller is not controller'
    if not pool[arg1 << 224].field_0:
        revert with 0, 'Pool doesn't exist'
    if balance[arg1 << 224][stor8[arg1 << 224].field_0]:
        if balance[arg1 << 224][stor8[arg1 << 224].field_256]:
            if pool[arg1 << 224].field_0 == pool[arg1 << 224].field_256:
                revert with 0, 'Identical token addresses'
            if pool[arg1 << 224].field_0 < pool[arg1 << 224].field_256:
                if not pool[arg1 << 224].field_0:
                    revert with 0, 'Zero address'
                require ext_code.size(address(stor3.field_24))
                staticcall address(stor3.field_24).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if pool[arg1 << 224].field_0 == pool[arg1 << 224].field_0:
                    if ext_call.return_data[18 len 14] > ext_call.return_data[50 len 14]:
                        if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        if balance[arg1 << 224][stor8[arg1 << 224].field_256] and 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                            revert with 0, 17
                        if balance[arg1 << 224][stor8[arg1 << 224].field_0] >= balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 1000:
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 1000 >= balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                require ext_code.size(address(stor4))
                                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                            else:
                                if balance[arg1 << 224][stor8[arg1 << 224].field_256] and 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                    revert with 0, 17
                                require ext_code.size(address(stor4))
                                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000, balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000:
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_0] -= balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                revert with 0, 17
                            balance[arg1 << 224][stor8[arg1 << 224].field_256] = 0
                        else:
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]:
                                revert with 0, 18
                            require ext_code.size(address(stor4))
                            call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_0] / 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 0, 0, this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                revert with 0, 17
                            balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] < 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_0] / 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            balance[arg1 << 224][stor8[arg1 << 224].field_256] -= 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_0] / 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    else:
                        if ext_call.return_data[18 len 14] >= ext_call.return_data[50 len 14]:
                            require ext_code.size(address(stor4))
                            call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, 0, 0, 0, 0, this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] < 0:
                                revert with 0, 17
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] < 0:
                                revert with 0, 17
                        else:
                            if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] and 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                revert with 0, 17
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] >= balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 1000:
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 1000 >= balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                    require ext_code.size(address(stor4))
                                    call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_256] = 0
                                else:
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_0] and 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                        revert with 0, 17
                                    require ext_code.size(address(stor4))
                                    call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000, 0, 0, this.address, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_256] -= balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000
                            else:
                                if balance[arg1 << 224][stor8[arg1 << 224].field_256] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                    revert with 0, 17
                                if not 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]:
                                    revert with 0, 18
                                require ext_code.size(address(stor4))
                                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_256] / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] < 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_256] / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_0] -= 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_256] / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                                if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_256] = 0
                else:
                    if ext_call.return_data[50 len 14] > ext_call.return_data[18 len 14]:
                        if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if balance[arg1 << 224][stor8[arg1 << 224].field_256] and 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                            revert with 0, 17
                        if balance[arg1 << 224][stor8[arg1 << 224].field_0] >= balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 1000:
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 1000 >= balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                require ext_code.size(address(stor4))
                                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                            else:
                                if balance[arg1 << 224][stor8[arg1 << 224].field_256] and 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                    revert with 0, 17
                                require ext_code.size(address(stor4))
                                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000, balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000:
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_0] -= balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                revert with 0, 17
                            balance[arg1 << 224][stor8[arg1 << 224].field_256] = 0
                        else:
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            require ext_code.size(address(stor4))
                            call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_0] / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 0, 0, this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                revert with 0, 17
                            balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] < 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_0] / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            balance[arg1 << 224][stor8[arg1 << 224].field_256] -= 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_0] / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    else:
                        if ext_call.return_data[50 len 14] >= ext_call.return_data[18 len 14]:
                            require ext_code.size(address(stor4))
                            call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, 0, 0, 0, 0, this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] < 0:
                                revert with 0, 17
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] < 0:
                                revert with 0, 17
                        else:
                            if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14]:
                                revert with 0, 18
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] and 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                revert with 0, 17
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] >= balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 1000:
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 1000 >= balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                    require ext_code.size(address(stor4))
                                    call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_256] = 0
                                else:
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_0] and 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                        revert with 0, 17
                                    require ext_code.size(address(stor4))
                                    call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000, 0, 0, this.address, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_256] -= balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000
                            else:
                                if balance[arg1 << 224][stor8[arg1 << 224].field_256] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                    revert with 0, 17
                                if not 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]:
                                    revert with 0, 18
                                require ext_code.size(address(stor4))
                                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_256] / 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] < 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_256] / 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_0] -= 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_256] / 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_256] = 0
            else:
                if not pool[arg1 << 224].field_256:
                    revert with 0, 'Zero address'
                require ext_code.size(address(stor3.field_24))
                staticcall address(stor3.field_24).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if pool[arg1 << 224].field_0 == pool[arg1 << 224].field_256:
                    if ext_call.return_data[18 len 14] > ext_call.return_data[50 len 14]:
                        if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        if balance[arg1 << 224][stor8[arg1 << 224].field_256] and 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                            revert with 0, 17
                        if balance[arg1 << 224][stor8[arg1 << 224].field_0] >= balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 1000:
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 1000 >= balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                require ext_code.size(address(stor4))
                                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                            else:
                                if balance[arg1 << 224][stor8[arg1 << 224].field_256] and 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                    revert with 0, 17
                                require ext_code.size(address(stor4))
                                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000, balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000:
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_0] -= balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                revert with 0, 17
                            balance[arg1 << 224][stor8[arg1 << 224].field_256] = 0
                        else:
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]:
                                revert with 0, 18
                            require ext_code.size(address(stor4))
                            call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_0] / 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 0, 0, this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                revert with 0, 17
                            balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] < 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_0] / 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            balance[arg1 << 224][stor8[arg1 << 224].field_256] -= 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_0] / 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    else:
                        if ext_call.return_data[18 len 14] >= ext_call.return_data[50 len 14]:
                            require ext_code.size(address(stor4))
                            call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, 0, 0, 0, 0, this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] < 0:
                                revert with 0, 17
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] < 0:
                                revert with 0, 17
                        else:
                            if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] and 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                revert with 0, 17
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] >= balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 1000:
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 1000 >= balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                    require ext_code.size(address(stor4))
                                    call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_256] = 0
                                else:
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_0] and 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                        revert with 0, 17
                                    require ext_code.size(address(stor4))
                                    call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000, 0, 0, this.address, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_256] -= balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000
                            else:
                                if balance[arg1 << 224][stor8[arg1 << 224].field_256] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                    revert with 0, 17
                                if not 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]:
                                    revert with 0, 18
                                require ext_code.size(address(stor4))
                                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_256] / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] < 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_256] / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_0] -= 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_256] / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                                if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_256] = 0
                else:
                    if ext_call.return_data[50 len 14] > ext_call.return_data[18 len 14]:
                        if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if balance[arg1 << 224][stor8[arg1 << 224].field_256] and 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                            revert with 0, 17
                        if balance[arg1 << 224][stor8[arg1 << 224].field_0] >= balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 1000:
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 1000 >= balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                require ext_code.size(address(stor4))
                                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                            else:
                                if balance[arg1 << 224][stor8[arg1 << 224].field_256] and 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                    revert with 0, 17
                                require ext_code.size(address(stor4))
                                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000, balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000:
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_0] -= balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                revert with 0, 17
                            balance[arg1 << 224][stor8[arg1 << 224].field_256] = 0
                        else:
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            require ext_code.size(address(stor4))
                            call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_0] / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 0, 0, this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                revert with 0, 17
                            balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] < 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_0] / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            balance[arg1 << 224][stor8[arg1 << 224].field_256] -= 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_0] / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    else:
                        if ext_call.return_data[50 len 14] >= ext_call.return_data[18 len 14]:
                            require ext_code.size(address(stor4))
                            call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, 0, 0, 0, 0, this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] < 0:
                                revert with 0, 17
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] < 0:
                                revert with 0, 17
                        else:
                            if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14]:
                                revert with 0, 18
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] and 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                revert with 0, 17
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] >= balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 1000:
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 1000 >= balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                    require ext_code.size(address(stor4))
                                    call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_256] = 0
                                else:
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_0] and 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                        revert with 0, 17
                                    require ext_code.size(address(stor4))
                                    call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000, 0, 0, this.address, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_256] -= balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000
                            else:
                                if balance[arg1 << 224][stor8[arg1 << 224].field_256] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                    revert with 0, 17
                                if not 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]:
                                    revert with 0, 18
                                require ext_code.size(address(stor4))
                                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_256] / 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] < 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_256] / 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_0] -= 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_256] / 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_256] = 0
            emit 0x250600b7: ext_call.return_data[64]
            emit 0xb28fd890: arg1 << 224, ext_call.return_data[64]
}

function sub_cf73715a(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    require ext_code.size(sub_0f0a1c6fAddress)
    staticcall sub_0f0a1c6fAddress.0x6f8c3f8a with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).isManager(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Controlled::onlyManager: Caller is not manager'
    if not pool[arg1 << 224].field_0:
        revert with 0, 'Pool doesn't exist'
    if balance[arg1 << 224][stor8[arg1 << 224].field_0]:
        if balance[arg1 << 224][stor8[arg1 << 224].field_256]:
            if pool[arg1 << 224].field_0 == pool[arg1 << 224].field_256:
                revert with 0, 'Identical token addresses'
            if pool[arg1 << 224].field_0 < pool[arg1 << 224].field_256:
                if not pool[arg1 << 224].field_0:
                    revert with 0, 'Zero address'
                require ext_code.size(address(stor3.field_24))
                staticcall address(stor3.field_24).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if pool[arg1 << 224].field_0 == pool[arg1 << 224].field_0:
                    if ext_call.return_data[18 len 14] > ext_call.return_data[50 len 14]:
                        if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        if balance[arg1 << 224][stor8[arg1 << 224].field_256] and 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                            revert with 0, 17
                        if balance[arg1 << 224][stor8[arg1 << 224].field_0] >= balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 1000:
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 1000 >= balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                require ext_code.size(address(stor4))
                                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                            else:
                                if balance[arg1 << 224][stor8[arg1 << 224].field_256] and 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                    revert with 0, 17
                                require ext_code.size(address(stor4))
                                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000, balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000:
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_0] -= balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                revert with 0, 17
                            balance[arg1 << 224][stor8[arg1 << 224].field_256] = 0
                        else:
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]:
                                revert with 0, 18
                            require ext_code.size(address(stor4))
                            call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_0] / 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 0, 0, this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                revert with 0, 17
                            balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] < 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_0] / 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            balance[arg1 << 224][stor8[arg1 << 224].field_256] -= 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_0] / 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    else:
                        if ext_call.return_data[18 len 14] >= ext_call.return_data[50 len 14]:
                            require ext_code.size(address(stor4))
                            call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, 0, 0, 0, 0, this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] < 0:
                                revert with 0, 17
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] < 0:
                                revert with 0, 17
                        else:
                            if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] and 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                revert with 0, 17
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] >= balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 1000:
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 1000 >= balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                    require ext_code.size(address(stor4))
                                    call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_256] = 0
                                else:
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_0] and 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                        revert with 0, 17
                                    require ext_code.size(address(stor4))
                                    call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000, 0, 0, this.address, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_256] -= balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000
                            else:
                                if balance[arg1 << 224][stor8[arg1 << 224].field_256] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                    revert with 0, 17
                                if not 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]:
                                    revert with 0, 18
                                require ext_code.size(address(stor4))
                                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_256] / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] < 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_256] / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_0] -= 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_256] / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                                if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_256] = 0
                else:
                    if ext_call.return_data[50 len 14] > ext_call.return_data[18 len 14]:
                        if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if balance[arg1 << 224][stor8[arg1 << 224].field_256] and 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                            revert with 0, 17
                        if balance[arg1 << 224][stor8[arg1 << 224].field_0] >= balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 1000:
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 1000 >= balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                require ext_code.size(address(stor4))
                                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                            else:
                                if balance[arg1 << 224][stor8[arg1 << 224].field_256] and 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                    revert with 0, 17
                                require ext_code.size(address(stor4))
                                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000, balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000:
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_0] -= balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                revert with 0, 17
                            balance[arg1 << 224][stor8[arg1 << 224].field_256] = 0
                        else:
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            require ext_code.size(address(stor4))
                            call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_0] / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 0, 0, this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                revert with 0, 17
                            balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] < 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_0] / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            balance[arg1 << 224][stor8[arg1 << 224].field_256] -= 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_0] / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    else:
                        if ext_call.return_data[50 len 14] >= ext_call.return_data[18 len 14]:
                            require ext_code.size(address(stor4))
                            call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, 0, 0, 0, 0, this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] < 0:
                                revert with 0, 17
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] < 0:
                                revert with 0, 17
                        else:
                            if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14]:
                                revert with 0, 18
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] and 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                revert with 0, 17
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] >= balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 1000:
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 1000 >= balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                    require ext_code.size(address(stor4))
                                    call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_256] = 0
                                else:
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_0] and 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                        revert with 0, 17
                                    require ext_code.size(address(stor4))
                                    call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000, 0, 0, this.address, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_256] -= balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000
                            else:
                                if balance[arg1 << 224][stor8[arg1 << 224].field_256] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                    revert with 0, 17
                                if not 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]:
                                    revert with 0, 18
                                require ext_code.size(address(stor4))
                                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_256] / 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] < 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_256] / 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_0] -= 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_256] / 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_256] = 0
            else:
                if not pool[arg1 << 224].field_256:
                    revert with 0, 'Zero address'
                require ext_code.size(address(stor3.field_24))
                staticcall address(stor3.field_24).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if pool[arg1 << 224].field_0 == pool[arg1 << 224].field_256:
                    if ext_call.return_data[18 len 14] > ext_call.return_data[50 len 14]:
                        if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        if balance[arg1 << 224][stor8[arg1 << 224].field_256] and 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                            revert with 0, 17
                        if balance[arg1 << 224][stor8[arg1 << 224].field_0] >= balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 1000:
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 1000 >= balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                require ext_code.size(address(stor4))
                                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                            else:
                                if balance[arg1 << 224][stor8[arg1 << 224].field_256] and 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                    revert with 0, 17
                                require ext_code.size(address(stor4))
                                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000, balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000:
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_0] -= balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                revert with 0, 17
                            balance[arg1 << 224][stor8[arg1 << 224].field_256] = 0
                        else:
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]:
                                revert with 0, 18
                            require ext_code.size(address(stor4))
                            call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_0] / 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 0, 0, this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                revert with 0, 17
                            balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] < 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_0] / 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            balance[arg1 << 224][stor8[arg1 << 224].field_256] -= 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_0] / 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    else:
                        if ext_call.return_data[18 len 14] >= ext_call.return_data[50 len 14]:
                            require ext_code.size(address(stor4))
                            call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, 0, 0, 0, 0, this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] < 0:
                                revert with 0, 17
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] < 0:
                                revert with 0, 17
                        else:
                            if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] and 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                revert with 0, 17
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] >= balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 1000:
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 1000 >= balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                    require ext_code.size(address(stor4))
                                    call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_256] = 0
                                else:
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_0] and 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                        revert with 0, 17
                                    require ext_code.size(address(stor4))
                                    call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000, 0, 0, this.address, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_256] -= balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000
                            else:
                                if balance[arg1 << 224][stor8[arg1 << 224].field_256] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                    revert with 0, 17
                                if not 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]:
                                    revert with 0, 18
                                require ext_code.size(address(stor4))
                                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_256] / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] < 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_256] / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_0] -= 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_256] / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                                if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_256] = 0
                else:
                    if ext_call.return_data[50 len 14] > ext_call.return_data[18 len 14]:
                        if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if balance[arg1 << 224][stor8[arg1 << 224].field_256] and 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                            revert with 0, 17
                        if balance[arg1 << 224][stor8[arg1 << 224].field_0] >= balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 1000:
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 1000 >= balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                require ext_code.size(address(stor4))
                                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                            else:
                                if balance[arg1 << 224][stor8[arg1 << 224].field_256] and 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                    revert with 0, 17
                                require ext_code.size(address(stor4))
                                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000, balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000:
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_0] -= balance[arg1 << 224][stor8[arg1 << 224].field_256] * 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                revert with 0, 17
                            balance[arg1 << 224][stor8[arg1 << 224].field_256] = 0
                        else:
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            require ext_code.size(address(stor4))
                            call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_0] / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 0, 0, this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                revert with 0, 17
                            balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] < 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_0] / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            balance[arg1 << 224][stor8[arg1 << 224].field_256] -= 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_0] / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    else:
                        if ext_call.return_data[50 len 14] >= ext_call.return_data[18 len 14]:
                            require ext_code.size(address(stor4))
                            call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, 0, 0, 0, 0, this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] < 0:
                                revert with 0, 17
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] < 0:
                                revert with 0, 17
                        else:
                            if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14]:
                                revert with 0, 18
                            if balance[arg1 << 224][stor8[arg1 << 224].field_0] and 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                revert with 0, 17
                            if balance[arg1 << 224][stor8[arg1 << 224].field_256] >= balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 1000:
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 1000 >= balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                    require ext_code.size(address(stor4))
                                    call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_256] = 0
                                else:
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_0] and 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] > -1 / balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                        revert with 0, 17
                                    require ext_code.size(address(stor4))
                                    call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, balance[arg1 << 224][stor8[arg1 << 224].field_0], balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000, 0, 0, this.address, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_0] < balance[arg1 << 224][stor8[arg1 << 224].field_0]:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_0] = 0
                                    if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000:
                                        revert with 0, 17
                                    balance[arg1 << 224][stor8[arg1 << 224].field_256] -= balance[arg1 << 224][stor8[arg1 << 224].field_0] * 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000
                            else:
                                if balance[arg1 << 224][stor8[arg1 << 224].field_256] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                    revert with 0, 17
                                if not 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]:
                                    revert with 0, 18
                                require ext_code.size(address(stor4))
                                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args pool[arg1 << 224].field_0, pool[arg1 << 224].field_256, 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_256] / 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), balance[arg1 << 224][stor8[arg1 << 224].field_256], 0, 0, this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if balance[arg1 << 224][stor8[arg1 << 224].field_0] < 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_256] / 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_0] -= 1000 * balance[arg1 << 224][stor8[arg1 << 224].field_256] / 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                if balance[arg1 << 224][stor8[arg1 << 224].field_256] < balance[arg1 << 224][stor8[arg1 << 224].field_256]:
                                    revert with 0, 17
                                balance[arg1 << 224][stor8[arg1 << 224].field_256] = 0
            emit 0x250600b7: ext_call.return_data[64]
            emit 0xb28fd890: arg1 << 224, ext_call.return_data[64]
}



}
