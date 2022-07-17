contract main {




// =====================  Runtime code  =====================


#
#  - sub_29df86c1(?)
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
mapping of uint256 balanceOf;
mapping of uint8 stor1;
array of struct stor2;
address owner;
uint256 stor4;
uint8 stor5;
uint8 stor5; offset 8
address managerAddress; offset 16
uint256 stor5; offset 8
address pairAddress;
address sub_85adc8b0Address;
address swapAddress;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 sub_f468fba8;
array of struct stor14;
mapping of struct stor15;
array of uint256 sub_627dd5ca;

function balanceOf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function sub_06551ca5(?) {
    return bool(uint8(stor5.field_0))
}

function manager() {
    return managerAddress
}

function isPresaleActive() {
    return bool(uint8(stor5.field_0))
}

function sub_627dd5ca(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_627dd5ca[arg1]
    return sub_627dd5ca[arg1][arg2]
}

function swapAddress() {
    return swapAddress
}

function sub_85adc8b0(?) {
    return sub_85adc8b0Address
}

function owner() {
    return owner
}

function sub_a82f0131(?) {
    return bool(uint8(stor5.field_8))
}

function pairAddress() {
    return pairAddress
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor1[address(arg1)][address(arg2)])
}

function sub_f468fba8(?) {
    return sub_f468fba8
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_7fd1dc67(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f468fba8 = arg1
}

function setManager(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    managerAddress = arg1
}

function setPresaleActive(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor5.field_0) = uint8(arg1)
}

function sub_3a687869(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor5.field_8) = Mask(248, 0, bool(arg1))
}

function swapTokensForAVAX(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(swapAddress)
    call swapAddress.0xef28fd9c with:
         gas gas_remaining wei
        args msg.sender, arg1
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

function withdraw() {
    if stor4 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor4 = 2
    if managerAddress != msg.sender:
        revert with 0, 'only manager can call withdraw'
    call managerAddress with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send AVAX'
    stor4 = 1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor1[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_15889446(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(arg1):
        pairAddress = address(arg1)
    if address(arg2):
        sub_85adc8b0Address = address(arg2)
    if address(arg3):
        swapAddress = address(arg3)
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0xd9b67a2600000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xe89341c00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_4d593bc5(?) {
    require calldata.size - 4 >= 32
    if stor4 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor4 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_85adc8b0Address)
    call sub_85adc8b0Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor4 = 1
}

function sub_ee98a528(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    idx = 0
    s = 0
    while idx < sub_627dd5ca[address(arg1)]:
        if idx >= sub_627dd5ca[address(arg1)]:
            revert with 0, 50
        if stor15[stor16[address(arg1)][idx]].field_256 != arg2:
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 16
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        mem[0] = address(arg1)
        mem[32] = 16
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_185aa308(?) {
    require ext_code.size(pairAddress)
    staticcall pairAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[50 len 14] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[18 len 14]:
        revert with 0, 18
    return (10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
}

function sub_8955a0e6(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(pairAddress)
    staticcall pairAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[50 len 14] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[18 len 14]:
        revert with 0, 18
    if arg1 and 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / arg1:
        revert with 0, 17
    if arg1 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10^18 and sub_f468fba8 > -1 / arg1 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10^18:
        revert with 0, 17
    return (arg1 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10^18 * sub_f468fba8 / 100)
}

function sub_32295c84(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 0
    while idx < stor14.length:
        if not address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
        mem[0] = address(arg1)
        mem[32] = sha3(idx, 0)
        if balanceOf[idx][address(arg1)] <= 0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= stor14.length:
            revert with 0, 50
        if stor14[idx].field_2048 and stor14[idx].field_256 > -1 / stor14[idx].field_2048:
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if not address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
        mem[0] = address(arg1)
        mem[32] = sha3(idx, 0)
        if balanceOf[idx][address(arg1)] and stor14[idx].field_2048 * stor14[idx].field_256 / stor9 > -1 / balanceOf[idx][address(arg1)]:
            revert with 0, 17
        if s > !(balanceOf[idx][address(arg1)] * stor14[idx].field_2048 * stor14[idx].field_256 / stor9):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (balanceOf[idx][address(arg1)] * stor14[idx].field_2048 * stor14[idx].field_256 / stor9)
        continue 
    return s
}

function balanceOfBatch(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = ceil32(32 * arg1.length) + 129
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155: accounts and ids length mismatch'
    if arg1.length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98] = arg1.length
    if arg1.length:
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if idx >= arg2.length:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + ceil32(32 * arg1.length) + 129], 0)
        if idx >= arg1.length:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130] = balanceOf[mem[(32 * idx) + ceil32(32 * arg1.length) + 129]][address(mem[(32 * idx) + 128])]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length])
}

function sub_9600ac5b(?) {
    require calldata.size - 4 >= 32
    if bool(stor15[arg1].field_1792):
        if bool(stor15[arg1].field_1792) == uint255(stor15[arg1].field_1792) * 0.5 < 32:
            revert with 0, 34
        if bool(stor15[arg1].field_1792):
            if bool(stor15[arg1].field_1792) == uint255(stor15[arg1].field_1792) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor15[arg1].field_1792):
                if 31 >= uint255(stor15[arg1].field_1792) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor15[arg1].field_1800)
                else:
                    mem[128] = stor15[arg1][7].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor15[arg1].field_1792) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor15[arg1][s + 7].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor15[arg1].field_1792) == stor15[arg1].field_1793 % 128 < 32:
                revert with 0, 34
            if stor15[arg1].field_1793 % 128:
                if 31 >= stor15[arg1].field_1793 % 128:
                    mem[128] = 256 * Mask(248, 0, stor15[arg1].field_1800)
                else:
                    mem[128] = stor15[arg1][7].field_0
                    idx = 128
                    s = 0
                    while stor15[arg1].field_1793 % 128 + 96 > idx:
                        mem[idx + 32] = stor15[arg1][s + 7].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return address(stor15[arg1].field_0), 
               stor15[arg1].field_256,
               stor15[arg1].field_512,
               stor15[arg1].field_768,
               stor15[arg1].field_1024,
               stor15[arg1].field_1280,
               stor15[arg1].field_1536,
               Array(len=2 * Mask(256, -1, stor15[arg1].field_1792), data=mem[128 len ceil32(uint255(stor15[arg1].field_1792) * 0.5)])
    if bool(stor15[arg1].field_1792) == stor15[arg1].field_1793 % 128 < 32:
        revert with 0, 34
    if bool(stor15[arg1].field_1792):
        if bool(stor15[arg1].field_1792) == uint255(stor15[arg1].field_1792) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor15[arg1].field_1792):
            if 31 >= uint255(stor15[arg1].field_1792) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor15[arg1].field_1800)
            else:
                mem[128] = stor15[arg1][7].field_0
                idx = 128
                s = 0
                while (uint255(stor15[arg1].field_1792) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor15[arg1][s + 7].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor15[arg1].field_1792) == stor15[arg1].field_1793 % 128 < 32:
            revert with 0, 34
        if stor15[arg1].field_1793 % 128:
            if 31 >= stor15[arg1].field_1793 % 128:
                mem[128] = 256 * Mask(248, 0, stor15[arg1].field_1800)
            else:
                mem[128] = stor15[arg1][7].field_0
                idx = 128
                s = 0
                while stor15[arg1].field_1793 % 128 + 96 > idx:
                    mem[idx + 32] = stor15[arg1][s + 7].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return address(stor15[arg1].field_0), 
           stor15[arg1].field_256,
           stor15[arg1].field_512,
           stor15[arg1].field_768,
           stor15[arg1].field_1024,
           stor15[arg1].field_1280,
           stor15[arg1].field_1536,
           Array(len=stor15[arg1].field_1792 % 128, data=mem[128 len ceil32(stor15[arg1].field_1793 % 128)])
}

function sub_80c0f19b(?) {
    require calldata.size - 4 >= 32
    if bool(stor15[arg1].field_1792):
        if bool(stor15[arg1].field_1792) == uint255(stor15[arg1].field_1792) * 0.5 < 32:
            revert with 0, 34
        if bool(stor15[arg1].field_1792):
            if bool(stor15[arg1].field_1792) == uint255(stor15[arg1].field_1792) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor15[arg1].field_1792):
                if 31 >= uint255(stor15[arg1].field_1792) * 0.5:
                    mem[640] = 256 * Mask(248, 0, stor15[arg1].field_1800)
                else:
                    mem[640] = stor15[arg1][7].field_0
                    idx = 640
                    s = 0
                    while (uint255(stor15[arg1].field_1792) * 0.5) + 608 > idx:
                        mem[idx + 32] = stor15[arg1][s + 7].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor15[arg1].field_1792) == stor15[arg1].field_1793 % 128 < 32:
                revert with 0, 34
            if stor15[arg1].field_1793 % 128:
                if 31 >= stor15[arg1].field_1793 % 128:
                    mem[640] = 256 * Mask(248, 0, stor15[arg1].field_1800)
                else:
                    mem[640] = stor15[arg1][7].field_0
                    idx = 640
                    s = 0
                    while stor15[arg1].field_1793 % 128 + 608 > idx:
                        mem[idx + 32] = stor15[arg1][s + 7].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, address(stor15[arg1].field_0), 
               stor15[arg1].field_256,
               stor15[arg1].field_512,
               stor15[arg1].field_768,
               stor15[arg1].field_1024,
               stor15[arg1].field_1280,
               stor15[arg1].field_1536,
               256,
               2 * Mask(256, -1, stor15[arg1].field_1792),
               mem[640 len ceil32(uint255(stor15[arg1].field_1792) * 0.5)]
    if bool(stor15[arg1].field_1792) == stor15[arg1].field_1793 % 128 < 32:
        revert with 0, 34
    if bool(stor15[arg1].field_1792):
        if bool(stor15[arg1].field_1792) == uint255(stor15[arg1].field_1792) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor15[arg1].field_1792):
            if 31 >= uint255(stor15[arg1].field_1792) * 0.5:
                mem[640] = 256 * Mask(248, 0, stor15[arg1].field_1800)
            else:
                mem[640] = stor15[arg1][7].field_0
                idx = 640
                s = 0
                while (uint255(stor15[arg1].field_1792) * 0.5) + 608 > idx:
                    mem[idx + 32] = stor15[arg1][s + 7].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor15[arg1].field_1792) == stor15[arg1].field_1793 % 128 < 32:
            revert with 0, 34
        if stor15[arg1].field_1793 % 128:
            if 31 >= stor15[arg1].field_1793 % 128:
                mem[640] = 256 * Mask(248, 0, stor15[arg1].field_1800)
            else:
                mem[640] = stor15[arg1][7].field_0
                idx = 640
                s = 0
                while stor15[arg1].field_1793 % 128 + 608 > idx:
                    mem[idx + 32] = stor15[arg1][s + 7].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, address(stor15[arg1].field_0), 
           stor15[arg1].field_256,
           stor15[arg1].field_512,
           stor15[arg1].field_768,
           stor15[arg1].field_1024,
           stor15[arg1].field_1280,
           stor15[arg1].field_1536,
           256,
           stor15[arg1].field_1792 % 128,
           mem[640 len ceil32(stor15[arg1].field_1793 % 128)]
}

function collection(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor14.length
    if bool(stor14[arg1].field_0):
        if bool(stor14[arg1].field_0) == uint255(stor14[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor14[arg1].field_0):
            if bool(stor14[arg1].field_0) == uint255(stor14[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor14[arg1].field_0):
                if 31 >= uint255(stor14[arg1].field_0) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor14[arg1].field_8)
                else:
                    mem[128] = stor14[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor14[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor14[(11 * arg1) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor14[arg1].field_0) == stor14[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor14[arg1].field_1 % 128:
                if 31 >= stor14[arg1].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor14[arg1].field_8)
                else:
                    mem[128] = stor14[arg1].field_0
                    idx = 128
                    s = 0
                    while stor14[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor14[(11 * arg1) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, stor14[arg1].field_0), data=mem[128 len ceil32(uint255(stor14[arg1].field_0) * 0.5)]), 
               stor14[arg1].field_256,
               stor14[arg1].field_512,
               stor14[arg1].field_768,
               stor14[arg1].field_1024,
               stor14[arg1].field_1280,
               stor14[arg1].field_1536,
               stor14[arg1].field_1792,
               stor14[arg1].field_2048,
               stor14[arg1].field_2304,
               stor14[arg1].field_2560
    if bool(stor14[arg1].field_0) == stor14[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor14[arg1].field_0):
        if bool(stor14[arg1].field_0) == uint255(stor14[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor14[arg1].field_0):
            if 31 >= uint255(stor14[arg1].field_0) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor14[arg1].field_8)
            else:
                mem[128] = stor14[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor14[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor14[(11 * arg1) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor14[arg1].field_0) == stor14[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor14[arg1].field_1 % 128:
            if 31 >= stor14[arg1].field_1 % 128:
                mem[128] = 256 * Mask(248, 0, stor14[arg1].field_8)
            else:
                mem[128] = stor14[arg1].field_0
                idx = 128
                s = 0
                while stor14[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor14[(11 * arg1) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor14[arg1].field_0 % 128, data=mem[128 len ceil32(stor14[arg1].field_1 % 128)]), 
           stor14[arg1].field_256,
           stor14[arg1].field_512,
           stor14[arg1].field_768,
           stor14[arg1].field_1024,
           stor14[arg1].field_1280,
           stor14[arg1].field_1536,
           stor14[arg1].field_1792,
           stor14[arg1].field_2048,
           stor14[arg1].field_2304,
           stor14[arg1].field_2560
}

function uri(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2.length):
                if 31 < uint255(stor2.length) * 0.5:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor2.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
        else:
            if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor2.length.field_1 % 128:
                if 31 < stor2.length.field_1 % 128:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
        mem[ceil32(uint255(stor2.length) * 0.5) + 192 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
        if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
    if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2.length):
            if 31 < uint255(stor2.length) * 0.5:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while (uint255(stor2.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
    else:
        if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor2.length.field_1 % 128:
            if 31 < stor2.length.field_1 % 128:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
    mem[ceil32(stor2.length.field_1 % 128) + 192 len ceil32(stor2.length.field_1 % 128)] = mem[128 len ceil32(stor2.length.field_1 % 128)]
    if ceil32(stor2.length.field_1 % 128) > stor2.length.field_1 % 128:
        mem[ceil32(stor2.length.field_1 % 128) + stor2.length.field_1 % 128 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)], mem[(2 * ceil32(stor2.length.field_1 % 128)) + 192 len 2 * ceil32(stor2.length.field_1 % 128)]), 
}

function mint(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if arg1 >= stor14.length:
        revert with 0, 50
    if stor14[arg1].field_2304 > stor14[arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'all of this collection are purchased'
    if arg1 >= stor14.length:
        revert with 0, 50
    idx = 0
    s = 0
    while idx < sub_627dd5ca[address(msg.sender)]:
        if idx >= sub_627dd5ca[address(msg.sender)]:
            revert with 0, 50
        if stor15[stor16[address(msg.sender)][idx]].field_256 != arg1:
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 16
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = 16
        idx = idx + 1
        s = s + 1
        continue 
    if s >= stor14[arg1].field_2560:
        revert with 0, 'minted nodes exceed amount limit'
    if arg1 >= stor14.length:
        revert with 0, 50
    require ext_code.size(sub_85adc8b0Address)
    staticcall sub_85adc8b0Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint8(stor5.field_0):
        if ext_call.return_data[0] < stor14[arg1].field_256:
            revert with 0, 'receiver's balance is less than node price'
    else:
        if ext_call.return_data[0] < uint255(stor14[arg1].field_257):
            revert with 0, 'receiver's balance is less than node price'
    if 1 > !stor10:
        revert with 0, 17
    if stor10 == -1:
        revert with 0, 17
    stor10++
    stor15[stor10 + 1].field_0 = msg.sender or Mask(96, 160, stor15[stor10 + 1].field_0)
    stor15[stor10 + 1].field_256 = arg1
    stor15[stor10 + 1].field_512 = block.timestamp
    stor15[stor10 + 1].field_768 = block.timestamp
    if bool(stor15[stor10 + 1].field_1792):
        if bool(stor15[stor10 + 1].field_1792) == uint255(stor15[stor10 + 1].field_1792) * 0.5 < 32:
            revert with 0, 34
        if not arg2.length:
            stor15[stor10 + 1].field_1792 = 0
            idx = 0
            while (uint255(stor15[stor10 + 1].field_1792) * 0.5) + 31 / 32 > idx:
                stor15[stor10 + 1][idx + 7].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor15[stor10 + 1].field_1792 = (2 * arg2.length) + 1
            s = 0
            idx = arg2 + 36
            while arg2 + arg2.length + 36 > idx:
                stor15[stor10 + 1][s + 7].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg2.length + 31) >> 5
            while (uint255(stor15[stor10 + 1].field_1792) * 0.5) + 31 / 32 > idx:
                stor15[stor10 + 1][idx + 7].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor15[stor10 + 1].field_1792) == stor15[stor10 + 1].field_1793 % 128 < 32:
            revert with 0, 34
        if not arg2.length:
            stor15[stor10 + 1].field_1792 = 0
            idx = 0
            while stor15[stor10 + 1].field_1793 % 128 + 31 / 32 > idx:
                stor15[stor10 + 1][idx + 7].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor15[stor10 + 1].field_1792 = (2 * arg2.length) + 1
            s = 0
            idx = arg2 + 36
            while arg2 + arg2.length + 36 > idx:
                stor15[stor10 + 1][s + 7].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg2.length + 31) >> 5
            while stor15[stor10 + 1].field_1793 % 128 + 31 / 32 > idx:
                stor15[stor10 + 1][idx + 7].field_0 = 0
                idx = idx + 1
                continue 
    if arg1 >= stor14.length:
        revert with 0, 50
    if stor14[arg1].field_2304 == -1:
        revert with 0, 17
    stor14[arg1].field_2304++
    if arg1 >= stor14.length:
        revert with 0, 50
    require ext_code.size(sub_85adc8b0Address)
    if not uint8(stor5.field_0):
        call sub_85adc8b0Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), stor14[arg1].field_256
    else:
        call sub_85adc8b0Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), uint255(stor14[arg1].field_257)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg2.length:
        mem[(2 * ceil32(return_data.size)) + 160 len arg2.length] = arg2[all]
        mem[arg2.length + (2 * ceil32(return_data.size)) + 160] = 0
        emit URI(Array(len=arg2.length, data=arg2[all]), stor10 + 1);
    if not msg.sender:
        revert with 0, 'ERC1155: mint to the zero address'
    if balanceOf[arg1][address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[arg1][address(msg.sender)]++
    emit TransferSingle(arg1, 1, msg.sender, 0, msg.sender);
    if not ext_code.size(msg.sender):
        sub_627dd5ca[msg.sender]++
        sub_627dd5ca[msg.sender][sub_627dd5ca[msg.sender]] = stor10 + 1
    mem[(2 * ceil32(return_data.size)) + 260] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 292] = 0
    mem[(2 * ceil32(return_data.size)) + 324] = arg1
    mem[(2 * ceil32(return_data.size)) + 356] = 1
    mem[(2 * ceil32(return_data.size)) + 388] = 160
    mem[(2 * ceil32(return_data.size)) + 420] = 0
    mem[(2 * ceil32(return_data.size)) + 452 len 0] = None
    require ext_code.size(msg.sender)
    call msg.sender.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, 0, arg1, 1, 160, 0
    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    require return_data.size >= 32
    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
    if 0xf23a6e6100000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0]):
        sub_627dd5ca[msg.sender]++
        sub_627dd5ca[msg.sender][sub_627dd5ca[msg.sender]] = stor10 + 1
    mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 260] = 32
    mem[(4 * ceil32(return_data.size)) + 292] = 40
    mem[(4 * ceil32(return_data.size)) + 324] = 'ERC1155: ERC1155Receiver rejecte'
    mem[(4 * ceil32(return_data.size)) + 356] = 'd tokens' << 192
    revert with memory
      from (4 * ceil32(return_data.size)) + 256
       len (5 * ceil32(return_data.size)) + 132
}

function sub_46be42fa(?) {
    require calldata.size - 4 >= 32
    if not address(stor15[arg1].field_0):
        revert with 0, 'No node exist'
    if stor15[arg1].field_256 >= stor14.length:
        revert with 0, 50
    if block.timestamp < stor15[arg1].field_512:
        revert with 0, 17
    if not stor11:
        revert with 0, 18
    if block.timestamp < stor15[arg1].field_768:
        revert with 0, 17
    if not stor11:
        revert with 0, 18
    if stor15[arg1].field_256 >= stor14.length:
        revert with 0, 50
    if block.timestamp - stor15[arg1].field_512 / stor11 <= stor12:
        if block.timestamp - stor15[arg1].field_512 / stor11 and stor14[stor15[arg1].field_256].field_768 > -1 / block.timestamp - stor15[arg1].field_512 / stor11:
            revert with 0, 17
        if stor15[arg1].field_256 >= stor14.length:
            revert with 0, 50
        if block.timestamp - stor15[arg1].field_768 / stor11 < stor12:
            idx = 0
            while idx <= block.timestamp - stor15[arg1].field_768 / stor11:
                if 0 > !idx:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if False and stor14[stor15[arg1].field_256].field_1536 > 0:
                revert with 0, 17
            if block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 and stor14[stor15[arg1].field_256].field_256 > -1 / block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if False and stor14[stor15[arg1].field_256].field_256 > 0:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            return block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9, 
                   0 / stor9
        idx = 0
        while idx <= stor12:
            if 0 > !idx:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if block.timestamp - stor15[arg1].field_768 / stor11 < stor12:
            revert with 0, 17
        if stor14[stor15[arg1].field_256].field_1792 and (block.timestamp - stor15[arg1].field_768 / stor11) - stor12 > -1 / stor14[stor15[arg1].field_256].field_1792:
            revert with 0, 17
        if False and stor14[stor15[arg1].field_256].field_1536 > 0:
            revert with 0, 17
        if 0 > !((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792)):
            revert with 0, 17
        if block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 and stor14[stor15[arg1].field_256].field_256 > -1 / block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768:
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792) and stor14[stor15[arg1].field_256].field_256 > -1 / (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792):
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        return block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9, 
               (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9
    if block.timestamp - stor15[arg1].field_512 / stor11 < stor12:
        revert with 0, 17
    if (block.timestamp - stor15[arg1].field_512 / stor11) - stor12 and stor14[stor15[arg1].field_256].field_1280 > -1 / (block.timestamp - stor15[arg1].field_512 / stor11) - stor12:
        revert with 0, 17
    if stor14[stor15[arg1].field_256].field_1024 > !((block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280) - (stor12 * stor14[stor15[arg1].field_256].field_1280)):
        revert with 0, 17
    if stor15[arg1].field_256 >= stor14.length:
        revert with 0, 50
    if block.timestamp - stor15[arg1].field_768 / stor11 < stor12:
        idx = 0
        while idx <= block.timestamp - stor15[arg1].field_768 / stor11:
            if 0 > !idx:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if False and stor14[stor15[arg1].field_256].field_1536 > 0:
            revert with 0, 17
        if stor14[stor15[arg1].field_256].field_1024 + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280) - (stor12 * stor14[stor15[arg1].field_256].field_1280) and stor14[stor15[arg1].field_256].field_256 > -1 / stor14[stor15[arg1].field_256].field_1024 + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280) - (stor12 * stor14[stor15[arg1].field_256].field_1280):
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if False and stor14[stor15[arg1].field_256].field_256 > 0:
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        return (stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9, 
               0 / stor9
    idx = 0
    while idx <= stor12:
        if 0 > !idx:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if block.timestamp - stor15[arg1].field_768 / stor11 < stor12:
        revert with 0, 17
    if stor14[stor15[arg1].field_256].field_1792 and (block.timestamp - stor15[arg1].field_768 / stor11) - stor12 > -1 / stor14[stor15[arg1].field_256].field_1792:
        revert with 0, 17
    if False and stor14[stor15[arg1].field_256].field_1536 > 0:
        revert with 0, 17
    if 0 > !((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792)):
        revert with 0, 17
    if stor14[stor15[arg1].field_256].field_1024 + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280) - (stor12 * stor14[stor15[arg1].field_256].field_1280) and stor14[stor15[arg1].field_256].field_256 > -1 / stor14[stor15[arg1].field_256].field_1024 + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280) - (stor12 * stor14[stor15[arg1].field_256].field_1280):
        revert with 0, 17
    if not stor9:
        revert with 0, 18
    if (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792) and stor14[stor15[arg1].field_256].field_256 > -1 / (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792):
        revert with 0, 17
    if not stor9:
        revert with 0, 18
    return (stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9, 
           (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9
}

function sub_8de45c1a(?) {
    require calldata.size - 4 >= 32
    if not address(stor15[arg1].field_0):
        revert with 0, 'No node exist'
    if stor15[arg1].field_256 >= stor14.length:
        revert with 0, 50
    if block.timestamp < stor15[arg1].field_512:
        revert with 0, 17
    if not stor11:
        revert with 0, 18
    if block.timestamp < stor15[arg1].field_768:
        revert with 0, 17
    if not stor11:
        revert with 0, 18
    if stor15[arg1].field_256 >= stor14.length:
        revert with 0, 50
    if block.timestamp - stor15[arg1].field_512 / stor11 <= stor12:
        if block.timestamp - stor15[arg1].field_512 / stor11 and stor14[stor15[arg1].field_256].field_768 > -1 / block.timestamp - stor15[arg1].field_512 / stor11:
            revert with 0, 17
        if stor15[arg1].field_256 >= stor14.length:
            revert with 0, 50
        if block.timestamp - stor15[arg1].field_768 / stor11 < stor12:
            idx = 0
            while idx <= block.timestamp - stor15[arg1].field_768 / stor11:
                if 0 > !idx:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if False and stor14[stor15[arg1].field_256].field_1536 > 0:
                revert with 0, 17
            if block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 and stor14[stor15[arg1].field_256].field_256 > -1 / block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if False and stor14[stor15[arg1].field_256].field_256 > 0:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if 0 / stor9 > !(block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9):
                revert with 0, 17
            if (0 / stor9) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9) < stor15[arg1].field_1024:
                revert with 0, 17
            return ((0 / stor9) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9) - stor15[arg1].field_1024)
        idx = 0
        while idx <= stor12:
            if 0 > !idx:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if block.timestamp - stor15[arg1].field_768 / stor11 < stor12:
            revert with 0, 17
        if stor14[stor15[arg1].field_256].field_1792 and (block.timestamp - stor15[arg1].field_768 / stor11) - stor12 > -1 / stor14[stor15[arg1].field_256].field_1792:
            revert with 0, 17
        if False and stor14[stor15[arg1].field_256].field_1536 > 0:
            revert with 0, 17
        if 0 > !((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792)):
            revert with 0, 17
        if block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 and stor14[stor15[arg1].field_256].field_256 > -1 / block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768:
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792) and stor14[stor15[arg1].field_256].field_256 > -1 / (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792):
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9 > !(block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9):
            revert with 0, 17
        if ((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9) < stor15[arg1].field_1024:
            revert with 0, 17
        return (((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9) - stor15[arg1].field_1024)
    if block.timestamp - stor15[arg1].field_512 / stor11 < stor12:
        revert with 0, 17
    if (block.timestamp - stor15[arg1].field_512 / stor11) - stor12 and stor14[stor15[arg1].field_256].field_1280 > -1 / (block.timestamp - stor15[arg1].field_512 / stor11) - stor12:
        revert with 0, 17
    if stor14[stor15[arg1].field_256].field_1024 > !((block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280) - (stor12 * stor14[stor15[arg1].field_256].field_1280)):
        revert with 0, 17
    if stor15[arg1].field_256 >= stor14.length:
        revert with 0, 50
    if block.timestamp - stor15[arg1].field_768 / stor11 < stor12:
        idx = 0
        while idx <= block.timestamp - stor15[arg1].field_768 / stor11:
            if 0 > !idx:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if False and stor14[stor15[arg1].field_256].field_1536 > 0:
            revert with 0, 17
        if stor14[stor15[arg1].field_256].field_1024 + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280) - (stor12 * stor14[stor15[arg1].field_256].field_1280) and stor14[stor15[arg1].field_256].field_256 > -1 / stor14[stor15[arg1].field_256].field_1024 + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280) - (stor12 * stor14[stor15[arg1].field_256].field_1280):
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if False and stor14[stor15[arg1].field_256].field_256 > 0:
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if 0 / stor9 > !((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9):
            revert with 0, 17
        if (0 / stor9) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9) < stor15[arg1].field_1024:
            revert with 0, 17
        return ((0 / stor9) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9) - stor15[arg1].field_1024)
    idx = 0
    while idx <= stor12:
        if 0 > !idx:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if block.timestamp - stor15[arg1].field_768 / stor11 < stor12:
        revert with 0, 17
    if stor14[stor15[arg1].field_256].field_1792 and (block.timestamp - stor15[arg1].field_768 / stor11) - stor12 > -1 / stor14[stor15[arg1].field_256].field_1792:
        revert with 0, 17
    if False and stor14[stor15[arg1].field_256].field_1536 > 0:
        revert with 0, 17
    if 0 > !((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792)):
        revert with 0, 17
    if stor14[stor15[arg1].field_256].field_1024 + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280) - (stor12 * stor14[stor15[arg1].field_256].field_1280) and stor14[stor15[arg1].field_256].field_256 > -1 / stor14[stor15[arg1].field_256].field_1024 + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280) - (stor12 * stor14[stor15[arg1].field_256].field_1280):
        revert with 0, 17
    if not stor9:
        revert with 0, 18
    if (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792) and stor14[stor15[arg1].field_256].field_256 > -1 / (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792):
        revert with 0, 17
    if not stor9:
        revert with 0, 18
    if (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9 > !((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9):
        revert with 0, 17
    if ((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9) < stor15[arg1].field_1024:
        revert with 0, 17
    return (((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9) - stor15[arg1].field_1024)
}

function sub_cc4da26d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_627dd5ca[address(arg1)]:
        revert with 0, 'No have a node'
    idx = 0
    s = 0
    while idx < sub_627dd5ca[address(arg1)]:
        if idx >= sub_627dd5ca[address(arg1)]:
            revert with 0, 50
        if not address(stor15[stor16[address(arg1)][idx]].field_0):
            revert with 0, 'No node exist'
        if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
            revert with 0, 50
        if block.timestamp < stor15[stor16[address(arg1)][idx]].field_512:
            revert with 0, 17
        if not stor11:
            revert with 0, 18
        if block.timestamp < stor15[stor16[address(arg1)][idx]].field_768:
            revert with 0, 17
        if not stor11:
            revert with 0, 18
        if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
            revert with 0, 50
        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 <= stor12:
            if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 > -1 / block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11:
                revert with 0, 17
            if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
                revert with 0, 50
            if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
                t = 0
                while t <= block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11:
                    if 0 > !t:
                        revert with 0, 17
                    if t == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 16
                    t = t + 1
                    continue 
                if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                    revert with 0, 17
                if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768:
                    revert with 0, 17
                if not stor9:
                    revert with 0, 18
                if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > 0:
                    revert with 0, 17
                if not stor9:
                    revert with 0, 18
                if 0 / stor9 > !(block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9):
                    revert with 0, 17
                if (0 / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                    revert with 0, 17
                if s > !((0 / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 16
                idx = idx + 1
                s = s + (0 / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                continue 
            t = 0
            while t <= stor12:
                if 0 > !t:
                    revert with 0, 17
                if t == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 16
                t = t + 1
                continue 
            if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
                revert with 0, 17
            if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 and (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11) - stor12 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792:
                revert with 0, 17
            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                revert with 0, 17
            if 0 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792)):
                revert with 0, 17
            if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9 > !(block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9):
                revert with 0, 17
            if ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                revert with 0, 17
            if s > !(((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 16
            idx = idx + 1
            s = s + ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
            continue 
        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 < stor12:
            revert with 0, 17
        if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11) - stor12 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 > -1 / (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11) - stor12:
            revert with 0, 17
        if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280)):
            revert with 0, 17
        if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
            revert with 0, 50
        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
            t = 0
            while t <= block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11:
                if 0 > !t:
                    revert with 0, 17
                if t == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 16
                t = t + 1
                continue 
            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                revert with 0, 17
            if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > 0:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if 0 / stor9 > !((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9):
                revert with 0, 17
            if (0 / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                revert with 0, 17
            if s > !((0 / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 16
            idx = idx + 1
            s = s + (0 / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
            continue 
        t = 0
        while t <= stor12:
            if 0 > !t:
                revert with 0, 17
            if t == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 16
            t = t + 1
            continue 
        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
            revert with 0, 17
        if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 and (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11) - stor12 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792:
            revert with 0, 17
        if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
            revert with 0, 17
        if 0 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792)):
            revert with 0, 17
        if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280):
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792):
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9 > !((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9):
            revert with 0, 17
        if ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
            revert with 0, 17
        if s > !(((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        mem[0] = address(arg1)
        mem[32] = 16
        idx = idx + 1
        s = s + ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
        continue 
    return s
}

function sub_e7694bc6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_627dd5ca[address(arg1)]:
        revert with 0, 'No have a node'
    idx = 0
    s = 0
    while idx < sub_627dd5ca[address(arg1)]:
        if idx >= sub_627dd5ca[address(arg1)]:
            revert with 0, 50
        if not address(stor15[stor16[address(arg1)][idx]].field_0):
            revert with 0, 'No node exist'
        if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
            revert with 0, 50
        if block.timestamp < stor15[stor16[address(arg1)][idx]].field_512:
            revert with 0, 17
        if not stor11:
            revert with 0, 18
        if block.timestamp < stor15[stor16[address(arg1)][idx]].field_768:
            revert with 0, 17
        if not stor11:
            revert with 0, 18
        if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
            revert with 0, 50
        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 <= stor12:
            if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 > -1 / block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11:
                revert with 0, 17
            if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
                revert with 0, 50
            if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
                t = 0
                while t <= block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11:
                    if 0 > !t:
                        revert with 0, 17
                    if t == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 16
                    t = t + 1
                    continue 
                if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                    revert with 0, 17
                if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768:
                    revert with 0, 17
                if not stor9:
                    revert with 0, 18
                if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > 0:
                    revert with 0, 17
                if not stor9:
                    revert with 0, 18
                if 0 / stor9 > !(block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9):
                    revert with 0, 17
                if (0 / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                    revert with 0, 17
                if s > !((0 / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 16
                idx = idx + 1
                s = s + (0 / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                continue 
            t = 0
            while t <= stor12:
                if 0 > !t:
                    revert with 0, 17
                if t == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 16
                t = t + 1
                continue 
            if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
                revert with 0, 17
            if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 and (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11) - stor12 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792:
                revert with 0, 17
            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                revert with 0, 17
            if 0 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792)):
                revert with 0, 17
            if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9 > !(block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9):
                revert with 0, 17
            if ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                revert with 0, 17
            if s > !(((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 16
            idx = idx + 1
            s = s + ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
            continue 
        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 < stor12:
            revert with 0, 17
        if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11) - stor12 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 > -1 / (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11) - stor12:
            revert with 0, 17
        if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280)):
            revert with 0, 17
        if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
            revert with 0, 50
        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
            t = 0
            while t <= block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11:
                if 0 > !t:
                    revert with 0, 17
                if t == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 16
                t = t + 1
                continue 
            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                revert with 0, 17
            if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > 0:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if 0 / stor9 > !((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9):
                revert with 0, 17
            if (0 / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                revert with 0, 17
            if s > !((0 / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 16
            idx = idx + 1
            s = s + (0 / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
            continue 
        t = 0
        while t <= stor12:
            if 0 > !t:
                revert with 0, 17
            if t == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 16
            t = t + 1
            continue 
        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
            revert with 0, 17
        if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 and (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11) - stor12 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792:
            revert with 0, 17
        if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
            revert with 0, 17
        if 0 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792)):
            revert with 0, 17
        if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280):
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792):
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9 > !((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9):
            revert with 0, 17
        if ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
            revert with 0, 17
        if s > !(((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        mem[0] = address(arg1)
        mem[32] = 16
        idx = idx + 1
        s = s + ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
        continue 
    require ext_code.size(pairAddress)
    staticcall pairAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[50 len 14] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[18 len 14]:
        revert with 0, 18
    if s and 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / s:
        revert with 0, 17
    if s * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10^18 and sub_f468fba8 > -1 / s * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10^18:
        revert with 0, 17
    return (s * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10^18 * sub_f468fba8 / 100)
}

function sub_cd844602(?) {
    require calldata.size - 4 >= 32
    if not address(stor15[arg1].field_0):
        revert with 0, 'No node exist'
    if stor15[arg1].field_256 >= stor14.length:
        revert with 0, 50
    if block.timestamp < stor15[arg1].field_512:
        revert with 0, 17
    if not stor11:
        revert with 0, 18
    if block.timestamp < stor15[arg1].field_768:
        revert with 0, 17
    if not stor11:
        revert with 0, 18
    if stor15[arg1].field_256 >= stor14.length:
        revert with 0, 50
    if block.timestamp - stor15[arg1].field_512 / stor11 <= stor12:
        if block.timestamp - stor15[arg1].field_512 / stor11 and stor14[stor15[arg1].field_256].field_768 > -1 / block.timestamp - stor15[arg1].field_512 / stor11:
            revert with 0, 17
        if stor15[arg1].field_256 >= stor14.length:
            revert with 0, 50
        if block.timestamp - stor15[arg1].field_768 / stor11 < stor12:
            idx = 0
            while idx <= block.timestamp - stor15[arg1].field_768 / stor11:
                if 0 > !idx:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if False and stor14[stor15[arg1].field_256].field_1536 > 0:
                revert with 0, 17
            if block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 and stor14[stor15[arg1].field_256].field_256 > -1 / block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if False and stor14[stor15[arg1].field_256].field_256 > 0:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if 0 / stor9 > !(block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9):
                revert with 0, 17
            if (0 / stor9) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9) < stor15[arg1].field_1024:
                revert with 0, 17
            require ext_code.size(pairAddress)
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if ext_call.return_data[50 len 14] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[18 len 14]:
                revert with 0, 18
            if (0 / stor9) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9) - stor15[arg1].field_1024 and 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / (0 / stor9) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9) - stor15[arg1].field_1024:
                revert with 0, 17
            if (0 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor15[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18 and sub_f468fba8 > -1 / (0 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor15[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18:
                revert with 0, 17
            return ((0 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor15[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18 * sub_f468fba8 / 100)
        idx = 0
        while idx <= stor12:
            if 0 > !idx:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if block.timestamp - stor15[arg1].field_768 / stor11 < stor12:
            revert with 0, 17
        if stor14[stor15[arg1].field_256].field_1792 and (block.timestamp - stor15[arg1].field_768 / stor11) - stor12 > -1 / stor14[stor15[arg1].field_256].field_1792:
            revert with 0, 17
        if False and stor14[stor15[arg1].field_256].field_1536 > 0:
            revert with 0, 17
        if 0 > !((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792)):
            revert with 0, 17
        if block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 and stor14[stor15[arg1].field_256].field_256 > -1 / block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768:
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792) and stor14[stor15[arg1].field_256].field_256 > -1 / (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792):
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9 > !(block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9):
            revert with 0, 17
        if ((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9) < stor15[arg1].field_1024:
            revert with 0, 17
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[50 len 14] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not ext_call.return_data[18 len 14]:
            revert with 0, 18
        if ((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9) - stor15[arg1].field_1024 and 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / ((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9) - stor15[arg1].field_1024:
            revert with 0, 17
        if ((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor15[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18 and sub_f468fba8 > -1 / ((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor15[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18:
            revert with 0, 17
        return (((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor15[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18 * sub_f468fba8 / 100)
    if block.timestamp - stor15[arg1].field_512 / stor11 < stor12:
        revert with 0, 17
    if (block.timestamp - stor15[arg1].field_512 / stor11) - stor12 and stor14[stor15[arg1].field_256].field_1280 > -1 / (block.timestamp - stor15[arg1].field_512 / stor11) - stor12:
        revert with 0, 17
    if stor14[stor15[arg1].field_256].field_1024 > !((block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280) - (stor12 * stor14[stor15[arg1].field_256].field_1280)):
        revert with 0, 17
    if stor15[arg1].field_256 >= stor14.length:
        revert with 0, 50
    if block.timestamp - stor15[arg1].field_768 / stor11 < stor12:
        idx = 0
        while idx <= block.timestamp - stor15[arg1].field_768 / stor11:
            if 0 > !idx:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if False and stor14[stor15[arg1].field_256].field_1536 > 0:
            revert with 0, 17
        if stor14[stor15[arg1].field_256].field_1024 + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280) - (stor12 * stor14[stor15[arg1].field_256].field_1280) and stor14[stor15[arg1].field_256].field_256 > -1 / stor14[stor15[arg1].field_256].field_1024 + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280) - (stor12 * stor14[stor15[arg1].field_256].field_1280):
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if False and stor14[stor15[arg1].field_256].field_256 > 0:
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if 0 / stor9 > !((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9):
            revert with 0, 17
        if (0 / stor9) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9) < stor15[arg1].field_1024:
            revert with 0, 17
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[50 len 14] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not ext_call.return_data[18 len 14]:
            revert with 0, 18
        if (0 / stor9) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9) - stor15[arg1].field_1024 and 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / (0 / stor9) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9) - stor15[arg1].field_1024:
            revert with 0, 17
        if (0 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor15[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18 and sub_f468fba8 > -1 / (0 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor15[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18:
            revert with 0, 17
        return ((0 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor15[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18 * sub_f468fba8 / 100)
    idx = 0
    while idx <= stor12:
        if 0 > !idx:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if block.timestamp - stor15[arg1].field_768 / stor11 < stor12:
        revert with 0, 17
    if stor14[stor15[arg1].field_256].field_1792 and (block.timestamp - stor15[arg1].field_768 / stor11) - stor12 > -1 / stor14[stor15[arg1].field_256].field_1792:
        revert with 0, 17
    if False and stor14[stor15[arg1].field_256].field_1536 > 0:
        revert with 0, 17
    if 0 > !((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792)):
        revert with 0, 17
    if stor14[stor15[arg1].field_256].field_1024 + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280) - (stor12 * stor14[stor15[arg1].field_256].field_1280) and stor14[stor15[arg1].field_256].field_256 > -1 / stor14[stor15[arg1].field_256].field_1024 + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280) - (stor12 * stor14[stor15[arg1].field_256].field_1280):
        revert with 0, 17
    if not stor9:
        revert with 0, 18
    if (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792) and stor14[stor15[arg1].field_256].field_256 > -1 / (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792):
        revert with 0, 17
    if not stor9:
        revert with 0, 18
    if (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9 > !((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9):
        revert with 0, 17
    if ((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9) < stor15[arg1].field_1024:
        revert with 0, 17
    require ext_code.size(pairAddress)
    staticcall pairAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[50 len 14] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[18 len 14]:
        revert with 0, 18
    if ((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9) - stor15[arg1].field_1024 and 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / ((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9) - stor15[arg1].field_1024:
        revert with 0, 17
    if ((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor15[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18 and sub_f468fba8 > -1 / ((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor15[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18:
        revert with 0, 17
    return (((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor15[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18 * sub_f468fba8 / 100)
}

function sub_3dbd5b25(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < cd[68]:
        if cd[36] >= stor14.length:
            revert with 0, 50
        if stor14[cd[36]].field_2304 > stor14[cd[36]].field_512:
            revert with 0, 'all of this collection are purchased'
        if cd[36] >= stor14.length:
            revert with 0, 50
        s = 0
        t = 0
        while s < sub_627dd5ca[address(cd[4])]:
            if s >= sub_627dd5ca[address(cd[4])]:
                revert with 0, 50
            if stor15[stor16[address(cd[4])][s]].field_256 != cd[36]:
                if s == -1:
                    revert with 0, 17
                mem[0] = address(cd[4])
                mem[32] = 16
                s = s + 1
                t = t
                continue 
            if t == -1:
                revert with 0, 17
            if s == -1:
                revert with 0, 17
            mem[0] = address(cd[4])
            mem[32] = 16
            s = s + 1
            t = t + 1
            continue 
        if t >= stor14[cd[36]].field_2560:
            revert with 0, 'minted nodes exceed amount limit'
        if 1 > !stor10:
            revert with 0, 17
        if stor10 == -1:
            revert with 0, 17
        stor10++
        mem[32] = 15
        address(stor15[stor10 + 1].field_0) = address(cd[4])
        stor15[stor10 + 1].field_256 = cd[36]
        stor15[stor10 + 1].field_512 = block.timestamp
        stor15[stor10 + 1].field_768 = block.timestamp
        if bool(stor15[stor10 + 1].field_1792):
            if bool(stor15[stor10 + 1].field_1792) == uint255(stor15[stor10 + 1].field_1792) * 0.5 < 32:
                revert with 0, 34
            if not ('cd', 100).length:
                stor15[stor10 + 1].field_1792 = 0
                s = sha3(sha3(stor10 + 1, 15) + 7)
                while sha3(sha3(stor10 + 1, 15) + 7) + ((uint255(stor15[stor10 + 1].field_1792) * 0.5) + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                if cd[36] >= stor14.length:
                    revert with 0, 50
                mem[0] = 14
                if stor14[cd[36]].field_2304 == -1:
                    revert with 0, 17
                stor14[cd[36]].field_2304++
                if not ('cd', 100).length:
                    _3772 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3772] = 0
                    if not address(cd[4]):
                        revert with 0, 'ERC1155: mint to the zero address'
                    _3802 = mem[64]
                    mem[mem[64]] = 1
                    mem[64] = mem[64] + 64
                    if 0 >= mem[_3802]:
                        revert with 0, 50
                    mem[_3802 + 32] = cd[36]
                    mem[_3802 + 64] = 1
                    mem[64] = _3802 + 128
                    mem[_3802 + 96] = 1
                    mem[32] = sha3(cd[36], 0)
                    if balanceOf[cd[36]][address(cd[4])] > -2:
                        revert with 0, 17
                    balanceOf[cd[36]][address(cd[4])]++
                    mem[_3802 + 128] = cd[36]
                    mem[_3802 + 160] = 1
                    emit TransferSingle(cd[36], 1, msg.sender, 0, address(cd[4]));
                    if ext_code.size(address(cd[4])):
                        mem[_3802 + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_3802 + 132] = msg.sender
                        mem[_3802 + 164] = 0
                        mem[_3802 + 196] = cd[36]
                        mem[_3802 + 228] = 1
                        mem[_3802 + 260] = 160
                        mem[_3802 + 292] = 0
                        s = 0
                        while s < 0:
                            mem[s + _3802 + 324] = mem[_3772 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, 0, cd[36], 1, 160, 0
                        mem[_3802 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _3802 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    mem[mem[64] + 32] = ('cd', 100).length
                    mem[mem[64] + 64 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                    mem[('cd', 100).length + mem[64] + 64] = 0
                    emit URI(Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length]), stor10 + 1);
                    _3805 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3805] = 0
                    if not address(cd[4]):
                        revert with 0, 'ERC1155: mint to the zero address'
                    _3846 = mem[64]
                    mem[mem[64]] = 1
                    mem[64] = mem[64] + 64
                    if 0 >= mem[_3846]:
                        revert with 0, 50
                    mem[_3846 + 32] = cd[36]
                    mem[_3846 + 64] = 1
                    mem[64] = _3846 + 128
                    mem[_3846 + 96] = 1
                    mem[32] = sha3(cd[36], 0)
                    if balanceOf[cd[36]][address(cd[4])] > -2:
                        revert with 0, 17
                    balanceOf[cd[36]][address(cd[4])]++
                    mem[_3846 + 128] = cd[36]
                    mem[_3846 + 160] = 1
                    emit TransferSingle(cd[36], 1, msg.sender, 0, address(cd[4]));
                    if ext_code.size(address(cd[4])):
                        mem[_3846 + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_3846 + 132] = msg.sender
                        mem[_3846 + 164] = 0
                        mem[_3846 + 196] = cd[36]
                        mem[_3846 + 228] = 1
                        mem[_3846 + 260] = 160
                        mem[_3846 + 292] = 0
                        s = 0
                        while s < 0:
                            mem[s + _3846 + 324] = mem[_3805 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, 0, cd[36], 1, 160, 0
                        mem[_3846 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _3846 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                stor15[stor10 + 1].field_1792 = (2 * ('cd', 100).length) + 1
                t = sha3(sha3(stor10 + 1, 15) + 7)
                s = cd[100] + 36
                while cd[100] + ('cd', 100).length + 36 > s:
                    stor[t] = cd[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(stor10 + 1, 15) + 7) + (Mask(251, 0, ('cd', 100).length + 31) >> 5)
                while sha3(sha3(stor10 + 1, 15) + 7) + ((uint255(stor15[stor10 + 1].field_1792) * 0.5) + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                if cd[36] >= stor14.length:
                    revert with 0, 50
                mem[0] = 14
                if stor14[cd[36]].field_2304 == -1:
                    revert with 0, 17
                stor14[cd[36]].field_2304++
                if not ('cd', 100).length:
                    _5064 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5064] = 0
                    if not address(cd[4]):
                        revert with 0, 'ERC1155: mint to the zero address'
                    _5118 = mem[64]
                    mem[mem[64]] = 1
                    mem[64] = mem[64] + 64
                    if 0 >= mem[_5118]:
                        revert with 0, 50
                    mem[_5118 + 32] = cd[36]
                    mem[_5118 + 64] = 1
                    mem[64] = _5118 + 128
                    mem[_5118 + 96] = 1
                    mem[32] = sha3(cd[36], 0)
                    if balanceOf[cd[36]][address(cd[4])] > -2:
                        revert with 0, 17
                    balanceOf[cd[36]][address(cd[4])]++
                    mem[_5118 + 128] = cd[36]
                    mem[_5118 + 160] = 1
                    emit TransferSingle(cd[36], 1, msg.sender, 0, address(cd[4]));
                    if ext_code.size(address(cd[4])):
                        mem[_5118 + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_5118 + 132] = msg.sender
                        mem[_5118 + 164] = 0
                        mem[_5118 + 196] = cd[36]
                        mem[_5118 + 228] = 1
                        mem[_5118 + 260] = 160
                        mem[_5118 + 292] = 0
                        s = 0
                        while s < 0:
                            mem[s + _5118 + 324] = mem[_5064 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, 0, cd[36], 1, 160, 0
                        mem[_5118 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _5118 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    mem[mem[64] + 32] = ('cd', 100).length
                    mem[mem[64] + 64 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                    mem[('cd', 100).length + mem[64] + 64] = 0
                    emit URI(Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length]), stor10 + 1);
                    _5121 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5121] = 0
                    if not address(cd[4]):
                        revert with 0, 'ERC1155: mint to the zero address'
                    _5188 = mem[64]
                    mem[mem[64]] = 1
                    mem[64] = mem[64] + 64
                    if 0 >= mem[_5188]:
                        revert with 0, 50
                    mem[_5188 + 32] = cd[36]
                    mem[_5188 + 64] = 1
                    mem[64] = _5188 + 128
                    mem[_5188 + 96] = 1
                    mem[32] = sha3(cd[36], 0)
                    if balanceOf[cd[36]][address(cd[4])] > -2:
                        revert with 0, 17
                    balanceOf[cd[36]][address(cd[4])]++
                    mem[_5188 + 128] = cd[36]
                    mem[_5188 + 160] = 1
                    emit TransferSingle(cd[36], 1, msg.sender, 0, address(cd[4]));
                    if ext_code.size(address(cd[4])):
                        mem[_5188 + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_5188 + 132] = msg.sender
                        mem[_5188 + 164] = 0
                        mem[_5188 + 196] = cd[36]
                        mem[_5188 + 228] = 1
                        mem[_5188 + 260] = 160
                        mem[_5188 + 292] = 0
                        s = 0
                        while s < 0:
                            mem[s + _5188 + 324] = mem[_5121 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, 0, cd[36], 1, 160, 0
                        mem[_5188 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _5188 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            if bool(stor15[stor10 + 1].field_1792) == stor15[stor10 + 1].field_1793 % 128 < 32:
                revert with 0, 34
            if not ('cd', 100).length:
                stor15[stor10 + 1].field_1792 = 0
                s = sha3(sha3(stor10 + 1, 15) + 7)
                while sha3(sha3(stor10 + 1, 15) + 7) + (stor15[stor10 + 1].field_1793 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                if cd[36] >= stor14.length:
                    revert with 0, 50
                mem[0] = 14
                if stor14[cd[36]].field_2304 == -1:
                    revert with 0, 17
                stor14[cd[36]].field_2304++
                if not ('cd', 100).length:
                    _3778 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3778] = 0
                    if not address(cd[4]):
                        revert with 0, 'ERC1155: mint to the zero address'
                    _3816 = mem[64]
                    mem[mem[64]] = 1
                    mem[64] = mem[64] + 64
                    if 0 >= mem[_3816]:
                        revert with 0, 50
                    mem[_3816 + 32] = cd[36]
                    mem[_3816 + 64] = 1
                    mem[64] = _3816 + 128
                    mem[_3816 + 96] = 1
                    mem[32] = sha3(cd[36], 0)
                    if balanceOf[cd[36]][address(cd[4])] > -2:
                        revert with 0, 17
                    balanceOf[cd[36]][address(cd[4])]++
                    mem[_3816 + 128] = cd[36]
                    mem[_3816 + 160] = 1
                    emit TransferSingle(cd[36], 1, msg.sender, 0, address(cd[4]));
                    if ext_code.size(address(cd[4])):
                        mem[_3816 + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_3816 + 132] = msg.sender
                        mem[_3816 + 164] = 0
                        mem[_3816 + 196] = cd[36]
                        mem[_3816 + 228] = 1
                        mem[_3816 + 260] = 160
                        mem[_3816 + 292] = 0
                        s = 0
                        while s < 0:
                            mem[s + _3816 + 324] = mem[_3778 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, 0, cd[36], 1, 160, 0
                        mem[_3816 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _3816 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    mem[mem[64] + 32] = ('cd', 100).length
                    mem[mem[64] + 64 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                    mem[('cd', 100).length + mem[64] + 64] = 0
                    emit URI(Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length]), stor10 + 1);
                    _3819 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3819] = 0
                    if not address(cd[4]):
                        revert with 0, 'ERC1155: mint to the zero address'
                    _3865 = mem[64]
                    mem[mem[64]] = 1
                    mem[64] = mem[64] + 64
                    if 0 >= mem[_3865]:
                        revert with 0, 50
                    mem[_3865 + 32] = cd[36]
                    mem[_3865 + 64] = 1
                    mem[64] = _3865 + 128
                    mem[_3865 + 96] = 1
                    mem[32] = sha3(cd[36], 0)
                    if balanceOf[cd[36]][address(cd[4])] > -2:
                        revert with 0, 17
                    balanceOf[cd[36]][address(cd[4])]++
                    mem[_3865 + 128] = cd[36]
                    mem[_3865 + 160] = 1
                    emit TransferSingle(cd[36], 1, msg.sender, 0, address(cd[4]));
                    if ext_code.size(address(cd[4])):
                        mem[_3865 + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_3865 + 132] = msg.sender
                        mem[_3865 + 164] = 0
                        mem[_3865 + 196] = cd[36]
                        mem[_3865 + 228] = 1
                        mem[_3865 + 260] = 160
                        mem[_3865 + 292] = 0
                        s = 0
                        while s < 0:
                            mem[s + _3865 + 324] = mem[_3819 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, 0, cd[36], 1, 160, 0
                        mem[_3865 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _3865 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                stor15[stor10 + 1].field_1792 = (2 * ('cd', 100).length) + 1
                t = sha3(sha3(stor10 + 1, 15) + 7)
                s = cd[100] + 36
                while cd[100] + ('cd', 100).length + 36 > s:
                    stor[t] = cd[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(stor10 + 1, 15) + 7) + (Mask(251, 0, ('cd', 100).length + 31) >> 5)
                while sha3(sha3(stor10 + 1, 15) + 7) + (stor15[stor10 + 1].field_1793 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                if cd[36] >= stor14.length:
                    revert with 0, 50
                mem[0] = 14
                if stor14[cd[36]].field_2304 == -1:
                    revert with 0, 17
                stor14[cd[36]].field_2304++
                if not ('cd', 100).length:
                    _5072 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5072] = 0
                    if not address(cd[4]):
                        revert with 0, 'ERC1155: mint to the zero address'
                    _5122 = mem[64]
                    mem[mem[64]] = 1
                    mem[64] = mem[64] + 64
                    if 0 >= mem[_5122]:
                        revert with 0, 50
                    mem[_5122 + 32] = cd[36]
                    mem[_5122 + 64] = 1
                    mem[64] = _5122 + 128
                    mem[_5122 + 96] = 1
                    mem[32] = sha3(cd[36], 0)
                    if balanceOf[cd[36]][address(cd[4])] > -2:
                        revert with 0, 17
                    balanceOf[cd[36]][address(cd[4])]++
                    mem[_5122 + 128] = cd[36]
                    mem[_5122 + 160] = 1
                    emit TransferSingle(cd[36], 1, msg.sender, 0, address(cd[4]));
                    if ext_code.size(address(cd[4])):
                        mem[_5122 + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_5122 + 132] = msg.sender
                        mem[_5122 + 164] = 0
                        mem[_5122 + 196] = cd[36]
                        mem[_5122 + 228] = 1
                        mem[_5122 + 260] = 160
                        mem[_5122 + 292] = 0
                        s = 0
                        while s < 0:
                            mem[s + _5122 + 324] = mem[_5072 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, 0, cd[36], 1, 160, 0
                        mem[_5122 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _5122 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    mem[mem[64] + 32] = ('cd', 100).length
                    mem[mem[64] + 64 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                    mem[('cd', 100).length + mem[64] + 64] = 0
                    emit URI(Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length]), stor10 + 1);
                    _5125 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5125] = 0
                    if not address(cd[4]):
                        revert with 0, 'ERC1155: mint to the zero address'
                    _5223 = mem[64]
                    mem[mem[64]] = 1
                    mem[64] = mem[64] + 64
                    if 0 >= mem[_5223]:
                        revert with 0, 50
                    mem[_5223 + 32] = cd[36]
                    mem[_5223 + 64] = 1
                    mem[64] = _5223 + 128
                    mem[_5223 + 96] = 1
                    mem[32] = sha3(cd[36], 0)
                    if balanceOf[cd[36]][address(cd[4])] > -2:
                        revert with 0, 17
                    balanceOf[cd[36]][address(cd[4])]++
                    mem[_5223 + 128] = cd[36]
                    mem[_5223 + 160] = 1
                    emit TransferSingle(cd[36], 1, msg.sender, 0, address(cd[4]));
                    if ext_code.size(address(cd[4])):
                        mem[_5223 + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_5223 + 132] = msg.sender
                        mem[_5223 + 164] = 0
                        mem[_5223 + 196] = cd[36]
                        mem[_5223 + 228] = 1
                        mem[_5223 + 260] = 160
                        mem[_5223 + 292] = 0
                        s = 0
                        while s < 0:
                            mem[s + _5223 + 324] = mem[_5125 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, 0, cd[36], 1, 160, 0
                        mem[_5223 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _5223 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        mem[32] = 16
        sub_627dd5ca[address(cd[4])]++
        mem[0] = sha3(address(cd[4]), 16)
        sub_627dd5ca[address(cd[4])][sub_627dd5ca[address(cd[4])]] = stor10 + 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function claimById(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor4 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor4 = 2
    if address(stor15[arg1].field_0) != msg.sender:
        revert with 0, 'only puchaser can claim'
    if not address(stor15[arg1].field_0):
        revert with 0, 'No node exist'
    if stor15[arg1].field_256 >= stor14.length:
        revert with 0, 50
    if block.timestamp < stor15[arg1].field_512:
        revert with 0, 17
    if not stor11:
        revert with 0, 18
    if block.timestamp < stor15[arg1].field_768:
        revert with 0, 17
    if not stor11:
        revert with 0, 18
    if stor15[arg1].field_256 >= stor14.length:
        revert with 0, 50
    if block.timestamp - stor15[arg1].field_512 / stor11 <= stor12:
        if block.timestamp - stor15[arg1].field_512 / stor11 and stor14[stor15[arg1].field_256].field_768 > -1 / block.timestamp - stor15[arg1].field_512 / stor11:
            revert with 0, 17
        if stor15[arg1].field_256 >= stor14.length:
            revert with 0, 50
        if block.timestamp - stor15[arg1].field_768 / stor11 < stor12:
            idx = 0
            while idx <= block.timestamp - stor15[arg1].field_768 / stor11:
                if 0 > !idx:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if False and stor14[stor15[arg1].field_256].field_1536 > 0:
                revert with 0, 17
            if block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 and stor14[stor15[arg1].field_256].field_256 > -1 / block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if False and stor14[stor15[arg1].field_256].field_256 > 0:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if 0 / stor9 > !(block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9):
                revert with 0, 17
            if (0 / stor9) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9) < stor15[arg1].field_1024:
                revert with 0, 17
            require ext_code.size(pairAddress)
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if ext_call.return_data[50 len 14] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[18 len 14]:
                revert with 0, 18
            if (0 / stor9) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9) - stor15[arg1].field_1024 and 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / (0 / stor9) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9) - stor15[arg1].field_1024:
                revert with 0, 17
            if (0 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor15[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18 and sub_f468fba8 > -1 / (0 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor15[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18:
                revert with 0, 17
            if (0 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor15[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18 * sub_f468fba8 / 100 > msg.value:
                revert with 0, 'No set enough fee'
        else:
            idx = 0
            while idx <= stor12:
                if 0 > !idx:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if block.timestamp - stor15[arg1].field_768 / stor11 < stor12:
                revert with 0, 17
            if stor14[stor15[arg1].field_256].field_1792 and (block.timestamp - stor15[arg1].field_768 / stor11) - stor12 > -1 / stor14[stor15[arg1].field_256].field_1792:
                revert with 0, 17
            if False and stor14[stor15[arg1].field_256].field_1536 > 0:
                revert with 0, 17
            if 0 > !((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792)):
                revert with 0, 17
            if block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 and stor14[stor15[arg1].field_256].field_256 > -1 / block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792) and stor14[stor15[arg1].field_256].field_256 > -1 / (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9 > !(block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9):
                revert with 0, 17
            if ((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9) < stor15[arg1].field_1024:
                revert with 0, 17
            require ext_code.size(pairAddress)
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if ext_call.return_data[50 len 14] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[18 len 14]:
                revert with 0, 18
            if ((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9) - stor15[arg1].field_1024 and 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / ((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9) - stor15[arg1].field_1024:
                revert with 0, 17
            if ((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor15[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18 and sub_f468fba8 > -1 / ((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor15[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18:
                revert with 0, 17
            if ((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor15[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18 * sub_f468fba8 / 100 > msg.value:
                revert with 0, 'No set enough fee'
    else:
        if block.timestamp - stor15[arg1].field_512 / stor11 < stor12:
            revert with 0, 17
        if (block.timestamp - stor15[arg1].field_512 / stor11) - stor12 and stor14[stor15[arg1].field_256].field_1280 > -1 / (block.timestamp - stor15[arg1].field_512 / stor11) - stor12:
            revert with 0, 17
        if stor14[stor15[arg1].field_256].field_1024 > !((block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280) - (stor12 * stor14[stor15[arg1].field_256].field_1280)):
            revert with 0, 17
        if stor15[arg1].field_256 >= stor14.length:
            revert with 0, 50
        if block.timestamp - stor15[arg1].field_768 / stor11 < stor12:
            idx = 0
            while idx <= block.timestamp - stor15[arg1].field_768 / stor11:
                if 0 > !idx:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if False and stor14[stor15[arg1].field_256].field_1536 > 0:
                revert with 0, 17
            if stor14[stor15[arg1].field_256].field_1024 + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280) - (stor12 * stor14[stor15[arg1].field_256].field_1280) and stor14[stor15[arg1].field_256].field_256 > -1 / stor14[stor15[arg1].field_256].field_1024 + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280) - (stor12 * stor14[stor15[arg1].field_256].field_1280):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if False and stor14[stor15[arg1].field_256].field_256 > 0:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if 0 / stor9 > !((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9):
                revert with 0, 17
            if (0 / stor9) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9) < stor15[arg1].field_1024:
                revert with 0, 17
            require ext_code.size(pairAddress)
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if ext_call.return_data[50 len 14] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[18 len 14]:
                revert with 0, 18
            if (0 / stor9) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9) - stor15[arg1].field_1024 and 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / (0 / stor9) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9) - stor15[arg1].field_1024:
                revert with 0, 17
            if (0 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor15[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18 and sub_f468fba8 > -1 / (0 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor15[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18:
                revert with 0, 17
            if (0 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor15[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18 * sub_f468fba8 / 100 > msg.value:
                revert with 0, 'No set enough fee'
        else:
            idx = 0
            while idx <= stor12:
                if 0 > !idx:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if block.timestamp - stor15[arg1].field_768 / stor11 < stor12:
                revert with 0, 17
            if stor14[stor15[arg1].field_256].field_1792 and (block.timestamp - stor15[arg1].field_768 / stor11) - stor12 > -1 / stor14[stor15[arg1].field_256].field_1792:
                revert with 0, 17
            if False and stor14[stor15[arg1].field_256].field_1536 > 0:
                revert with 0, 17
            if 0 > !((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792)):
                revert with 0, 17
            if stor14[stor15[arg1].field_256].field_1024 + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280) - (stor12 * stor14[stor15[arg1].field_256].field_1280) and stor14[stor15[arg1].field_256].field_256 > -1 / stor14[stor15[arg1].field_256].field_1024 + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280) - (stor12 * stor14[stor15[arg1].field_256].field_1280):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792) and stor14[stor15[arg1].field_256].field_256 > -1 / (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9 > !((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9):
                revert with 0, 17
            if ((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9) < stor15[arg1].field_1024:
                revert with 0, 17
            require ext_code.size(pairAddress)
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if ext_call.return_data[50 len 14] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[18 len 14]:
                revert with 0, 18
            if ((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9) - stor15[arg1].field_1024 and 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / ((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9) - stor15[arg1].field_1024:
                revert with 0, 17
            if ((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor15[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18 and sub_f468fba8 > -1 / ((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor15[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18:
                revert with 0, 17
            if ((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor15[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18 * sub_f468fba8 / 100 > msg.value:
                revert with 0, 'No set enough fee'
    if not address(stor15[arg1].field_0):
        revert with 0, 'No node exist'
    if stor15[arg1].field_256 >= stor14.length:
        revert with 0, 50
    if block.timestamp < stor15[arg1].field_512:
        revert with 0, 17
    if not stor11:
        revert with 0, 18
    if block.timestamp < stor15[arg1].field_768:
        revert with 0, 17
    if not stor11:
        revert with 0, 18
    if stor15[arg1].field_256 >= stor14.length:
        revert with 0, 50
    if block.timestamp - stor15[arg1].field_512 / stor11 <= stor12:
        if block.timestamp - stor15[arg1].field_512 / stor11 and stor14[stor15[arg1].field_256].field_768 > -1 / block.timestamp - stor15[arg1].field_512 / stor11:
            revert with 0, 17
        if stor15[arg1].field_256 >= stor14.length:
            revert with 0, 50
        if block.timestamp - stor15[arg1].field_768 / stor11 < stor12:
            idx = 0
            while idx <= block.timestamp - stor15[arg1].field_768 / stor11:
                if 0 > !idx:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if False and stor14[stor15[arg1].field_256].field_1536 > 0:
                revert with 0, 17
            if block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 and stor14[stor15[arg1].field_256].field_256 > -1 / block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if False and stor14[stor15[arg1].field_256].field_256 > 0:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            stor15[arg1].field_768 = block.timestamp
            if stor15[arg1].field_1280 > !(0 / stor9):
                revert with 0, 17
            stor15[arg1].field_1280 += 0 / stor9
            if 0 / stor9 > !(block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9):
                revert with 0, 17
            if (0 / stor9) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9) < stor15[arg1].field_1024:
                revert with 0, 17
            stor15[arg1].field_1024 = block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9
            require ext_code.size(sub_85adc8b0Address)
            call sub_85adc8b0Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (0 / stor9) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9) - stor15[arg1].field_1024
        else:
            idx = 0
            while idx <= stor12:
                if 0 > !idx:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if block.timestamp - stor15[arg1].field_768 / stor11 < stor12:
                revert with 0, 17
            if stor14[stor15[arg1].field_256].field_1792 and (block.timestamp - stor15[arg1].field_768 / stor11) - stor12 > -1 / stor14[stor15[arg1].field_256].field_1792:
                revert with 0, 17
            if False and stor14[stor15[arg1].field_256].field_1536 > 0:
                revert with 0, 17
            if 0 > !((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792)):
                revert with 0, 17
            if block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 and stor14[stor15[arg1].field_256].field_256 > -1 / block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792) and stor14[stor15[arg1].field_256].field_256 > -1 / (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            stor15[arg1].field_768 = block.timestamp
            if stor15[arg1].field_1280 > !((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9):
                revert with 0, 17
            stor15[arg1].field_1280 += (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9
            if (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9 > !(block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9):
                revert with 0, 17
            if ((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9) < stor15[arg1].field_1024:
                revert with 0, 17
            stor15[arg1].field_1024 = block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9
            require ext_code.size(sub_85adc8b0Address)
            call sub_85adc8b0Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_768 * stor14[stor15[arg1].field_256].field_256 / stor9) - stor15[arg1].field_1024
    else:
        if block.timestamp - stor15[arg1].field_512 / stor11 < stor12:
            revert with 0, 17
        if (block.timestamp - stor15[arg1].field_512 / stor11) - stor12 and stor14[stor15[arg1].field_256].field_1280 > -1 / (block.timestamp - stor15[arg1].field_512 / stor11) - stor12:
            revert with 0, 17
        if stor14[stor15[arg1].field_256].field_1024 > !((block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280) - (stor12 * stor14[stor15[arg1].field_256].field_1280)):
            revert with 0, 17
        if stor15[arg1].field_256 >= stor14.length:
            revert with 0, 50
        if block.timestamp - stor15[arg1].field_768 / stor11 < stor12:
            idx = 0
            while idx <= block.timestamp - stor15[arg1].field_768 / stor11:
                if 0 > !idx:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if False and stor14[stor15[arg1].field_256].field_1536 > 0:
                revert with 0, 17
            if stor14[stor15[arg1].field_256].field_1024 + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280) - (stor12 * stor14[stor15[arg1].field_256].field_1280) and stor14[stor15[arg1].field_256].field_256 > -1 / stor14[stor15[arg1].field_256].field_1024 + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280) - (stor12 * stor14[stor15[arg1].field_256].field_1280):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if False and stor14[stor15[arg1].field_256].field_256 > 0:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            stor15[arg1].field_768 = block.timestamp
            if stor15[arg1].field_1280 > !(0 / stor9):
                revert with 0, 17
            stor15[arg1].field_1280 += 0 / stor9
            if 0 / stor9 > !((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9):
                revert with 0, 17
            if (0 / stor9) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9) < stor15[arg1].field_1024:
                revert with 0, 17
            stor15[arg1].field_1024 = (stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9
            require ext_code.size(sub_85adc8b0Address)
            call sub_85adc8b0Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (0 / stor9) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9) - stor15[arg1].field_1024
        else:
            idx = 0
            while idx <= stor12:
                if 0 > !idx:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if block.timestamp - stor15[arg1].field_768 / stor11 < stor12:
                revert with 0, 17
            if stor14[stor15[arg1].field_256].field_1792 and (block.timestamp - stor15[arg1].field_768 / stor11) - stor12 > -1 / stor14[stor15[arg1].field_256].field_1792:
                revert with 0, 17
            if False and stor14[stor15[arg1].field_256].field_1536 > 0:
                revert with 0, 17
            if 0 > !((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792)):
                revert with 0, 17
            if stor14[stor15[arg1].field_256].field_1024 + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280) - (stor12 * stor14[stor15[arg1].field_256].field_1280) and stor14[stor15[arg1].field_256].field_256 > -1 / stor14[stor15[arg1].field_256].field_1024 + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280) - (stor12 * stor14[stor15[arg1].field_256].field_1280):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792) and stor14[stor15[arg1].field_256].field_256 > -1 / (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792) - (stor12 * stor14[stor15[arg1].field_256].field_1792):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            stor15[arg1].field_768 = block.timestamp
            if stor15[arg1].field_1280 > !((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9):
                revert with 0, 17
            stor15[arg1].field_1280 += (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9
            if (block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9 > !((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9):
                revert with 0, 17
            if ((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9) < stor15[arg1].field_1024:
                revert with 0, 17
            stor15[arg1].field_1024 = (stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9
            require ext_code.size(sub_85adc8b0Address)
            call sub_85adc8b0Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ((block.timestamp - stor15[arg1].field_768 / stor11 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1792 * stor14[stor15[arg1].field_256].field_256) / stor9) + ((stor14[stor15[arg1].field_256].field_1024 * stor14[stor15[arg1].field_256].field_256) + (block.timestamp - stor15[arg1].field_512 / stor11 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) - (stor12 * stor14[stor15[arg1].field_256].field_1280 * stor14[stor15[arg1].field_256].field_256) / stor9) - stor15[arg1].field_1024
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor4 = 1
}

function claim() payable {
    if stor4 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor4 = 2
    if not sub_627dd5ca[msg.sender]:
        revert with 0, 'No have a node'
    if not sub_627dd5ca[address(msg.sender)]:
        revert with 0, 'No have a node'
    idx = 0
    s = 0
    while idx < sub_627dd5ca[address(msg.sender)]:
        if idx >= sub_627dd5ca[address(msg.sender)]:
            revert with 0, 50
        if not address(stor15[stor16[address(msg.sender)][idx]].field_0):
            revert with 0, 'No node exist'
        if stor15[stor16[address(msg.sender)][idx]].field_256 >= stor14.length:
            revert with 0, 50
        if block.timestamp < stor15[stor16[address(msg.sender)][idx]].field_512:
            revert with 0, 17
        if not stor11:
            revert with 0, 18
        if block.timestamp < stor15[stor16[address(msg.sender)][idx]].field_768:
            revert with 0, 17
        if not stor11:
            revert with 0, 18
        if stor15[stor16[address(msg.sender)][idx]].field_256 >= stor14.length:
            revert with 0, 50
        if block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11 <= stor12:
            if block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11 and stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_768 > -1 / block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11:
                revert with 0, 17
            if stor15[stor16[address(msg.sender)][idx]].field_256 >= stor14.length:
                revert with 0, 50
            if block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_768 / stor11 < stor12:
                t = 0
                while t <= block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_768 / stor11:
                    if 0 > !t:
                        revert with 0, 17
                    if t == -1:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 16
                    t = t + 1
                    continue 
                if False and stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1536 > 0:
                    revert with 0, 17
                if block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_768 and stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256 > -1 / block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_768:
                    revert with 0, 17
                if not stor9:
                    revert with 0, 18
                if False and stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256 > 0:
                    revert with 0, 17
                if not stor9:
                    revert with 0, 18
                if 0 / stor9 > !(block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_768 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256 / stor9):
                    revert with 0, 17
                if (0 / stor9) + (block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_768 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256 / stor9) < stor15[stor16[address(msg.sender)][idx]].field_1024:
                    revert with 0, 17
                if s > !((0 / stor9) + (block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_768 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(msg.sender)][idx]].field_1024):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 16
                idx = idx + 1
                s = s + (0 / stor9) + (block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_768 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(msg.sender)][idx]].field_1024
                continue 
            t = 0
            while t <= stor12:
                if 0 > !t:
                    revert with 0, 17
                if t == -1:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 16
                t = t + 1
                continue 
            if block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_768 / stor11 < stor12:
                revert with 0, 17
            if stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792 and (block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_768 / stor11) - stor12 > -1 / stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792:
                revert with 0, 17
            if False and stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1536 > 0:
                revert with 0, 17
            if 0 > !((block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792)):
                revert with 0, 17
            if block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_768 and stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256 > -1 / block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_768:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792) and stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256 > -1 / (block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) / stor9 > !(block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_768 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256 / stor9):
                revert with 0, 17
            if ((block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_768 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256 / stor9) < stor15[stor16[address(msg.sender)][idx]].field_1024:
                revert with 0, 17
            if s > !(((block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_768 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(msg.sender)][idx]].field_1024):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 16
            idx = idx + 1
            s = s + ((block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_768 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(msg.sender)][idx]].field_1024
            continue 
        if block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11 < stor12:
            revert with 0, 17
        if (block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11) - stor12 and stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1280 > -1 / (block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11) - stor12:
            revert with 0, 17
        if stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1024 > !((block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1280)):
            revert with 0, 17
        if stor15[stor16[address(msg.sender)][idx]].field_256 >= stor14.length:
            revert with 0, 50
        if block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_768 / stor11 < stor12:
            t = 0
            while t <= block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_768 / stor11:
                if 0 > !t:
                    revert with 0, 17
                if t == -1:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 16
                t = t + 1
                continue 
            if False and stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1536 > 0:
                revert with 0, 17
            if stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1280) and stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256 > -1 / stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1280):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if False and stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256 > 0:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if 0 / stor9 > !((stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) / stor9):
                revert with 0, 17
            if (0 / stor9) + ((stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) / stor9) < stor15[stor16[address(msg.sender)][idx]].field_1024:
                revert with 0, 17
            if s > !((0 / stor9) + ((stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(msg.sender)][idx]].field_1024):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 16
            idx = idx + 1
            s = s + (0 / stor9) + ((stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(msg.sender)][idx]].field_1024
            continue 
        t = 0
        while t <= stor12:
            if 0 > !t:
                revert with 0, 17
            if t == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 16
            t = t + 1
            continue 
        if block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_768 / stor11 < stor12:
            revert with 0, 17
        if stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792 and (block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_768 / stor11) - stor12 > -1 / stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792:
            revert with 0, 17
        if False and stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1536 > 0:
            revert with 0, 17
        if 0 > !((block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792)):
            revert with 0, 17
        if stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1280) and stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256 > -1 / stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1280):
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if (block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792) and stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256 > -1 / (block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792):
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if (block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) / stor9 > !((stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) / stor9):
            revert with 0, 17
        if ((block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) / stor9) < stor15[stor16[address(msg.sender)][idx]].field_1024:
            revert with 0, 17
        if s > !(((block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(msg.sender)][idx]].field_1024):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = 16
        idx = idx + 1
        s = s + ((block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(msg.sender)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(msg.sender)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(msg.sender)][idx]].field_1024
        continue 
    require ext_code.size(pairAddress)
    staticcall pairAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[50 len 14] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[18 len 14]:
        revert with 0, 18
    if s and 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / s:
        revert with 0, 17
    if s * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10^18 and sub_f468fba8 > -1 / s * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10^18:
        revert with 0, 17
    if s * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10^18 * sub_f468fba8 / 100 > msg.value:
        revert with 0, 'No fee is set'
    idx = 0
    s = 0
    while idx < sub_627dd5ca[msg.sender]:
        if idx >= sub_627dd5ca[msg.sender]:
            revert with 0, 50
        if not address(stor15[stor16[msg.sender][idx]].field_0):
            revert with 0, 'No node exist'
        if stor15[stor16[msg.sender][idx]].field_256 >= stor14.length:
            revert with 0, 50
        if block.timestamp < stor15[stor16[msg.sender][idx]].field_512:
            revert with 0, 17
        if not stor11:
            revert with 0, 18
        if block.timestamp < stor15[stor16[msg.sender][idx]].field_768:
            revert with 0, 17
        if not stor11:
            revert with 0, 18
        if stor15[stor16[msg.sender][idx]].field_256 >= stor14.length:
            revert with 0, 50
        if block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 <= stor12:
            if block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 and stor14[stor15[stor16[msg.sender][idx]].field_256].field_768 > -1 / block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11:
                revert with 0, 17
            if stor15[stor16[msg.sender][idx]].field_256 >= stor14.length:
                revert with 0, 50
            if block.timestamp - stor15[stor16[msg.sender][idx]].field_768 / stor11 < stor12:
                t = 0
                while t <= block.timestamp - stor15[stor16[msg.sender][idx]].field_768 / stor11:
                    if 0 > !t:
                        revert with 0, 17
                    if t == -1:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 16
                    t = t + 1
                    continue 
                if False and stor14[stor15[stor16[msg.sender][idx]].field_256].field_1536 > 0:
                    revert with 0, 17
                if block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_768 and stor14[stor15[stor16[msg.sender][idx]].field_256].field_256 > -1 / block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_768:
                    revert with 0, 17
                if not stor9:
                    revert with 0, 18
                if False and stor14[stor15[stor16[msg.sender][idx]].field_256].field_256 > 0:
                    revert with 0, 17
                if not stor9:
                    revert with 0, 18
                stor15[stor16[msg.sender][idx]].field_768 = block.timestamp
                if stor15[stor16[msg.sender][idx]].field_1280 > !(0 / stor9):
                    revert with 0, 17
                stor15[stor16[msg.sender][idx]].field_1280 += 0 / stor9
                if 0 / stor9 > !(block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_768 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256 / stor9):
                    revert with 0, 17
                if (0 / stor9) + (block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_768 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256 / stor9) < stor15[stor16[msg.sender][idx]].field_1024:
                    revert with 0, 17
                if s > !((0 / stor9) + (block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_768 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256 / stor9) - stor15[stor16[msg.sender][idx]].field_1024):
                    revert with 0, 17
                stor15[stor16[msg.sender][idx]].field_1024 = block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_768 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256 / stor9
                if idx == -1:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 16
                idx = idx + 1
                s = s + (0 / stor9) + (block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_768 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256 / stor9) - stor15[stor16[msg.sender][idx]].field_1024
                continue 
            t = 0
            while t <= stor12:
                if 0 > !t:
                    revert with 0, 17
                if t == -1:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 16
                t = t + 1
                continue 
            if block.timestamp - stor15[stor16[msg.sender][idx]].field_768 / stor11 < stor12:
                revert with 0, 17
            if stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792 and (block.timestamp - stor15[stor16[msg.sender][idx]].field_768 / stor11) - stor12 > -1 / stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792:
                revert with 0, 17
            if False and stor14[stor15[stor16[msg.sender][idx]].field_256].field_1536 > 0:
                revert with 0, 17
            if 0 > !((block.timestamp - stor15[stor16[msg.sender][idx]].field_768 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792)):
                revert with 0, 17
            if block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_768 and stor14[stor15[stor16[msg.sender][idx]].field_256].field_256 > -1 / block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_768:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor15[stor16[msg.sender][idx]].field_768 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792) and stor14[stor15[stor16[msg.sender][idx]].field_256].field_256 > -1 / (block.timestamp - stor15[stor16[msg.sender][idx]].field_768 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            stor15[stor16[msg.sender][idx]].field_768 = block.timestamp
            if stor15[stor16[msg.sender][idx]].field_1280 > !((block.timestamp - stor15[stor16[msg.sender][idx]].field_768 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) / stor9):
                revert with 0, 17
            stor15[stor16[msg.sender][idx]].field_1280 += (block.timestamp - stor15[stor16[msg.sender][idx]].field_768 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) / stor9
            if (block.timestamp - stor15[stor16[msg.sender][idx]].field_768 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) / stor9 > !(block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_768 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256 / stor9):
                revert with 0, 17
            if ((block.timestamp - stor15[stor16[msg.sender][idx]].field_768 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_768 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256 / stor9) < stor15[stor16[msg.sender][idx]].field_1024:
                revert with 0, 17
            if s > !(((block.timestamp - stor15[stor16[msg.sender][idx]].field_768 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_768 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256 / stor9) - stor15[stor16[msg.sender][idx]].field_1024):
                revert with 0, 17
            stor15[stor16[msg.sender][idx]].field_1024 = block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_768 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256 / stor9
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 16
            idx = idx + 1
            s = s + ((block.timestamp - stor15[stor16[msg.sender][idx]].field_768 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_768 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256 / stor9) - stor15[stor16[msg.sender][idx]].field_1024
            continue 
        if block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 < stor12:
            revert with 0, 17
        if (block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11) - stor12 and stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280 > -1 / (block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11) - stor12:
            revert with 0, 17
        if stor14[stor15[stor16[msg.sender][idx]].field_256].field_1024 > !((block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280)):
            revert with 0, 17
        if stor15[stor16[msg.sender][idx]].field_256 >= stor14.length:
            revert with 0, 50
        if block.timestamp - stor15[stor16[msg.sender][idx]].field_768 / stor11 < stor12:
            t = 0
            while t <= block.timestamp - stor15[stor16[msg.sender][idx]].field_768 / stor11:
                if 0 > !t:
                    revert with 0, 17
                if t == -1:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 16
                t = t + 1
                continue 
            if False and stor14[stor15[stor16[msg.sender][idx]].field_256].field_1536 > 0:
                revert with 0, 17
            if stor14[stor15[stor16[msg.sender][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280) and stor14[stor15[stor16[msg.sender][idx]].field_256].field_256 > -1 / stor14[stor15[stor16[msg.sender][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if False and stor14[stor15[stor16[msg.sender][idx]].field_256].field_256 > 0:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            stor15[stor16[msg.sender][idx]].field_768 = block.timestamp
            if stor15[stor16[msg.sender][idx]].field_1280 > !(0 / stor9):
                revert with 0, 17
            stor15[stor16[msg.sender][idx]].field_1280 += 0 / stor9
            if 0 / stor9 > !((stor14[stor15[stor16[msg.sender][idx]].field_256].field_1024 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) / stor9):
                revert with 0, 17
            if (0 / stor9) + ((stor14[stor15[stor16[msg.sender][idx]].field_256].field_1024 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) / stor9) < stor15[stor16[msg.sender][idx]].field_1024:
                revert with 0, 17
            if s > !((0 / stor9) + ((stor14[stor15[stor16[msg.sender][idx]].field_256].field_1024 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) / stor9) - stor15[stor16[msg.sender][idx]].field_1024):
                revert with 0, 17
            stor15[stor16[msg.sender][idx]].field_1024 = (stor14[stor15[stor16[msg.sender][idx]].field_256].field_1024 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) / stor9
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 16
            idx = idx + 1
            s = s + (0 / stor9) + ((stor14[stor15[stor16[msg.sender][idx]].field_256].field_1024 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) / stor9) - stor15[stor16[msg.sender][idx]].field_1024
            continue 
        t = 0
        while t <= stor12:
            if 0 > !t:
                revert with 0, 17
            if t == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 16
            t = t + 1
            continue 
        if block.timestamp - stor15[stor16[msg.sender][idx]].field_768 / stor11 < stor12:
            revert with 0, 17
        if stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792 and (block.timestamp - stor15[stor16[msg.sender][idx]].field_768 / stor11) - stor12 > -1 / stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792:
            revert with 0, 17
        if False and stor14[stor15[stor16[msg.sender][idx]].field_256].field_1536 > 0:
            revert with 0, 17
        if 0 > !((block.timestamp - stor15[stor16[msg.sender][idx]].field_768 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792)):
            revert with 0, 17
        if stor14[stor15[stor16[msg.sender][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280) and stor14[stor15[stor16[msg.sender][idx]].field_256].field_256 > -1 / stor14[stor15[stor16[msg.sender][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280):
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if (block.timestamp - stor15[stor16[msg.sender][idx]].field_768 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792) and stor14[stor15[stor16[msg.sender][idx]].field_256].field_256 > -1 / (block.timestamp - stor15[stor16[msg.sender][idx]].field_768 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792):
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        stor15[stor16[msg.sender][idx]].field_768 = block.timestamp
        if stor15[stor16[msg.sender][idx]].field_1280 > !((block.timestamp - stor15[stor16[msg.sender][idx]].field_768 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) / stor9):
            revert with 0, 17
        stor15[stor16[msg.sender][idx]].field_1280 += (block.timestamp - stor15[stor16[msg.sender][idx]].field_768 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) / stor9
        if (block.timestamp - stor15[stor16[msg.sender][idx]].field_768 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) / stor9 > !((stor14[stor15[stor16[msg.sender][idx]].field_256].field_1024 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) / stor9):
            revert with 0, 17
        if ((block.timestamp - stor15[stor16[msg.sender][idx]].field_768 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[msg.sender][idx]].field_256].field_1024 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) / stor9) < stor15[stor16[msg.sender][idx]].field_1024:
            revert with 0, 17
        if s > !(((block.timestamp - stor15[stor16[msg.sender][idx]].field_768 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[msg.sender][idx]].field_256].field_1024 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) / stor9) - stor15[stor16[msg.sender][idx]].field_1024):
            revert with 0, 17
        stor15[stor16[msg.sender][idx]].field_1024 = (stor14[stor15[stor16[msg.sender][idx]].field_256].field_1024 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) / stor9
        if idx == -1:
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = 16
        idx = idx + 1
        s = s + ((block.timestamp - stor15[stor16[msg.sender][idx]].field_768 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1792 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[msg.sender][idx]].field_256].field_1024 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[msg.sender][idx]].field_512 / stor11 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_1280 * stor14[stor15[stor16[msg.sender][idx]].field_256].field_256) / stor9) - stor15[stor16[msg.sender][idx]].field_1024
        continue 
    require ext_code.size(sub_85adc8b0Address)
    call sub_85adc8b0Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor4 = 1
}

function sub_4854424e(?) payable {
    require calldata.size - 4 >= 64
    if stor4 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor4 = 2
    if not sub_627dd5ca[msg.sender]:
        revert with 0, 'No have a node'
    if address(stor15[arg2].field_0) != msg.sender:
        revert with 0, 'only puchaser can claim'
    require ext_code.size(pairAddress)
    staticcall pairAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[50 len 14] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[18 len 14]:
        revert with 0, 18
    if arg1 and 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / arg1:
        revert with 0, 17
    if arg1 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10^18 and sub_f468fba8 > -1 / arg1 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10^18:
        revert with 0, 17
    if arg1 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10^18 * sub_f468fba8 / 100 > msg.value:
        revert with 0, 'No fee is set'
    if not address(stor15[arg2].field_0):
        revert with 0, 'No node exist'
    if stor15[arg2].field_256 >= stor14.length:
        revert with 0, 50
    if block.timestamp < stor15[arg2].field_512:
        revert with 0, 17
    if not stor11:
        revert with 0, 18
    if block.timestamp < stor15[arg2].field_768:
        revert with 0, 17
    if not stor11:
        revert with 0, 18
    if stor15[arg2].field_256 >= stor14.length:
        revert with 0, 50
    if block.timestamp - stor15[arg2].field_512 / stor11 <= stor12:
        if block.timestamp - stor15[arg2].field_512 / stor11 and stor14[stor15[arg2].field_256].field_768 > -1 / block.timestamp - stor15[arg2].field_512 / stor11:
            revert with 0, 17
        if stor15[arg2].field_256 >= stor14.length:
            revert with 0, 50
        if block.timestamp - stor15[arg2].field_768 / stor11 < stor12:
            idx = 0
            while idx <= block.timestamp - stor15[arg2].field_768 / stor11:
                if 0 > !idx:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if False and stor14[stor15[arg2].field_256].field_1536 > 0:
                revert with 0, 17
            if block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 and stor14[stor15[arg2].field_256].field_256 > -1 / block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if False and stor14[stor15[arg2].field_256].field_256 > 0:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if 0 / stor9 > !(block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9):
                revert with 0, 17
            if (0 / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) < stor15[arg2].field_1024:
                revert with 0, 17
            if (0 / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024 < arg1:
                revert with 0, 'You don't have much in your node'
            if arg1 < 0:
                revert with 0, 17
            if arg1 and stor9 > -1 / arg1:
                revert with 0, 17
            if not (0 / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024:
                revert with 0, 18
            if (0 / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024 and arg1 * stor9 / (0 / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024 > -1 / (0 / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if 0 > !((0 / stor9 * arg1 * stor9 / (0 / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9 * arg1 * stor9 / (0 / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024) - (stor15[arg2].field_1024 * arg1 * stor9 / (0 / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024) / stor9):
                revert with 0, 17
            stor15[arg2].field_768 = block.timestamp
            if 0 / stor9 and arg1 * stor9 / (0 / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024 > -1 / 0 / stor9:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if stor15[arg2].field_1280 > !(0 / stor9 * arg1 * stor9 / (0 / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024 / stor9):
                revert with 0, 17
            stor15[arg2].field_1280 += 0 / stor9 * arg1 * stor9 / (0 / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024 / stor9
            if block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9 and arg1 * stor9 / (0 / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024 > -1 / block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            stor15[arg2].field_1024 = block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9 * arg1 * stor9 / (0 / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024 / stor9
            require ext_code.size(sub_85adc8b0Address)
            call sub_85adc8b0Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (0 / stor9 * arg1 * stor9 / (0 / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9 * arg1 * stor9 / (0 / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024) - (stor15[arg2].field_1024 * arg1 * stor9 / (0 / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024) / stor9
        else:
            idx = 0
            while idx <= stor12:
                if 0 > !idx:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if block.timestamp - stor15[arg2].field_768 / stor11 < stor12:
                revert with 0, 17
            if stor14[stor15[arg2].field_256].field_1792 and (block.timestamp - stor15[arg2].field_768 / stor11) - stor12 > -1 / stor14[stor15[arg2].field_256].field_1792:
                revert with 0, 17
            if False and stor14[stor15[arg2].field_256].field_1536 > 0:
                revert with 0, 17
            if 0 > !((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792) - (stor12 * stor14[stor15[arg2].field_256].field_1792)):
                revert with 0, 17
            if block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 and stor14[stor15[arg2].field_256].field_256 > -1 / block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792) - (stor12 * stor14[stor15[arg2].field_256].field_1792) and stor14[stor15[arg2].field_256].field_256 > -1 / (block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792) - (stor12 * stor14[stor15[arg2].field_256].field_1792):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9 > !(block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9):
                revert with 0, 17
            if ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) < stor15[arg2].field_1024:
                revert with 0, 17
            if ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024 < arg1:
                revert with 0, 'You don't have much in your node'
            if arg1 < 0:
                revert with 0, 17
            if arg1 and stor9 > -1 / arg1:
                revert with 0, 17
            if not ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024:
                revert with 0, 18
            if ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024 and arg1 * stor9 / ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024 > -1 / ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if 0 > !(((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9 * arg1 * stor9 / ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9 * arg1 * stor9 / ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024) - (stor15[arg2].field_1024 * arg1 * stor9 / ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024) / stor9):
                revert with 0, 17
            stor15[arg2].field_768 = block.timestamp
            if (block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9 and arg1 * stor9 / ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024 > -1 / (block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if stor15[arg2].field_1280 > !((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9 * arg1 * stor9 / ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024 / stor9):
                revert with 0, 17
            stor15[arg2].field_1280 += (block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9 * arg1 * stor9 / ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024 / stor9
            if block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9 and arg1 * stor9 / ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024 > -1 / block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            stor15[arg2].field_1024 = block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9 * arg1 * stor9 / ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024 / stor9
            require ext_code.size(sub_85adc8b0Address)
            call sub_85adc8b0Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9 * arg1 * stor9 / ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9 * arg1 * stor9 / ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024) - (stor15[arg2].field_1024 * arg1 * stor9 / ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_768 * stor14[stor15[arg2].field_256].field_256 / stor9) - stor15[arg2].field_1024) / stor9
    else:
        if block.timestamp - stor15[arg2].field_512 / stor11 < stor12:
            revert with 0, 17
        if (block.timestamp - stor15[arg2].field_512 / stor11) - stor12 and stor14[stor15[arg2].field_256].field_1280 > -1 / (block.timestamp - stor15[arg2].field_512 / stor11) - stor12:
            revert with 0, 17
        if stor14[stor15[arg2].field_256].field_1024 > !((block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280) - (stor12 * stor14[stor15[arg2].field_256].field_1280)):
            revert with 0, 17
        if stor15[arg2].field_256 >= stor14.length:
            revert with 0, 50
        if block.timestamp - stor15[arg2].field_768 / stor11 < stor12:
            idx = 0
            while idx <= block.timestamp - stor15[arg2].field_768 / stor11:
                if 0 > !idx:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if False and stor14[stor15[arg2].field_256].field_1536 > 0:
                revert with 0, 17
            if stor14[stor15[arg2].field_256].field_1024 + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280) - (stor12 * stor14[stor15[arg2].field_256].field_1280) and stor14[stor15[arg2].field_256].field_256 > -1 / stor14[stor15[arg2].field_256].field_1024 + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280) - (stor12 * stor14[stor15[arg2].field_256].field_1280):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if False and stor14[stor15[arg2].field_256].field_256 > 0:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if 0 / stor9 > !((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9):
                revert with 0, 17
            if (0 / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) < stor15[arg2].field_1024:
                revert with 0, 17
            if (0 / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024 < arg1:
                revert with 0, 'You don't have much in your node'
            if arg1 < 0:
                revert with 0, 17
            if arg1 and stor9 > -1 / arg1:
                revert with 0, 17
            if not (0 / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024:
                revert with 0, 18
            if (0 / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024 and arg1 * stor9 / (0 / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024 > -1 / (0 / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if 0 > !((0 / stor9 * arg1 * stor9 / (0 / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9 * arg1 * stor9 / (0 / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024) - (stor15[arg2].field_1024 * arg1 * stor9 / (0 / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024) / stor9):
                revert with 0, 17
            stor15[arg2].field_768 = block.timestamp
            if 0 / stor9 and arg1 * stor9 / (0 / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024 > -1 / 0 / stor9:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if stor15[arg2].field_1280 > !(0 / stor9 * arg1 * stor9 / (0 / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024 / stor9):
                revert with 0, 17
            stor15[arg2].field_1280 += 0 / stor9 * arg1 * stor9 / (0 / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024 / stor9
            if (stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9 and arg1 * stor9 / (0 / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024 > -1 / (stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            stor15[arg2].field_1024 = (stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9 * arg1 * stor9 / (0 / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024 / stor9
            require ext_code.size(sub_85adc8b0Address)
            call sub_85adc8b0Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (0 / stor9 * arg1 * stor9 / (0 / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9 * arg1 * stor9 / (0 / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024) - (stor15[arg2].field_1024 * arg1 * stor9 / (0 / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024) / stor9
        else:
            idx = 0
            while idx <= stor12:
                if 0 > !idx:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if block.timestamp - stor15[arg2].field_768 / stor11 < stor12:
                revert with 0, 17
            if stor14[stor15[arg2].field_256].field_1792 and (block.timestamp - stor15[arg2].field_768 / stor11) - stor12 > -1 / stor14[stor15[arg2].field_256].field_1792:
                revert with 0, 17
            if False and stor14[stor15[arg2].field_256].field_1536 > 0:
                revert with 0, 17
            if 0 > !((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792) - (stor12 * stor14[stor15[arg2].field_256].field_1792)):
                revert with 0, 17
            if stor14[stor15[arg2].field_256].field_1024 + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280) - (stor12 * stor14[stor15[arg2].field_256].field_1280) and stor14[stor15[arg2].field_256].field_256 > -1 / stor14[stor15[arg2].field_256].field_1024 + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280) - (stor12 * stor14[stor15[arg2].field_256].field_1280):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792) - (stor12 * stor14[stor15[arg2].field_256].field_1792) and stor14[stor15[arg2].field_256].field_256 > -1 / (block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792) - (stor12 * stor14[stor15[arg2].field_256].field_1792):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9 > !((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9):
                revert with 0, 17
            if ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) < stor15[arg2].field_1024:
                revert with 0, 17
            if ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024 < arg1:
                revert with 0, 'You don't have much in your node'
            if arg1 < 0:
                revert with 0, 17
            if arg1 and stor9 > -1 / arg1:
                revert with 0, 17
            if not ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024:
                revert with 0, 18
            if ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024 and arg1 * stor9 / ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024 > -1 / ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if 0 > !(((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9 * arg1 * stor9 / ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9 * arg1 * stor9 / ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024) - (stor15[arg2].field_1024 * arg1 * stor9 / ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024) / stor9):
                revert with 0, 17
            stor15[arg2].field_768 = block.timestamp
            if (block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9 and arg1 * stor9 / ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024 > -1 / (block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if stor15[arg2].field_1280 > !((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9 * arg1 * stor9 / ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024 / stor9):
                revert with 0, 17
            stor15[arg2].field_1280 += (block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9 * arg1 * stor9 / ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024 / stor9
            if (stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9 and arg1 * stor9 / ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024 > -1 / (stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            stor15[arg2].field_1024 = (stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9 * arg1 * stor9 / ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024 / stor9
            require ext_code.size(sub_85adc8b0Address)
            call sub_85adc8b0Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9 * arg1 * stor9 / ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9 * arg1 * stor9 / ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024) - (stor15[arg2].field_1024 * arg1 * stor9 / ((block.timestamp - stor15[arg2].field_768 / stor11 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1792 * stor14[stor15[arg2].field_256].field_256) / stor9) + ((stor14[stor15[arg2].field_256].field_1024 * stor14[stor15[arg2].field_256].field_256) + (block.timestamp - stor15[arg2].field_512 / stor11 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) - (stor12 * stor14[stor15[arg2].field_256].field_1280 * stor14[stor15[arg2].field_256].field_256) / stor9) - stor15[arg2].field_1024) / stor9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor4 = 1
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    if bool(uint8(stor5.field_8)) != 1:
        revert with 0, 'Node: Transfer is disabled'
    if msg.sender == arg1:
        if not arg2:
            revert with 0, 'ERC1155: transfer to the zero address'
        mem[ceil32(ceil32(arg5.length)) + 97] = 1
        mem[ceil32(ceil32(arg5.length)) + 129] = arg3
        mem[ceil32(ceil32(arg5.length)) + 161] = 1
        mem[64] = ceil32(ceil32(arg5.length)) + 225
        mem[ceil32(ceil32(arg5.length)) + 193] = arg4
        if balanceOf[arg3][address(arg1)] < arg4:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[arg3][address(arg1)] -= arg4
        if balanceOf[arg3][arg2] > !arg4:
            revert with 0, 17
        balanceOf[arg3][arg2] += arg4
        mem[ceil32(ceil32(arg5.length)) + 225] = arg3
        mem[ceil32(ceil32(arg5.length)) + 257] = arg4
        emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
        if not ext_code.size(arg2):
            mem[0] = arg1
            mem[32] = 16
            idx = 0
            s = 0
            while idx < sub_627dd5ca[address(arg1)]:
                if idx >= sub_627dd5ca[address(arg1)]:
                    revert with 0, 50
                if stor15[stor16[address(arg1)][idx]].field_256 != arg3:
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 16
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= sub_627dd5ca[address(arg1)]:
                    revert with 0, 50
                if not address(stor15[stor16[address(arg1)][idx]].field_0):
                    revert with 0, 'No node exist'
                if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
                    revert with 0, 50
                if block.timestamp < stor15[stor16[address(arg1)][idx]].field_512:
                    revert with 0, 17
                if not stor11:
                    revert with 0, 18
                if block.timestamp < stor15[stor16[address(arg1)][idx]].field_768:
                    revert with 0, 17
                if not stor11:
                    revert with 0, 18
                if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
                    revert with 0, 50
                if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 <= stor12:
                    if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 > -1 / block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11:
                        revert with 0, 17
                    if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
                        revert with 0, 50
                    if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
                        t = 0
                        while t <= block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11:
                            if 0 > !t:
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 16
                            t = t + 1
                            continue 
                        if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                            revert with 0, 17
                        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768:
                            revert with 0, 17
                        if not stor9:
                            revert with 0, 18
                        if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > 0:
                            revert with 0, 17
                        if not stor9:
                            revert with 0, 18
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        stor15[stor16[address(arg1)][idx]].field_768 = block.timestamp
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        if stor15[stor16[address(arg1)][idx]].field_1280 > !(0 / stor9):
                            revert with 0, 17
                        stor15[stor16[address(arg1)][idx]].field_1280 += 0 / stor9
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        if 0 / stor9 > !(block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9):
                            revert with 0, 17
                        if (0 / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                            revert with 0, 17
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        mem[0] = sub_627dd5ca[address(arg1)][idx]
                        mem[32] = 15
                        stor15[stor16[address(arg1)][idx]].field_1024 = block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = (0 / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                        require ext_code.size(sub_85adc8b0Address)
                        call sub_85adc8b0Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), (0 / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1894 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1894] == bool(mem[_1894])
                    else:
                        t = 0
                        while t <= stor12:
                            if 0 > !t:
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 16
                            t = t + 1
                            continue 
                        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
                            revert with 0, 17
                        if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 and (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11) - stor12 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792:
                            revert with 0, 17
                        if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                            revert with 0, 17
                        if 0 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792)):
                            revert with 0, 17
                        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768:
                            revert with 0, 17
                        if not stor9:
                            revert with 0, 18
                        if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792):
                            revert with 0, 17
                        if not stor9:
                            revert with 0, 18
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        stor15[stor16[address(arg1)][idx]].field_768 = block.timestamp
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        if stor15[stor16[address(arg1)][idx]].field_1280 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9):
                            revert with 0, 17
                        stor15[stor16[address(arg1)][idx]].field_1280 += (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9 > !(block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9):
                            revert with 0, 17
                        if ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                            revert with 0, 17
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        mem[0] = sub_627dd5ca[address(arg1)][idx]
                        mem[32] = 15
                        stor15[stor16[address(arg1)][idx]].field_1024 = block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                        require ext_code.size(sub_85adc8b0Address)
                        call sub_85adc8b0Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1954 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1954] == bool(mem[_1954])
                else:
                    if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 < stor12:
                        revert with 0, 17
                    if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11) - stor12 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 > -1 / (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11) - stor12:
                        revert with 0, 17
                    if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280)):
                        revert with 0, 17
                    if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
                        revert with 0, 50
                    if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
                        t = 0
                        while t <= block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11:
                            if 0 > !t:
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 16
                            t = t + 1
                            continue 
                        if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                            revert with 0, 17
                        if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280):
                            revert with 0, 17
                        if not stor9:
                            revert with 0, 18
                        if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > 0:
                            revert with 0, 17
                        if not stor9:
                            revert with 0, 18
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        stor15[stor16[address(arg1)][idx]].field_768 = block.timestamp
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        if stor15[stor16[address(arg1)][idx]].field_1280 > !(0 / stor9):
                            revert with 0, 17
                        stor15[stor16[address(arg1)][idx]].field_1280 += 0 / stor9
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        if 0 / stor9 > !((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9):
                            revert with 0, 17
                        if (0 / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                            revert with 0, 17
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        mem[0] = sub_627dd5ca[address(arg1)][idx]
                        mem[32] = 15
                        stor15[stor16[address(arg1)][idx]].field_1024 = (stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = (0 / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                        require ext_code.size(sub_85adc8b0Address)
                        call sub_85adc8b0Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), (0 / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1895 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1895] == bool(mem[_1895])
                    else:
                        t = 0
                        while t <= stor12:
                            if 0 > !t:
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 16
                            t = t + 1
                            continue 
                        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
                            revert with 0, 17
                        if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 and (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11) - stor12 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792:
                            revert with 0, 17
                        if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                            revert with 0, 17
                        if 0 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792)):
                            revert with 0, 17
                        if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280):
                            revert with 0, 17
                        if not stor9:
                            revert with 0, 18
                        if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792):
                            revert with 0, 17
                        if not stor9:
                            revert with 0, 18
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        stor15[stor16[address(arg1)][idx]].field_768 = block.timestamp
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        if stor15[stor16[address(arg1)][idx]].field_1280 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9):
                            revert with 0, 17
                        stor15[stor16[address(arg1)][idx]].field_1280 += (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9 > !((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9):
                            revert with 0, 17
                        if ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                            revert with 0, 17
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        mem[0] = sub_627dd5ca[address(arg1)][idx]
                        mem[32] = 15
                        stor15[stor16[address(arg1)][idx]].field_1024 = (stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                        require ext_code.size(sub_85adc8b0Address)
                        call sub_85adc8b0Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1956 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1956] == bool(mem[_1956])
                if idx >= sub_627dd5ca[address(arg1)]:
                    revert with 0, 50
                address(stor15[stor16[address(arg1)][idx]].field_0) = arg2
                if idx >= sub_627dd5ca[arg1]:
                    revert with 0, 50
                sub_627dd5ca[address(arg2)]++
                sub_627dd5ca[address(arg2)][sub_627dd5ca[address(arg2)]] = sub_627dd5ca[arg1][idx]
                if idx >= sub_627dd5ca[address(arg1)]:
                    revert with 0, 50
                sub_627dd5ca[address(arg1)][idx] = 0
                if s == -1:
                    revert with 0, 17
                if s + 1 >= arg4:
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 16
                idx = idx + 1
                s = s + 1
                continue 
        else:
            mem[ceil32(ceil32(arg5.length)) + 229] = msg.sender
            mem[ceil32(ceil32(arg5.length)) + 261] = arg1
            mem[ceil32(ceil32(arg5.length)) + 293] = arg3
            mem[ceil32(ceil32(arg5.length)) + 325] = arg4
            mem[ceil32(ceil32(arg5.length)) + 357] = 160
            mem[ceil32(ceil32(arg5.length)) + 389] = arg5.length
            mem[ceil32(ceil32(arg5.length)) + 421 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 1) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
            if ceil32(arg5.length) <= arg5.length:
                require ext_code.size(arg2)
                call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                mem[ceil32(ceil32(arg5.length)) + 225] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[64] = ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 225
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                mem[0] = arg1
                mem[32] = 16
                idx = 0
                s = 0
                while idx < sub_627dd5ca[address(arg1)]:
                    if idx >= sub_627dd5ca[address(arg1)]:
                        revert with 0, 50
                    if stor15[stor16[address(arg1)][idx]].field_256 != arg3:
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 16
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= sub_627dd5ca[address(arg1)]:
                        revert with 0, 50
                    if not address(stor15[stor16[address(arg1)][idx]].field_0):
                        revert with 0, 'No node exist'
                    if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
                        revert with 0, 50
                    if block.timestamp < stor15[stor16[address(arg1)][idx]].field_512:
                        revert with 0, 17
                    if not stor11:
                        revert with 0, 18
                    if block.timestamp < stor15[stor16[address(arg1)][idx]].field_768:
                        revert with 0, 17
                    if not stor11:
                        revert with 0, 18
                    if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
                        revert with 0, 50
                    if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 <= stor12:
                        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 > -1 / block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11:
                            revert with 0, 17
                        if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
                            revert with 0, 50
                        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
                            t = 0
                            while t <= block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11:
                                if 0 > !t:
                                    revert with 0, 17
                                if t == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 16
                                t = t + 1
                                continue 
                            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                                revert with 0, 17
                            if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768:
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > 0:
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            stor15[stor16[address(arg1)][idx]].field_768 = block.timestamp
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if stor15[stor16[address(arg1)][idx]].field_1280 > !(0 / stor9):
                                revert with 0, 17
                            stor15[stor16[address(arg1)][idx]].field_1280 += 0 / stor9
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if 0 / stor9 > !(block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9):
                                revert with 0, 17
                            if (0 / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                                revert with 0, 17
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            mem[0] = sub_627dd5ca[address(arg1)][idx]
                            mem[32] = 15
                            stor15[stor16[address(arg1)][idx]].field_1024 = block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = (0 / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            require ext_code.size(sub_85adc8b0Address)
                            call sub_85adc8b0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (0 / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2586 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2586] == bool(mem[_2586])
                        else:
                            t = 0
                            while t <= stor12:
                                if 0 > !t:
                                    revert with 0, 17
                                if t == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 16
                                t = t + 1
                                continue 
                            if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
                                revert with 0, 17
                            if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 and (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11) - stor12 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792:
                                revert with 0, 17
                            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                                revert with 0, 17
                            if 0 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792)):
                                revert with 0, 17
                            if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768:
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792):
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            stor15[stor16[address(arg1)][idx]].field_768 = block.timestamp
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if stor15[stor16[address(arg1)][idx]].field_1280 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9):
                                revert with 0, 17
                            stor15[stor16[address(arg1)][idx]].field_1280 += (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9 > !(block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9):
                                revert with 0, 17
                            if ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                                revert with 0, 17
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            mem[0] = sub_627dd5ca[address(arg1)][idx]
                            mem[32] = 15
                            stor15[stor16[address(arg1)][idx]].field_1024 = block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            require ext_code.size(sub_85adc8b0Address)
                            call sub_85adc8b0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2706 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2706] == bool(mem[_2706])
                    else:
                        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 < stor12:
                            revert with 0, 17
                        if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11) - stor12 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 > -1 / (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11) - stor12:
                            revert with 0, 17
                        if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280)):
                            revert with 0, 17
                        if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
                            revert with 0, 50
                        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
                            t = 0
                            while t <= block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11:
                                if 0 > !t:
                                    revert with 0, 17
                                if t == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 16
                                t = t + 1
                                continue 
                            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                                revert with 0, 17
                            if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280):
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > 0:
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            stor15[stor16[address(arg1)][idx]].field_768 = block.timestamp
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if stor15[stor16[address(arg1)][idx]].field_1280 > !(0 / stor9):
                                revert with 0, 17
                            stor15[stor16[address(arg1)][idx]].field_1280 += 0 / stor9
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if 0 / stor9 > !((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9):
                                revert with 0, 17
                            if (0 / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                                revert with 0, 17
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            mem[0] = sub_627dd5ca[address(arg1)][idx]
                            mem[32] = 15
                            stor15[stor16[address(arg1)][idx]].field_1024 = (stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = (0 / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            require ext_code.size(sub_85adc8b0Address)
                            call sub_85adc8b0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (0 / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2587 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2587] == bool(mem[_2587])
                        else:
                            t = 0
                            while t <= stor12:
                                if 0 > !t:
                                    revert with 0, 17
                                if t == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 16
                                t = t + 1
                                continue 
                            if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
                                revert with 0, 17
                            if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 and (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11) - stor12 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792:
                                revert with 0, 17
                            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                                revert with 0, 17
                            if 0 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792)):
                                revert with 0, 17
                            if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280):
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792):
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            stor15[stor16[address(arg1)][idx]].field_768 = block.timestamp
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if stor15[stor16[address(arg1)][idx]].field_1280 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9):
                                revert with 0, 17
                            stor15[stor16[address(arg1)][idx]].field_1280 += (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9 > !((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9):
                                revert with 0, 17
                            if ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                                revert with 0, 17
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            mem[0] = sub_627dd5ca[address(arg1)][idx]
                            mem[32] = 15
                            stor15[stor16[address(arg1)][idx]].field_1024 = (stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            require ext_code.size(sub_85adc8b0Address)
                            call sub_85adc8b0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2708 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2708] == bool(mem[_2708])
                    if idx >= sub_627dd5ca[address(arg1)]:
                        revert with 0, 50
                    address(stor15[stor16[address(arg1)][idx]].field_0) = arg2
                    if idx >= sub_627dd5ca[arg1]:
                        revert with 0, 50
                    sub_627dd5ca[address(arg2)]++
                    sub_627dd5ca[address(arg2)][sub_627dd5ca[address(arg2)]] = sub_627dd5ca[arg1][idx]
                    if idx >= sub_627dd5ca[address(arg1)]:
                        revert with 0, 50
                    sub_627dd5ca[address(arg1)][idx] = 0
                    if s == -1:
                        revert with 0, 17
                    if s + 1 >= arg4:
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 16
                    idx = idx + 1
                    s = s + 1
                    continue 
            else:
                mem[ceil32(ceil32(arg5.length)) + arg5.length + 421] = 0
                require ext_code.size(arg2)
                call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                mem[ceil32(ceil32(arg5.length)) + 225] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[64] = ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 225
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                mem[0] = arg1
                mem[32] = 16
                idx = 0
                s = 0
                while idx < sub_627dd5ca[address(arg1)]:
                    if idx >= sub_627dd5ca[address(arg1)]:
                        revert with 0, 50
                    if stor15[stor16[address(arg1)][idx]].field_256 != arg3:
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 16
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= sub_627dd5ca[address(arg1)]:
                        revert with 0, 50
                    if not address(stor15[stor16[address(arg1)][idx]].field_0):
                        revert with 0, 'No node exist'
                    if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
                        revert with 0, 50
                    if block.timestamp < stor15[stor16[address(arg1)][idx]].field_512:
                        revert with 0, 17
                    if not stor11:
                        revert with 0, 18
                    if block.timestamp < stor15[stor16[address(arg1)][idx]].field_768:
                        revert with 0, 17
                    if not stor11:
                        revert with 0, 18
                    if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
                        revert with 0, 50
                    if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 <= stor12:
                        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 > -1 / block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11:
                            revert with 0, 17
                        if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
                            revert with 0, 50
                        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
                            t = 0
                            while t <= block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11:
                                if 0 > !t:
                                    revert with 0, 17
                                if t == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 16
                                t = t + 1
                                continue 
                            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                                revert with 0, 17
                            if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768:
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > 0:
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            stor15[stor16[address(arg1)][idx]].field_768 = block.timestamp
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if stor15[stor16[address(arg1)][idx]].field_1280 > !(0 / stor9):
                                revert with 0, 17
                            stor15[stor16[address(arg1)][idx]].field_1280 += 0 / stor9
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if 0 / stor9 > !(block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9):
                                revert with 0, 17
                            if (0 / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                                revert with 0, 17
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            mem[0] = sub_627dd5ca[address(arg1)][idx]
                            mem[32] = 15
                            stor15[stor16[address(arg1)][idx]].field_1024 = block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = (0 / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            require ext_code.size(sub_85adc8b0Address)
                            call sub_85adc8b0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (0 / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2588 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2588] == bool(mem[_2588])
                        else:
                            t = 0
                            while t <= stor12:
                                if 0 > !t:
                                    revert with 0, 17
                                if t == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 16
                                t = t + 1
                                continue 
                            if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
                                revert with 0, 17
                            if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 and (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11) - stor12 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792:
                                revert with 0, 17
                            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                                revert with 0, 17
                            if 0 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792)):
                                revert with 0, 17
                            if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768:
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792):
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            stor15[stor16[address(arg1)][idx]].field_768 = block.timestamp
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if stor15[stor16[address(arg1)][idx]].field_1280 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9):
                                revert with 0, 17
                            stor15[stor16[address(arg1)][idx]].field_1280 += (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9 > !(block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9):
                                revert with 0, 17
                            if ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                                revert with 0, 17
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            mem[0] = sub_627dd5ca[address(arg1)][idx]
                            mem[32] = 15
                            stor15[stor16[address(arg1)][idx]].field_1024 = block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            require ext_code.size(sub_85adc8b0Address)
                            call sub_85adc8b0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2710 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2710] == bool(mem[_2710])
                    else:
                        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 < stor12:
                            revert with 0, 17
                        if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11) - stor12 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 > -1 / (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11) - stor12:
                            revert with 0, 17
                        if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280)):
                            revert with 0, 17
                        if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
                            revert with 0, 50
                        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
                            t = 0
                            while t <= block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11:
                                if 0 > !t:
                                    revert with 0, 17
                                if t == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 16
                                t = t + 1
                                continue 
                            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                                revert with 0, 17
                            if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280):
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > 0:
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            stor15[stor16[address(arg1)][idx]].field_768 = block.timestamp
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if stor15[stor16[address(arg1)][idx]].field_1280 > !(0 / stor9):
                                revert with 0, 17
                            stor15[stor16[address(arg1)][idx]].field_1280 += 0 / stor9
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if 0 / stor9 > !((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9):
                                revert with 0, 17
                            if (0 / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                                revert with 0, 17
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            mem[0] = sub_627dd5ca[address(arg1)][idx]
                            mem[32] = 15
                            stor15[stor16[address(arg1)][idx]].field_1024 = (stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = (0 / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            require ext_code.size(sub_85adc8b0Address)
                            call sub_85adc8b0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (0 / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2589 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2589] == bool(mem[_2589])
                        else:
                            t = 0
                            while t <= stor12:
                                if 0 > !t:
                                    revert with 0, 17
                                if t == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 16
                                t = t + 1
                                continue 
                            if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
                                revert with 0, 17
                            if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 and (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11) - stor12 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792:
                                revert with 0, 17
                            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                                revert with 0, 17
                            if 0 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792)):
                                revert with 0, 17
                            if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280):
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792):
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            stor15[stor16[address(arg1)][idx]].field_768 = block.timestamp
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if stor15[stor16[address(arg1)][idx]].field_1280 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9):
                                revert with 0, 17
                            stor15[stor16[address(arg1)][idx]].field_1280 += (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9 > !((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9):
                                revert with 0, 17
                            if ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                                revert with 0, 17
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            mem[0] = sub_627dd5ca[address(arg1)][idx]
                            mem[32] = 15
                            stor15[stor16[address(arg1)][idx]].field_1024 = (stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            require ext_code.size(sub_85adc8b0Address)
                            call sub_85adc8b0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2712 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2712] == bool(mem[_2712])
                    if idx >= sub_627dd5ca[address(arg1)]:
                        revert with 0, 50
                    address(stor15[stor16[address(arg1)][idx]].field_0) = arg2
                    if idx >= sub_627dd5ca[arg1]:
                        revert with 0, 50
                    sub_627dd5ca[address(arg2)]++
                    sub_627dd5ca[address(arg2)][sub_627dd5ca[address(arg2)]] = sub_627dd5ca[arg1][idx]
                    if idx >= sub_627dd5ca[address(arg1)]:
                        revert with 0, 50
                    sub_627dd5ca[address(arg1)][idx] = 0
                    if s == -1:
                        revert with 0, 17
                    if s + 1 >= arg4:
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 16
                    idx = idx + 1
                    s = s + 1
                    continue 
    else:
        if not stor1[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
        if not arg2:
            revert with 0, 'ERC1155: transfer to the zero address'
        mem[ceil32(ceil32(arg5.length)) + 97] = 1
        mem[ceil32(ceil32(arg5.length)) + 129] = arg3
        mem[ceil32(ceil32(arg5.length)) + 161] = 1
        mem[64] = ceil32(ceil32(arg5.length)) + 225
        mem[ceil32(ceil32(arg5.length)) + 193] = arg4
        if balanceOf[arg3][address(arg1)] < arg4:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[arg3][address(arg1)] -= arg4
        if balanceOf[arg3][arg2] > !arg4:
            revert with 0, 17
        balanceOf[arg3][arg2] += arg4
        mem[ceil32(ceil32(arg5.length)) + 225] = arg3
        mem[ceil32(ceil32(arg5.length)) + 257] = arg4
        emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
        if not ext_code.size(arg2):
            mem[0] = arg1
            mem[32] = 16
            idx = 0
            s = 0
            while idx < sub_627dd5ca[address(arg1)]:
                if idx >= sub_627dd5ca[address(arg1)]:
                    revert with 0, 50
                if stor15[stor16[address(arg1)][idx]].field_256 != arg3:
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 16
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= sub_627dd5ca[address(arg1)]:
                    revert with 0, 50
                if not address(stor15[stor16[address(arg1)][idx]].field_0):
                    revert with 0, 'No node exist'
                if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
                    revert with 0, 50
                if block.timestamp < stor15[stor16[address(arg1)][idx]].field_512:
                    revert with 0, 17
                if not stor11:
                    revert with 0, 18
                if block.timestamp < stor15[stor16[address(arg1)][idx]].field_768:
                    revert with 0, 17
                if not stor11:
                    revert with 0, 18
                if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
                    revert with 0, 50
                if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 <= stor12:
                    if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 > -1 / block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11:
                        revert with 0, 17
                    if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
                        revert with 0, 50
                    if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
                        t = 0
                        while t <= block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11:
                            if 0 > !t:
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 16
                            t = t + 1
                            continue 
                        if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                            revert with 0, 17
                        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768:
                            revert with 0, 17
                        if not stor9:
                            revert with 0, 18
                        if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > 0:
                            revert with 0, 17
                        if not stor9:
                            revert with 0, 18
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        stor15[stor16[address(arg1)][idx]].field_768 = block.timestamp
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        if stor15[stor16[address(arg1)][idx]].field_1280 > !(0 / stor9):
                            revert with 0, 17
                        stor15[stor16[address(arg1)][idx]].field_1280 += 0 / stor9
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        if 0 / stor9 > !(block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9):
                            revert with 0, 17
                        if (0 / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                            revert with 0, 17
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        mem[0] = sub_627dd5ca[address(arg1)][idx]
                        mem[32] = 15
                        stor15[stor16[address(arg1)][idx]].field_1024 = block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = (0 / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                        require ext_code.size(sub_85adc8b0Address)
                        call sub_85adc8b0Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), (0 / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1896 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1896] == bool(mem[_1896])
                    else:
                        t = 0
                        while t <= stor12:
                            if 0 > !t:
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 16
                            t = t + 1
                            continue 
                        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
                            revert with 0, 17
                        if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 and (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11) - stor12 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792:
                            revert with 0, 17
                        if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                            revert with 0, 17
                        if 0 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792)):
                            revert with 0, 17
                        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768:
                            revert with 0, 17
                        if not stor9:
                            revert with 0, 18
                        if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792):
                            revert with 0, 17
                        if not stor9:
                            revert with 0, 18
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        stor15[stor16[address(arg1)][idx]].field_768 = block.timestamp
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        if stor15[stor16[address(arg1)][idx]].field_1280 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9):
                            revert with 0, 17
                        stor15[stor16[address(arg1)][idx]].field_1280 += (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9 > !(block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9):
                            revert with 0, 17
                        if ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                            revert with 0, 17
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        mem[0] = sub_627dd5ca[address(arg1)][idx]
                        mem[32] = 15
                        stor15[stor16[address(arg1)][idx]].field_1024 = block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                        require ext_code.size(sub_85adc8b0Address)
                        call sub_85adc8b0Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1958 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1958] == bool(mem[_1958])
                else:
                    if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 < stor12:
                        revert with 0, 17
                    if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11) - stor12 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 > -1 / (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11) - stor12:
                        revert with 0, 17
                    if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280)):
                        revert with 0, 17
                    if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
                        revert with 0, 50
                    if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
                        t = 0
                        while t <= block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11:
                            if 0 > !t:
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 16
                            t = t + 1
                            continue 
                        if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                            revert with 0, 17
                        if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280):
                            revert with 0, 17
                        if not stor9:
                            revert with 0, 18
                        if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > 0:
                            revert with 0, 17
                        if not stor9:
                            revert with 0, 18
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        stor15[stor16[address(arg1)][idx]].field_768 = block.timestamp
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        if stor15[stor16[address(arg1)][idx]].field_1280 > !(0 / stor9):
                            revert with 0, 17
                        stor15[stor16[address(arg1)][idx]].field_1280 += 0 / stor9
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        if 0 / stor9 > !((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9):
                            revert with 0, 17
                        if (0 / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                            revert with 0, 17
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        mem[0] = sub_627dd5ca[address(arg1)][idx]
                        mem[32] = 15
                        stor15[stor16[address(arg1)][idx]].field_1024 = (stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = (0 / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                        require ext_code.size(sub_85adc8b0Address)
                        call sub_85adc8b0Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), (0 / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1897 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1897] == bool(mem[_1897])
                    else:
                        t = 0
                        while t <= stor12:
                            if 0 > !t:
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 16
                            t = t + 1
                            continue 
                        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
                            revert with 0, 17
                        if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 and (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11) - stor12 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792:
                            revert with 0, 17
                        if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                            revert with 0, 17
                        if 0 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792)):
                            revert with 0, 17
                        if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280):
                            revert with 0, 17
                        if not stor9:
                            revert with 0, 18
                        if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792):
                            revert with 0, 17
                        if not stor9:
                            revert with 0, 18
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        stor15[stor16[address(arg1)][idx]].field_768 = block.timestamp
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        if stor15[stor16[address(arg1)][idx]].field_1280 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9):
                            revert with 0, 17
                        stor15[stor16[address(arg1)][idx]].field_1280 += (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9 > !((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9):
                            revert with 0, 17
                        if ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                            revert with 0, 17
                        if idx >= sub_627dd5ca[address(arg1)]:
                            revert with 0, 50
                        mem[0] = sub_627dd5ca[address(arg1)][idx]
                        mem[32] = 15
                        stor15[stor16[address(arg1)][idx]].field_1024 = (stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                        require ext_code.size(sub_85adc8b0Address)
                        call sub_85adc8b0Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1960 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1960] == bool(mem[_1960])
                if idx >= sub_627dd5ca[address(arg1)]:
                    revert with 0, 50
                address(stor15[stor16[address(arg1)][idx]].field_0) = arg2
                if idx >= sub_627dd5ca[arg1]:
                    revert with 0, 50
                sub_627dd5ca[address(arg2)]++
                sub_627dd5ca[address(arg2)][sub_627dd5ca[address(arg2)]] = sub_627dd5ca[arg1][idx]
                if idx >= sub_627dd5ca[address(arg1)]:
                    revert with 0, 50
                sub_627dd5ca[address(arg1)][idx] = 0
                if s == -1:
                    revert with 0, 17
                if s + 1 >= arg4:
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 16
                idx = idx + 1
                s = s + 1
                continue 
        else:
            mem[ceil32(ceil32(arg5.length)) + 229] = msg.sender
            mem[ceil32(ceil32(arg5.length)) + 261] = arg1
            mem[ceil32(ceil32(arg5.length)) + 293] = arg3
            mem[ceil32(ceil32(arg5.length)) + 325] = arg4
            mem[ceil32(ceil32(arg5.length)) + 357] = 160
            mem[ceil32(ceil32(arg5.length)) + 389] = arg5.length
            mem[ceil32(ceil32(arg5.length)) + 421 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 1) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
            if ceil32(arg5.length) <= arg5.length:
                require ext_code.size(arg2)
                call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                mem[ceil32(ceil32(arg5.length)) + 225] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[64] = ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 225
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                mem[0] = arg1
                mem[32] = 16
                idx = 0
                s = 0
                while idx < sub_627dd5ca[address(arg1)]:
                    if idx >= sub_627dd5ca[address(arg1)]:
                        revert with 0, 50
                    if stor15[stor16[address(arg1)][idx]].field_256 != arg3:
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 16
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= sub_627dd5ca[address(arg1)]:
                        revert with 0, 50
                    if not address(stor15[stor16[address(arg1)][idx]].field_0):
                        revert with 0, 'No node exist'
                    if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
                        revert with 0, 50
                    if block.timestamp < stor15[stor16[address(arg1)][idx]].field_512:
                        revert with 0, 17
                    if not stor11:
                        revert with 0, 18
                    if block.timestamp < stor15[stor16[address(arg1)][idx]].field_768:
                        revert with 0, 17
                    if not stor11:
                        revert with 0, 18
                    if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
                        revert with 0, 50
                    if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 <= stor12:
                        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 > -1 / block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11:
                            revert with 0, 17
                        if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
                            revert with 0, 50
                        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
                            t = 0
                            while t <= block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11:
                                if 0 > !t:
                                    revert with 0, 17
                                if t == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 16
                                t = t + 1
                                continue 
                            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                                revert with 0, 17
                            if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768:
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > 0:
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            stor15[stor16[address(arg1)][idx]].field_768 = block.timestamp
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if stor15[stor16[address(arg1)][idx]].field_1280 > !(0 / stor9):
                                revert with 0, 17
                            stor15[stor16[address(arg1)][idx]].field_1280 += 0 / stor9
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if 0 / stor9 > !(block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9):
                                revert with 0, 17
                            if (0 / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                                revert with 0, 17
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            mem[0] = sub_627dd5ca[address(arg1)][idx]
                            mem[32] = 15
                            stor15[stor16[address(arg1)][idx]].field_1024 = block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = (0 / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            require ext_code.size(sub_85adc8b0Address)
                            call sub_85adc8b0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (0 / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2590 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2590] == bool(mem[_2590])
                        else:
                            t = 0
                            while t <= stor12:
                                if 0 > !t:
                                    revert with 0, 17
                                if t == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 16
                                t = t + 1
                                continue 
                            if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
                                revert with 0, 17
                            if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 and (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11) - stor12 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792:
                                revert with 0, 17
                            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                                revert with 0, 17
                            if 0 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792)):
                                revert with 0, 17
                            if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768:
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792):
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            stor15[stor16[address(arg1)][idx]].field_768 = block.timestamp
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if stor15[stor16[address(arg1)][idx]].field_1280 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9):
                                revert with 0, 17
                            stor15[stor16[address(arg1)][idx]].field_1280 += (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9 > !(block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9):
                                revert with 0, 17
                            if ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                                revert with 0, 17
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            mem[0] = sub_627dd5ca[address(arg1)][idx]
                            mem[32] = 15
                            stor15[stor16[address(arg1)][idx]].field_1024 = block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            require ext_code.size(sub_85adc8b0Address)
                            call sub_85adc8b0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2714 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2714] == bool(mem[_2714])
                    else:
                        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 < stor12:
                            revert with 0, 17
                        if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11) - stor12 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 > -1 / (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11) - stor12:
                            revert with 0, 17
                        if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280)):
                            revert with 0, 17
                        if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
                            revert with 0, 50
                        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
                            t = 0
                            while t <= block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11:
                                if 0 > !t:
                                    revert with 0, 17
                                if t == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 16
                                t = t + 1
                                continue 
                            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                                revert with 0, 17
                            if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280):
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > 0:
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            stor15[stor16[address(arg1)][idx]].field_768 = block.timestamp
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if stor15[stor16[address(arg1)][idx]].field_1280 > !(0 / stor9):
                                revert with 0, 17
                            stor15[stor16[address(arg1)][idx]].field_1280 += 0 / stor9
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if 0 / stor9 > !((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9):
                                revert with 0, 17
                            if (0 / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                                revert with 0, 17
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            mem[0] = sub_627dd5ca[address(arg1)][idx]
                            mem[32] = 15
                            stor15[stor16[address(arg1)][idx]].field_1024 = (stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = (0 / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            require ext_code.size(sub_85adc8b0Address)
                            call sub_85adc8b0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (0 / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2591 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2591] == bool(mem[_2591])
                        else:
                            t = 0
                            while t <= stor12:
                                if 0 > !t:
                                    revert with 0, 17
                                if t == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 16
                                t = t + 1
                                continue 
                            if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
                                revert with 0, 17
                            if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 and (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11) - stor12 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792:
                                revert with 0, 17
                            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                                revert with 0, 17
                            if 0 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792)):
                                revert with 0, 17
                            if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280):
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792):
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            stor15[stor16[address(arg1)][idx]].field_768 = block.timestamp
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if stor15[stor16[address(arg1)][idx]].field_1280 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9):
                                revert with 0, 17
                            stor15[stor16[address(arg1)][idx]].field_1280 += (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9 > !((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9):
                                revert with 0, 17
                            if ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                                revert with 0, 17
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            mem[0] = sub_627dd5ca[address(arg1)][idx]
                            mem[32] = 15
                            stor15[stor16[address(arg1)][idx]].field_1024 = (stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            require ext_code.size(sub_85adc8b0Address)
                            call sub_85adc8b0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2716 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2716] == bool(mem[_2716])
                    if idx >= sub_627dd5ca[address(arg1)]:
                        revert with 0, 50
                    address(stor15[stor16[address(arg1)][idx]].field_0) = arg2
                    if idx >= sub_627dd5ca[arg1]:
                        revert with 0, 50
                    sub_627dd5ca[address(arg2)]++
                    sub_627dd5ca[address(arg2)][sub_627dd5ca[address(arg2)]] = sub_627dd5ca[arg1][idx]
                    if idx >= sub_627dd5ca[address(arg1)]:
                        revert with 0, 50
                    sub_627dd5ca[address(arg1)][idx] = 0
                    if s == -1:
                        revert with 0, 17
                    if s + 1 >= arg4:
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 16
                    idx = idx + 1
                    s = s + 1
                    continue 
            else:
                mem[ceil32(ceil32(arg5.length)) + arg5.length + 421] = 0
                require ext_code.size(arg2)
                call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                mem[ceil32(ceil32(arg5.length)) + 225] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[64] = ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 225
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                mem[0] = arg1
                mem[32] = 16
                idx = 0
                s = 0
                while idx < sub_627dd5ca[address(arg1)]:
                    if idx >= sub_627dd5ca[address(arg1)]:
                        revert with 0, 50
                    if stor15[stor16[address(arg1)][idx]].field_256 != arg3:
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 16
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= sub_627dd5ca[address(arg1)]:
                        revert with 0, 50
                    if not address(stor15[stor16[address(arg1)][idx]].field_0):
                        revert with 0, 'No node exist'
                    if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
                        revert with 0, 50
                    if block.timestamp < stor15[stor16[address(arg1)][idx]].field_512:
                        revert with 0, 17
                    if not stor11:
                        revert with 0, 18
                    if block.timestamp < stor15[stor16[address(arg1)][idx]].field_768:
                        revert with 0, 17
                    if not stor11:
                        revert with 0, 18
                    if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
                        revert with 0, 50
                    if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 <= stor12:
                        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 > -1 / block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11:
                            revert with 0, 17
                        if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
                            revert with 0, 50
                        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
                            t = 0
                            while t <= block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11:
                                if 0 > !t:
                                    revert with 0, 17
                                if t == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 16
                                t = t + 1
                                continue 
                            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                                revert with 0, 17
                            if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768:
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > 0:
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            stor15[stor16[address(arg1)][idx]].field_768 = block.timestamp
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if stor15[stor16[address(arg1)][idx]].field_1280 > !(0 / stor9):
                                revert with 0, 17
                            stor15[stor16[address(arg1)][idx]].field_1280 += 0 / stor9
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if 0 / stor9 > !(block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9):
                                revert with 0, 17
                            if (0 / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                                revert with 0, 17
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            mem[0] = sub_627dd5ca[address(arg1)][idx]
                            mem[32] = 15
                            stor15[stor16[address(arg1)][idx]].field_1024 = block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = (0 / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            require ext_code.size(sub_85adc8b0Address)
                            call sub_85adc8b0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (0 / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2592 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2592] == bool(mem[_2592])
                        else:
                            t = 0
                            while t <= stor12:
                                if 0 > !t:
                                    revert with 0, 17
                                if t == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 16
                                t = t + 1
                                continue 
                            if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
                                revert with 0, 17
                            if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 and (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11) - stor12 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792:
                                revert with 0, 17
                            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                                revert with 0, 17
                            if 0 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792)):
                                revert with 0, 17
                            if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768:
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792):
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            stor15[stor16[address(arg1)][idx]].field_768 = block.timestamp
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if stor15[stor16[address(arg1)][idx]].field_1280 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9):
                                revert with 0, 17
                            stor15[stor16[address(arg1)][idx]].field_1280 += (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9 > !(block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9):
                                revert with 0, 17
                            if ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                                revert with 0, 17
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            mem[0] = sub_627dd5ca[address(arg1)][idx]
                            mem[32] = 15
                            stor15[stor16[address(arg1)][idx]].field_1024 = block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            require ext_code.size(sub_85adc8b0Address)
                            call sub_85adc8b0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_768 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2718 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2718] == bool(mem[_2718])
                    else:
                        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 < stor12:
                            revert with 0, 17
                        if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11) - stor12 and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 > -1 / (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11) - stor12:
                            revert with 0, 17
                        if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280)):
                            revert with 0, 17
                        if stor15[stor16[address(arg1)][idx]].field_256 >= stor14.length:
                            revert with 0, 50
                        if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
                            t = 0
                            while t <= block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11:
                                if 0 > !t:
                                    revert with 0, 17
                                if t == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 16
                                t = t + 1
                                continue 
                            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                                revert with 0, 17
                            if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280):
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > 0:
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            stor15[stor16[address(arg1)][idx]].field_768 = block.timestamp
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if stor15[stor16[address(arg1)][idx]].field_1280 > !(0 / stor9):
                                revert with 0, 17
                            stor15[stor16[address(arg1)][idx]].field_1280 += 0 / stor9
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if 0 / stor9 > !((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9):
                                revert with 0, 17
                            if (0 / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                                revert with 0, 17
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            mem[0] = sub_627dd5ca[address(arg1)][idx]
                            mem[32] = 15
                            stor15[stor16[address(arg1)][idx]].field_1024 = (stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = (0 / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            require ext_code.size(sub_85adc8b0Address)
                            call sub_85adc8b0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (0 / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2593 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2593] == bool(mem[_2593])
                        else:
                            t = 0
                            while t <= stor12:
                                if 0 > !t:
                                    revert with 0, 17
                                if t == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 16
                                t = t + 1
                                continue 
                            if block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 < stor12:
                                revert with 0, 17
                            if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 and (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11) - stor12 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792:
                                revert with 0, 17
                            if False and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1536 > 0:
                                revert with 0, 17
                            if 0 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792)):
                                revert with 0, 17
                            if stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280):
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) and stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256 > -1 / (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792):
                                revert with 0, 17
                            if not stor9:
                                revert with 0, 18
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            stor15[stor16[address(arg1)][idx]].field_768 = block.timestamp
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if stor15[stor16[address(arg1)][idx]].field_1280 > !((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9):
                                revert with 0, 17
                            stor15[stor16[address(arg1)][idx]].field_1280 += (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            if (block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9 > !((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9):
                                revert with 0, 17
                            if ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) < stor15[stor16[address(arg1)][idx]].field_1024:
                                revert with 0, 17
                            if idx >= sub_627dd5ca[address(arg1)]:
                                revert with 0, 50
                            mem[0] = sub_627dd5ca[address(arg1)][idx]
                            mem[32] = 15
                            stor15[stor16[address(arg1)][idx]].field_1024 = (stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            require ext_code.size(sub_85adc8b0Address)
                            call sub_85adc8b0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), ((block.timestamp - stor15[stor16[address(arg1)][idx]].field_768 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1792 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1024 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor15[stor16[address(arg1)][idx]].field_512 / stor11 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) - (stor12 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_1280 * stor14[stor15[stor16[address(arg1)][idx]].field_256].field_256) / stor9) - stor15[stor16[address(arg1)][idx]].field_1024
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2720 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2720] == bool(mem[_2720])
                    if idx >= sub_627dd5ca[address(arg1)]:
                        revert with 0, 50
                    address(stor15[stor16[address(arg1)][idx]].field_0) = arg2
                    if idx >= sub_627dd5ca[arg1]:
                        revert with 0, 50
                    sub_627dd5ca[address(arg2)]++
                    sub_627dd5ca[address(arg2)][sub_627dd5ca[address(arg2)]] = sub_627dd5ca[arg1][idx]
                    if idx >= sub_627dd5ca[address(arg1)]:
                        revert with 0, 50
                    sub_627dd5ca[address(arg1)][idx] = 0
                    if s == -1:
                        revert with 0, 17
                    if s + 1 >= arg4:
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 16
                    idx = idx + 1
                    s = s + 1
                    continue 
}



}
