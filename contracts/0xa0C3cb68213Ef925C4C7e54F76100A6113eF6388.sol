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
address managerAddress; offset 8
address pairAddress;
address sub_85adc8b0Address;
address swapAddress;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
array of struct stor13;
mapping of struct stor14;
array of uint256 sub_627dd5ca;

function balanceOf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function sub_06551ca5(?) {
    return bool(stor5)
}

function manager() {
    return managerAddress
}

function isPresaleActive() {
    return bool(stor5)
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

function pairAddress() {
    return pairAddress
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor1[address(arg1)][address(arg2)])
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
    if stor5:
        revert with 0, 'Presale was already activated'
    stor5 = uint8(arg1)
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
        if stor14[stor15[address(arg1)][idx]].field_256 != arg2:
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 15
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        mem[0] = address(arg1)
        mem[32] = 15
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

function sub_32295c84(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 0
    while idx < stor13.length:
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
        if idx >= stor13.length:
            revert with 0, 50
        if stor13[idx].field_2048 and stor13[idx].field_256 > -1 / stor13[idx].field_2048:
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if not address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
        mem[0] = address(arg1)
        mem[32] = sha3(idx, 0)
        if balanceOf[idx][address(arg1)] and stor13[idx].field_2048 * stor13[idx].field_256 / stor9 > -1 / balanceOf[idx][address(arg1)]:
            revert with 0, 17
        if s > !(balanceOf[idx][address(arg1)] * stor13[idx].field_2048 * stor13[idx].field_256 / stor9):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (balanceOf[idx][address(arg1)] * stor13[idx].field_2048 * stor13[idx].field_256 / stor9)
        continue 
    return s
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
    require arg5 + arg5.length + 36 <= calldata.size
    if arg1 != msg.sender:
        if not stor1[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    if balanceOf[arg3][address(arg1)] < arg4:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[arg3][address(arg1)] -= arg4
    if balanceOf[arg3][arg2] > !arg4:
        revert with 0, 17
    balanceOf[arg3][arg2] += arg4
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
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
    if stor14[arg1].field_1792:
        if stor14[arg1].field_1792 == uint255(stor14[arg1].field_1792) * 0.5 < 32:
            revert with 0, 34
        if stor14[arg1].field_1792:
            if stor14[arg1].field_1792 == uint255(stor14[arg1].field_1792) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor14[arg1].field_1792):
                if 31 >= uint255(stor14[arg1].field_1792) * 0.5:
                    mem[128] = 256 * stor14[arg1].field_1800
                else:
                    mem[128] = stor14[arg1][7].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor14[arg1].field_1792) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor14[arg1][s + 7].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor14[arg1].field_1792 == stor14[arg1].field_1793 < 32:
                revert with 0, 34
            if stor14[arg1].field_1793:
                if 31 >= stor14[arg1].field_1793:
                    mem[128] = 256 * stor14[arg1].field_1800
                else:
                    mem[128] = stor14[arg1][7].field_0
                    idx = 128
                    s = 0
                    while stor14[arg1].field_1793 + 96 > idx:
                        mem[idx + 32] = stor14[arg1][s + 7].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor14[arg1].field_0, 
               stor14[arg1].field_256,
               stor14[arg1].field_512,
               stor14[arg1].field_768,
               stor14[arg1].field_1024,
               stor14[arg1].field_1280,
               stor14[arg1].field_1536,
               Array(len=2 * Mask(256, -1, stor14[arg1].field_1792), data=mem[128 len ceil32(uint255(stor14[arg1].field_1792) * 0.5)])
    if stor14[arg1].field_1792 == stor14[arg1].field_1793 < 32:
        revert with 0, 34
    if stor14[arg1].field_1792:
        if stor14[arg1].field_1792 == uint255(stor14[arg1].field_1792) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor14[arg1].field_1792):
            if 31 >= uint255(stor14[arg1].field_1792) * 0.5:
                mem[128] = 256 * stor14[arg1].field_1800
            else:
                mem[128] = stor14[arg1][7].field_0
                idx = 128
                s = 0
                while (uint255(stor14[arg1].field_1792) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor14[arg1][s + 7].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor14[arg1].field_1792 == stor14[arg1].field_1793 < 32:
            revert with 0, 34
        if stor14[arg1].field_1793:
            if 31 >= stor14[arg1].field_1793:
                mem[128] = 256 * stor14[arg1].field_1800
            else:
                mem[128] = stor14[arg1][7].field_0
                idx = 128
                s = 0
                while stor14[arg1].field_1793 + 96 > idx:
                    mem[idx + 32] = stor14[arg1][s + 7].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor14[arg1].field_0, 
           stor14[arg1].field_256,
           stor14[arg1].field_512,
           stor14[arg1].field_768,
           stor14[arg1].field_1024,
           stor14[arg1].field_1280,
           stor14[arg1].field_1536,
           Array(len=stor14[arg1].field_1792, data=mem[128 len ceil32(stor14[arg1].field_1793)])
}

function sub_80c0f19b(?) {
    require calldata.size - 4 >= 32
    if stor14[arg1].field_1792:
        if stor14[arg1].field_1792 == uint255(stor14[arg1].field_1792) * 0.5 < 32:
            revert with 0, 34
        if stor14[arg1].field_1792:
            if stor14[arg1].field_1792 == uint255(stor14[arg1].field_1792) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor14[arg1].field_1792):
                if 31 >= uint255(stor14[arg1].field_1792) * 0.5:
                    mem[640] = 256 * stor14[arg1].field_1800
                else:
                    mem[640] = stor14[arg1][7].field_0
                    idx = 640
                    s = 0
                    while (uint255(stor14[arg1].field_1792) * 0.5) + 608 > idx:
                        mem[idx + 32] = stor14[arg1][s + 7].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor14[arg1].field_1792 == stor14[arg1].field_1793 < 32:
                revert with 0, 34
            if stor14[arg1].field_1793:
                if 31 >= stor14[arg1].field_1793:
                    mem[640] = 256 * stor14[arg1].field_1800
                else:
                    mem[640] = stor14[arg1][7].field_0
                    idx = 640
                    s = 0
                    while stor14[arg1].field_1793 + 608 > idx:
                        mem[idx + 32] = stor14[arg1][s + 7].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, stor14[arg1].field_0, 
               stor14[arg1].field_256,
               stor14[arg1].field_512,
               stor14[arg1].field_768,
               stor14[arg1].field_1024,
               stor14[arg1].field_1280,
               stor14[arg1].field_1536,
               256,
               2 * Mask(256, -1, stor14[arg1].field_1792),
               mem[640 len ceil32(uint255(stor14[arg1].field_1792) * 0.5)]
    if stor14[arg1].field_1792 == stor14[arg1].field_1793 < 32:
        revert with 0, 34
    if stor14[arg1].field_1792:
        if stor14[arg1].field_1792 == uint255(stor14[arg1].field_1792) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor14[arg1].field_1792):
            if 31 >= uint255(stor14[arg1].field_1792) * 0.5:
                mem[640] = 256 * stor14[arg1].field_1800
            else:
                mem[640] = stor14[arg1][7].field_0
                idx = 640
                s = 0
                while (uint255(stor14[arg1].field_1792) * 0.5) + 608 > idx:
                    mem[idx + 32] = stor14[arg1][s + 7].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor14[arg1].field_1792 == stor14[arg1].field_1793 < 32:
            revert with 0, 34
        if stor14[arg1].field_1793:
            if 31 >= stor14[arg1].field_1793:
                mem[640] = 256 * stor14[arg1].field_1800
            else:
                mem[640] = stor14[arg1][7].field_0
                idx = 640
                s = 0
                while stor14[arg1].field_1793 + 608 > idx:
                    mem[idx + 32] = stor14[arg1][s + 7].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, stor14[arg1].field_0, 
           stor14[arg1].field_256,
           stor14[arg1].field_512,
           stor14[arg1].field_768,
           stor14[arg1].field_1024,
           stor14[arg1].field_1280,
           stor14[arg1].field_1536,
           256,
           stor14[arg1].field_1792,
           mem[640 len ceil32(stor14[arg1].field_1793)]
}

function collection(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor13.length
    if stor13[arg1].field_0:
        if stor13[arg1].field_0 == uint255(stor13[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor13[arg1].field_0:
            if stor13[arg1].field_0 == uint255(stor13[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor13[arg1].field_0):
                if 31 >= uint255(stor13[arg1].field_0) * 0.5:
                    mem[128] = 256 * stor13[arg1].field_8
                else:
                    mem[128] = stor13[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor13[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor13[(11 * arg1) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor13[arg1].field_0 == stor13[arg1].field_1 < 32:
                revert with 0, 34
            if stor13[arg1].field_1:
                if 31 >= stor13[arg1].field_1:
                    mem[128] = 256 * stor13[arg1].field_8
                else:
                    mem[128] = stor13[arg1].field_0
                    idx = 128
                    s = 0
                    while stor13[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor13[(11 * arg1) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, stor13[arg1].field_0), data=mem[128 len ceil32(uint255(stor13[arg1].field_0) * 0.5)]), 
               stor13[arg1].field_256,
               stor13[arg1].field_512,
               stor13[arg1].field_768,
               stor13[arg1].field_1024,
               stor13[arg1].field_1280,
               stor13[arg1].field_1536,
               stor13[arg1].field_1792,
               stor13[arg1].field_2048,
               stor13[arg1].field_2304,
               stor13[arg1].field_2560
    if stor13[arg1].field_0 == stor13[arg1].field_1 < 32:
        revert with 0, 34
    if stor13[arg1].field_0:
        if stor13[arg1].field_0 == uint255(stor13[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor13[arg1].field_0):
            if 31 >= uint255(stor13[arg1].field_0) * 0.5:
                mem[128] = 256 * stor13[arg1].field_8
            else:
                mem[128] = stor13[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor13[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor13[(11 * arg1) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor13[arg1].field_0 == stor13[arg1].field_1 < 32:
            revert with 0, 34
        if stor13[arg1].field_1:
            if 31 >= stor13[arg1].field_1:
                mem[128] = 256 * stor13[arg1].field_8
            else:
                mem[128] = stor13[arg1].field_0
                idx = 128
                s = 0
                while stor13[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor13[(11 * arg1) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor13[arg1].field_0, data=mem[128 len ceil32(stor13[arg1].field_1)]), 
           stor13[arg1].field_256,
           stor13[arg1].field_512,
           stor13[arg1].field_768,
           stor13[arg1].field_1024,
           stor13[arg1].field_1280,
           stor13[arg1].field_1536,
           stor13[arg1].field_1792,
           stor13[arg1].field_2048,
           stor13[arg1].field_2304,
           stor13[arg1].field_2560
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
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 0, 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(uint255(stor2.length) * 0.5) + 192 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
        if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
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
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function mint(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if arg1 >= stor13.length:
        revert with 0, 50
    if stor13[arg1].field_2304 > stor13[arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'all of this collection are purchased'
    if arg1 >= stor13.length:
        revert with 0, 50
    idx = 0
    s = 0
    while idx < sub_627dd5ca[address(msg.sender)]:
        if idx >= sub_627dd5ca[address(msg.sender)]:
            revert with 0, 50
        if stor14[stor15[address(msg.sender)][idx]].field_256 != arg1:
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 15
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = 15
        idx = idx + 1
        s = s + 1
        continue 
    if s >= stor13[arg1].field_2560:
        revert with 0, 'minted nodes exceed amount limit'
    if not stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'receiver's balance is less than node price'
    if arg1 >= stor13.length:
        revert with 0, 50
    require ext_code.size(sub_85adc8b0Address)
    staticcall sub_85adc8b0Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < stor13[arg1].field_257:
        revert with 0, 'receiver's balance is less than node price'
    if stor5:
        revert with 0, 'receiver's balance is less than node price'
    if arg1 >= stor13.length:
        revert with 0, 50
    require ext_code.size(sub_85adc8b0Address)
    staticcall sub_85adc8b0Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < stor13[arg1].field_256:
        revert with 0, 'receiver's balance is less than node price'
    if 1 > !stor10:
        revert with 0, 17
    if stor10 == -1:
        revert with 0, 17
    stor10++
    stor14[stor10 + 1].field_0 = msg.sender or Mask(96, 160, stor14[stor10 + 1].field_0)
    stor14[stor10 + 1].field_256 = arg1
    stor14[stor10 + 1].field_512 = block.timestamp
    stor14[stor10 + 1].field_768 = block.timestamp
    if stor14[stor10 + 1].field_1792:
        if stor14[stor10 + 1].field_1792 == uint255(stor14[stor10 + 1].field_1792) * 0.5 < 32:
            revert with 0, 34
        if not arg2.length:
            stor14[stor10 + 1].field_1792 = 0
            idx = 0
            while (uint255(stor14[stor10 + 1].field_1792) * 0.5) + 31 / 32 > idx:
                stor14[stor10 + 1][idx + 7].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor14[stor10 + 1].field_1792 = (2 * arg2.length) + 1
            s = 0
            idx = arg2 + 36
            while arg2 + arg2.length + 36 > idx:
                stor14[stor10 + 1][s + 7].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg2.length + 31) >> 5
            while (uint255(stor14[stor10 + 1].field_1792) * 0.5) + 31 / 32 > idx:
                stor14[stor10 + 1][idx + 7].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor14[stor10 + 1].field_1792 == stor14[stor10 + 1].field_1793 < 32:
            revert with 0, 34
        if not arg2.length:
            stor14[stor10 + 1].field_1792 = 0
            idx = 0
            while stor14[stor10 + 1].field_1793 + 31 / 32 > idx:
                stor14[stor10 + 1][idx + 7].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor14[stor10 + 1].field_1792 = (2 * arg2.length) + 1
            s = 0
            idx = arg2 + 36
            while arg2 + arg2.length + 36 > idx:
                stor14[stor10 + 1][s + 7].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg2.length + 31) >> 5
            while stor14[stor10 + 1].field_1793 + 31 / 32 > idx:
                stor14[stor10 + 1][idx + 7].field_0 = 0
                idx = idx + 1
                continue 
    if arg1 >= stor13.length:
        revert with 0, 50
    if stor13[arg1].field_2304 == -1:
        revert with 0, 17
    stor13[arg1].field_2304++
    if arg1 >= stor13.length:
        revert with 0, 50
    require ext_code.size(sub_85adc8b0Address)
    if not stor5:
        call sub_85adc8b0Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), stor13[arg1].field_256
    else:
        call sub_85adc8b0Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), stor13[arg1].field_257
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg2.length:
        mem[(4 * ceil32(return_data.size)) + 160 len arg2.length] = arg2[all]
        mem[arg2.length + (4 * ceil32(return_data.size)) + 160] = 0
        emit URI(Array(len=arg2.length, data=arg2[all]), stor10 + 1);
    if not msg.sender:
        revert with 0, 'ERC1155: mint to the zero address'
    if balanceOf[arg1][address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[arg1][address(msg.sender)]++
    emit TransferSingle(arg1, 1, msg.sender, 0, msg.sender);
    if ext_code.size(msg.sender):
        mem[(4 * ceil32(return_data.size)) + 388] = 160
        mem[(4 * ceil32(return_data.size)) + 420] = 0
        mem[(4 * ceil32(return_data.size)) + 452 len 0] = None
        require ext_code.size(msg.sender)
        call msg.sender.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, arg1, 1, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 
                        'ERC1155: ERC1155Receiver rejected tokens',
                        mem[(6 * ceil32(return_data.size)) + 388 len 9 * ceil32(return_data.size)]
    sub_627dd5ca[msg.sender]++
    sub_627dd5ca[msg.sender][sub_627dd5ca[msg.sender]] = stor10 + 1
}

function sub_46be42fa(?) {
    require calldata.size - 4 >= 32
    if not stor14[arg1].field_0:
        revert with 0, 'No node exist'
    if stor14[arg1].field_256 >= stor13.length:
        revert with 0, 50
    if block.timestamp < stor14[arg1].field_512:
        revert with 0, 17
    if not stor11:
        revert with 0, 18
    if block.timestamp < stor14[arg1].field_768:
        revert with 0, 17
    if not stor11:
        revert with 0, 18
    if stor14[arg1].field_256 >= stor13.length:
        revert with 0, 50
    if block.timestamp - stor14[arg1].field_512 / stor11 <= stor12:
        if block.timestamp - stor14[arg1].field_512 / stor11 and stor13[stor14[arg1].field_256].field_768 > -1 / block.timestamp - stor14[arg1].field_512 / stor11:
            revert with 0, 17
        if stor14[arg1].field_256 >= stor13.length:
            revert with 0, 50
        if block.timestamp - stor14[arg1].field_768 / stor11 < stor12:
            idx = 0
            while idx <= block.timestamp - stor14[arg1].field_768 / stor11:
                if 0 > !idx:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if False and stor13[stor14[arg1].field_256].field_1536 > 0:
                revert with 0, 17
            if block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 and stor13[stor14[arg1].field_256].field_256 > -1 / block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if False and stor13[stor14[arg1].field_256].field_256 > 0:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            return block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9, 
                   0 / stor9
        idx = 0
        while idx <= stor12:
            if 0 > !idx:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if block.timestamp - stor14[arg1].field_768 / stor11 < stor12:
            revert with 0, 17
        if stor13[stor14[arg1].field_256].field_1792 and (block.timestamp - stor14[arg1].field_768 / stor11) - stor12 > -1 / stor13[stor14[arg1].field_256].field_1792:
            revert with 0, 17
        if False and stor13[stor14[arg1].field_256].field_1536 > 0:
            revert with 0, 17
        if 0 > !((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792)):
            revert with 0, 17
        if block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 and stor13[stor14[arg1].field_256].field_256 > -1 / block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768:
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792) and stor13[stor14[arg1].field_256].field_256 > -1 / (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792):
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        return block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9, 
               (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9
    if block.timestamp - stor14[arg1].field_512 / stor11 < stor12:
        revert with 0, 17
    if (block.timestamp - stor14[arg1].field_512 / stor11) - stor12 and stor13[stor14[arg1].field_256].field_1280 > -1 / (block.timestamp - stor14[arg1].field_512 / stor11) - stor12:
        revert with 0, 17
    if stor13[stor14[arg1].field_256].field_1024 > !((block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280) - (stor12 * stor13[stor14[arg1].field_256].field_1280)):
        revert with 0, 17
    if stor14[arg1].field_256 >= stor13.length:
        revert with 0, 50
    if block.timestamp - stor14[arg1].field_768 / stor11 < stor12:
        idx = 0
        while idx <= block.timestamp - stor14[arg1].field_768 / stor11:
            if 0 > !idx:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if False and stor13[stor14[arg1].field_256].field_1536 > 0:
            revert with 0, 17
        if stor13[stor14[arg1].field_256].field_1024 + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280) - (stor12 * stor13[stor14[arg1].field_256].field_1280) and stor13[stor14[arg1].field_256].field_256 > -1 / stor13[stor14[arg1].field_256].field_1024 + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280) - (stor12 * stor13[stor14[arg1].field_256].field_1280):
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if False and stor13[stor14[arg1].field_256].field_256 > 0:
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        return (stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9, 
               0 / stor9
    idx = 0
    while idx <= stor12:
        if 0 > !idx:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if block.timestamp - stor14[arg1].field_768 / stor11 < stor12:
        revert with 0, 17
    if stor13[stor14[arg1].field_256].field_1792 and (block.timestamp - stor14[arg1].field_768 / stor11) - stor12 > -1 / stor13[stor14[arg1].field_256].field_1792:
        revert with 0, 17
    if False and stor13[stor14[arg1].field_256].field_1536 > 0:
        revert with 0, 17
    if 0 > !((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792)):
        revert with 0, 17
    if stor13[stor14[arg1].field_256].field_1024 + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280) - (stor12 * stor13[stor14[arg1].field_256].field_1280) and stor13[stor14[arg1].field_256].field_256 > -1 / stor13[stor14[arg1].field_256].field_1024 + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280) - (stor12 * stor13[stor14[arg1].field_256].field_1280):
        revert with 0, 17
    if not stor9:
        revert with 0, 18
    if (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792) and stor13[stor14[arg1].field_256].field_256 > -1 / (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792):
        revert with 0, 17
    if not stor9:
        revert with 0, 18
    return (stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9, 
           (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9
}

function sub_8de45c1a(?) {
    require calldata.size - 4 >= 32
    if not stor14[arg1].field_0:
        revert with 0, 'No node exist'
    if stor14[arg1].field_256 >= stor13.length:
        revert with 0, 50
    if block.timestamp < stor14[arg1].field_512:
        revert with 0, 17
    if not stor11:
        revert with 0, 18
    if block.timestamp < stor14[arg1].field_768:
        revert with 0, 17
    if not stor11:
        revert with 0, 18
    if stor14[arg1].field_256 >= stor13.length:
        revert with 0, 50
    if block.timestamp - stor14[arg1].field_512 / stor11 <= stor12:
        if block.timestamp - stor14[arg1].field_512 / stor11 and stor13[stor14[arg1].field_256].field_768 > -1 / block.timestamp - stor14[arg1].field_512 / stor11:
            revert with 0, 17
        if stor14[arg1].field_256 >= stor13.length:
            revert with 0, 50
        if block.timestamp - stor14[arg1].field_768 / stor11 < stor12:
            idx = 0
            while idx <= block.timestamp - stor14[arg1].field_768 / stor11:
                if 0 > !idx:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if False and stor13[stor14[arg1].field_256].field_1536 > 0:
                revert with 0, 17
            if block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 and stor13[stor14[arg1].field_256].field_256 > -1 / block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if False and stor13[stor14[arg1].field_256].field_256 > 0:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if 0 / stor9 > !(block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9):
                revert with 0, 17
            if (0 / stor9) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9) < stor14[arg1].field_1024:
                revert with 0, 17
            return ((0 / stor9) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9) - stor14[arg1].field_1024)
        idx = 0
        while idx <= stor12:
            if 0 > !idx:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if block.timestamp - stor14[arg1].field_768 / stor11 < stor12:
            revert with 0, 17
        if stor13[stor14[arg1].field_256].field_1792 and (block.timestamp - stor14[arg1].field_768 / stor11) - stor12 > -1 / stor13[stor14[arg1].field_256].field_1792:
            revert with 0, 17
        if False and stor13[stor14[arg1].field_256].field_1536 > 0:
            revert with 0, 17
        if 0 > !((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792)):
            revert with 0, 17
        if block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 and stor13[stor14[arg1].field_256].field_256 > -1 / block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768:
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792) and stor13[stor14[arg1].field_256].field_256 > -1 / (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792):
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9 > !(block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9):
            revert with 0, 17
        if ((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9) < stor14[arg1].field_1024:
            revert with 0, 17
        return (((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9) - stor14[arg1].field_1024)
    if block.timestamp - stor14[arg1].field_512 / stor11 < stor12:
        revert with 0, 17
    if (block.timestamp - stor14[arg1].field_512 / stor11) - stor12 and stor13[stor14[arg1].field_256].field_1280 > -1 / (block.timestamp - stor14[arg1].field_512 / stor11) - stor12:
        revert with 0, 17
    if stor13[stor14[arg1].field_256].field_1024 > !((block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280) - (stor12 * stor13[stor14[arg1].field_256].field_1280)):
        revert with 0, 17
    if stor14[arg1].field_256 >= stor13.length:
        revert with 0, 50
    if block.timestamp - stor14[arg1].field_768 / stor11 < stor12:
        idx = 0
        while idx <= block.timestamp - stor14[arg1].field_768 / stor11:
            if 0 > !idx:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if False and stor13[stor14[arg1].field_256].field_1536 > 0:
            revert with 0, 17
        if stor13[stor14[arg1].field_256].field_1024 + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280) - (stor12 * stor13[stor14[arg1].field_256].field_1280) and stor13[stor14[arg1].field_256].field_256 > -1 / stor13[stor14[arg1].field_256].field_1024 + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280) - (stor12 * stor13[stor14[arg1].field_256].field_1280):
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if False and stor13[stor14[arg1].field_256].field_256 > 0:
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if 0 / stor9 > !((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9):
            revert with 0, 17
        if (0 / stor9) + ((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9) < stor14[arg1].field_1024:
            revert with 0, 17
        return ((0 / stor9) + ((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9) - stor14[arg1].field_1024)
    idx = 0
    while idx <= stor12:
        if 0 > !idx:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if block.timestamp - stor14[arg1].field_768 / stor11 < stor12:
        revert with 0, 17
    if stor13[stor14[arg1].field_256].field_1792 and (block.timestamp - stor14[arg1].field_768 / stor11) - stor12 > -1 / stor13[stor14[arg1].field_256].field_1792:
        revert with 0, 17
    if False and stor13[stor14[arg1].field_256].field_1536 > 0:
        revert with 0, 17
    if 0 > !((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792)):
        revert with 0, 17
    if stor13[stor14[arg1].field_256].field_1024 + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280) - (stor12 * stor13[stor14[arg1].field_256].field_1280) and stor13[stor14[arg1].field_256].field_256 > -1 / stor13[stor14[arg1].field_256].field_1024 + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280) - (stor12 * stor13[stor14[arg1].field_256].field_1280):
        revert with 0, 17
    if not stor9:
        revert with 0, 18
    if (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792) and stor13[stor14[arg1].field_256].field_256 > -1 / (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792):
        revert with 0, 17
    if not stor9:
        revert with 0, 18
    if (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9 > !((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9):
        revert with 0, 17
    if ((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9) + ((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9) < stor14[arg1].field_1024:
        revert with 0, 17
    return (((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9) + ((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9) - stor14[arg1].field_1024)
}

function sub_cd844602(?) {
    require calldata.size - 4 >= 32
    if not stor14[arg1].field_0:
        revert with 0, 'No node exist'
    if stor14[arg1].field_256 >= stor13.length:
        revert with 0, 50
    if block.timestamp < stor14[arg1].field_512:
        revert with 0, 17
    if not stor11:
        revert with 0, 18
    if block.timestamp < stor14[arg1].field_768:
        revert with 0, 17
    if not stor11:
        revert with 0, 18
    if stor14[arg1].field_256 >= stor13.length:
        revert with 0, 50
    if block.timestamp - stor14[arg1].field_512 / stor11 <= stor12:
        if block.timestamp - stor14[arg1].field_512 / stor11 and stor13[stor14[arg1].field_256].field_768 > -1 / block.timestamp - stor14[arg1].field_512 / stor11:
            revert with 0, 17
        if stor14[arg1].field_256 >= stor13.length:
            revert with 0, 50
        if block.timestamp - stor14[arg1].field_768 / stor11 < stor12:
            idx = 0
            while idx <= block.timestamp - stor14[arg1].field_768 / stor11:
                if 0 > !idx:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if False and stor13[stor14[arg1].field_256].field_1536 > 0:
                revert with 0, 17
            if block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 and stor13[stor14[arg1].field_256].field_256 > -1 / block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if False and stor13[stor14[arg1].field_256].field_256 > 0:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if 0 / stor9 > !(block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9):
                revert with 0, 17
            if (0 / stor9) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9) < stor14[arg1].field_1024:
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
            if (0 / stor9) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9) - stor14[arg1].field_1024 and 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / (0 / stor9) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9) - stor14[arg1].field_1024:
                revert with 0, 17
            return ((0 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor14[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18)
        idx = 0
        while idx <= stor12:
            if 0 > !idx:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if block.timestamp - stor14[arg1].field_768 / stor11 < stor12:
            revert with 0, 17
        if stor13[stor14[arg1].field_256].field_1792 and (block.timestamp - stor14[arg1].field_768 / stor11) - stor12 > -1 / stor13[stor14[arg1].field_256].field_1792:
            revert with 0, 17
        if False and stor13[stor14[arg1].field_256].field_1536 > 0:
            revert with 0, 17
        if 0 > !((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792)):
            revert with 0, 17
        if block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 and stor13[stor14[arg1].field_256].field_256 > -1 / block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768:
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792) and stor13[stor14[arg1].field_256].field_256 > -1 / (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792):
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9 > !(block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9):
            revert with 0, 17
        if ((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9) < stor14[arg1].field_1024:
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
        if ((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9) - stor14[arg1].field_1024 and 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / ((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9) - stor14[arg1].field_1024:
            revert with 0, 17
        return (((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor14[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18)
    if block.timestamp - stor14[arg1].field_512 / stor11 < stor12:
        revert with 0, 17
    if (block.timestamp - stor14[arg1].field_512 / stor11) - stor12 and stor13[stor14[arg1].field_256].field_1280 > -1 / (block.timestamp - stor14[arg1].field_512 / stor11) - stor12:
        revert with 0, 17
    if stor13[stor14[arg1].field_256].field_1024 > !((block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280) - (stor12 * stor13[stor14[arg1].field_256].field_1280)):
        revert with 0, 17
    if stor14[arg1].field_256 >= stor13.length:
        revert with 0, 50
    if block.timestamp - stor14[arg1].field_768 / stor11 < stor12:
        idx = 0
        while idx <= block.timestamp - stor14[arg1].field_768 / stor11:
            if 0 > !idx:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if False and stor13[stor14[arg1].field_256].field_1536 > 0:
            revert with 0, 17
        if stor13[stor14[arg1].field_256].field_1024 + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280) - (stor12 * stor13[stor14[arg1].field_256].field_1280) and stor13[stor14[arg1].field_256].field_256 > -1 / stor13[stor14[arg1].field_256].field_1024 + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280) - (stor12 * stor13[stor14[arg1].field_256].field_1280):
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if False and stor13[stor14[arg1].field_256].field_256 > 0:
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if 0 / stor9 > !((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9):
            revert with 0, 17
        if (0 / stor9) + ((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9) < stor14[arg1].field_1024:
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
        if (0 / stor9) + ((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9) - stor14[arg1].field_1024 and 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / (0 / stor9) + ((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9) - stor14[arg1].field_1024:
            revert with 0, 17
        return ((0 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + ((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor14[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18)
    idx = 0
    while idx <= stor12:
        if 0 > !idx:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if block.timestamp - stor14[arg1].field_768 / stor11 < stor12:
        revert with 0, 17
    if stor13[stor14[arg1].field_256].field_1792 and (block.timestamp - stor14[arg1].field_768 / stor11) - stor12 > -1 / stor13[stor14[arg1].field_256].field_1792:
        revert with 0, 17
    if False and stor13[stor14[arg1].field_256].field_1536 > 0:
        revert with 0, 17
    if 0 > !((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792)):
        revert with 0, 17
    if stor13[stor14[arg1].field_256].field_1024 + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280) - (stor12 * stor13[stor14[arg1].field_256].field_1280) and stor13[stor14[arg1].field_256].field_256 > -1 / stor13[stor14[arg1].field_256].field_1024 + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280) - (stor12 * stor13[stor14[arg1].field_256].field_1280):
        revert with 0, 17
    if not stor9:
        revert with 0, 18
    if (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792) and stor13[stor14[arg1].field_256].field_256 > -1 / (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792):
        revert with 0, 17
    if not stor9:
        revert with 0, 18
    if (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9 > !((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9):
        revert with 0, 17
    if ((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9) + ((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9) < stor14[arg1].field_1024:
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
    if ((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9) + ((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9) - stor14[arg1].field_1024 and 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / ((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9) + ((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9) - stor14[arg1].field_1024:
        revert with 0, 17
    return (((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + ((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor14[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18)
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
        if not stor14[stor15[address(arg1)][idx]].field_0:
            revert with 0, 'No node exist'
        if stor14[stor15[address(arg1)][idx]].field_256 >= stor13.length:
            revert with 0, 50
        if block.timestamp < stor14[stor15[address(arg1)][idx]].field_512:
            revert with 0, 17
        if not stor11:
            revert with 0, 18
        if block.timestamp < stor14[stor15[address(arg1)][idx]].field_768:
            revert with 0, 17
        if not stor11:
            revert with 0, 18
        if stor14[stor15[address(arg1)][idx]].field_256 >= stor13.length:
            revert with 0, 50
        if block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 <= stor12:
            if block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 and stor13[stor14[stor15[address(arg1)][idx]].field_256].field_768 > -1 / block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11:
                revert with 0, 17
            if stor14[stor15[address(arg1)][idx]].field_256 >= stor13.length:
                revert with 0, 50
            if block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 < stor12:
                t = 0
                while t <= block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11:
                    if 0 > !t:
                        revert with 0, 17
                    if t == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 15
                    t = t + 1
                    continue 
                if False and stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1536 > 0:
                    revert with 0, 17
                if block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_768 and stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 > -1 / block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_768:
                    revert with 0, 17
                if not stor9:
                    revert with 0, 18
                if False and stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 > 0:
                    revert with 0, 17
                if not stor9:
                    revert with 0, 18
                if 0 / stor9 > !(block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_768 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 / stor9):
                    revert with 0, 17
                if (0 / stor9) + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_768 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 / stor9) < stor14[stor15[address(arg1)][idx]].field_1024:
                    revert with 0, 17
                if s > !((0 / stor9) + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_768 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 / stor9) - stor14[stor15[address(arg1)][idx]].field_1024):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 15
                idx = idx + 1
                s = s + (0 / stor9) + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_768 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 / stor9) - stor14[stor15[address(arg1)][idx]].field_1024
                continue 
            t = 0
            while t <= stor12:
                if 0 > !t:
                    revert with 0, 17
                if t == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 15
                t = t + 1
                continue 
            if block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 < stor12:
                revert with 0, 17
            if stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 and (block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11) - stor12 > -1 / stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792:
                revert with 0, 17
            if False and stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1536 > 0:
                revert with 0, 17
            if 0 > !((block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792)):
                revert with 0, 17
            if block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_768 and stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 > -1 / block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_768:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792) and stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 > -1 / (block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9 > !(block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_768 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 / stor9):
                revert with 0, 17
            if ((block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_768 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 / stor9) < stor14[stor15[address(arg1)][idx]].field_1024:
                revert with 0, 17
            if s > !(((block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_768 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 / stor9) - stor14[stor15[address(arg1)][idx]].field_1024):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 15
            idx = idx + 1
            s = s + ((block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_768 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 / stor9) - stor14[stor15[address(arg1)][idx]].field_1024
            continue 
        if block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 < stor12:
            revert with 0, 17
        if (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11) - stor12 and stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 > -1 / (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11) - stor12:
            revert with 0, 17
        if stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1024 > !((block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280)):
            revert with 0, 17
        if stor14[stor15[address(arg1)][idx]].field_256 >= stor13.length:
            revert with 0, 50
        if block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 < stor12:
            t = 0
            while t <= block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11:
                if 0 > !t:
                    revert with 0, 17
                if t == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 15
                t = t + 1
                continue 
            if False and stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1536 > 0:
                revert with 0, 17
            if stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280) and stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 > -1 / stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if False and stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 > 0:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if 0 / stor9 > !((stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1024 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9):
                revert with 0, 17
            if (0 / stor9) + ((stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1024 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9) < stor14[stor15[address(arg1)][idx]].field_1024:
                revert with 0, 17
            if s > !((0 / stor9) + ((stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1024 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9) - stor14[stor15[address(arg1)][idx]].field_1024):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 15
            idx = idx + 1
            s = s + (0 / stor9) + ((stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1024 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9) - stor14[stor15[address(arg1)][idx]].field_1024
            continue 
        t = 0
        while t <= stor12:
            if 0 > !t:
                revert with 0, 17
            if t == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 15
            t = t + 1
            continue 
        if block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 < stor12:
            revert with 0, 17
        if stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 and (block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11) - stor12 > -1 / stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792:
            revert with 0, 17
        if False and stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1536 > 0:
            revert with 0, 17
        if 0 > !((block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792)):
            revert with 0, 17
        if stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280) and stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 > -1 / stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280):
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if (block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792) and stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 > -1 / (block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792):
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if (block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9 > !((stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1024 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9):
            revert with 0, 17
        if ((block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1024 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9) < stor14[stor15[address(arg1)][idx]].field_1024:
            revert with 0, 17
        if s > !(((block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1024 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9) - stor14[stor15[address(arg1)][idx]].field_1024):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        mem[0] = address(arg1)
        mem[32] = 15
        idx = idx + 1
        s = s + ((block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1024 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9) - stor14[stor15[address(arg1)][idx]].field_1024
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
        if not stor14[stor15[address(arg1)][idx]].field_0:
            revert with 0, 'No node exist'
        if stor14[stor15[address(arg1)][idx]].field_256 >= stor13.length:
            revert with 0, 50
        if block.timestamp < stor14[stor15[address(arg1)][idx]].field_512:
            revert with 0, 17
        if not stor11:
            revert with 0, 18
        if block.timestamp < stor14[stor15[address(arg1)][idx]].field_768:
            revert with 0, 17
        if not stor11:
            revert with 0, 18
        if stor14[stor15[address(arg1)][idx]].field_256 >= stor13.length:
            revert with 0, 50
        if block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 <= stor12:
            if block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 and stor13[stor14[stor15[address(arg1)][idx]].field_256].field_768 > -1 / block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11:
                revert with 0, 17
            if stor14[stor15[address(arg1)][idx]].field_256 >= stor13.length:
                revert with 0, 50
            if block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 < stor12:
                t = 0
                while t <= block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11:
                    if 0 > !t:
                        revert with 0, 17
                    if t == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 15
                    t = t + 1
                    continue 
                if False and stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1536 > 0:
                    revert with 0, 17
                if block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_768 and stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 > -1 / block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_768:
                    revert with 0, 17
                if not stor9:
                    revert with 0, 18
                if False and stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 > 0:
                    revert with 0, 17
                if not stor9:
                    revert with 0, 18
                if 0 / stor9 > !(block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_768 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 / stor9):
                    revert with 0, 17
                if (0 / stor9) + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_768 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 / stor9) < stor14[stor15[address(arg1)][idx]].field_1024:
                    revert with 0, 17
                if s > !((0 / stor9) + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_768 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 / stor9) - stor14[stor15[address(arg1)][idx]].field_1024):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 15
                idx = idx + 1
                s = s + (0 / stor9) + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_768 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 / stor9) - stor14[stor15[address(arg1)][idx]].field_1024
                continue 
            t = 0
            while t <= stor12:
                if 0 > !t:
                    revert with 0, 17
                if t == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 15
                t = t + 1
                continue 
            if block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 < stor12:
                revert with 0, 17
            if stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 and (block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11) - stor12 > -1 / stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792:
                revert with 0, 17
            if False and stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1536 > 0:
                revert with 0, 17
            if 0 > !((block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792)):
                revert with 0, 17
            if block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_768 and stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 > -1 / block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_768:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792) and stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 > -1 / (block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9 > !(block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_768 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 / stor9):
                revert with 0, 17
            if ((block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_768 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 / stor9) < stor14[stor15[address(arg1)][idx]].field_1024:
                revert with 0, 17
            if s > !(((block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_768 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 / stor9) - stor14[stor15[address(arg1)][idx]].field_1024):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 15
            idx = idx + 1
            s = s + ((block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_768 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 / stor9) - stor14[stor15[address(arg1)][idx]].field_1024
            continue 
        if block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 < stor12:
            revert with 0, 17
        if (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11) - stor12 and stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 > -1 / (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11) - stor12:
            revert with 0, 17
        if stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1024 > !((block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280)):
            revert with 0, 17
        if stor14[stor15[address(arg1)][idx]].field_256 >= stor13.length:
            revert with 0, 50
        if block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 < stor12:
            t = 0
            while t <= block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11:
                if 0 > !t:
                    revert with 0, 17
                if t == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 15
                t = t + 1
                continue 
            if False and stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1536 > 0:
                revert with 0, 17
            if stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280) and stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 > -1 / stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if False and stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 > 0:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if 0 / stor9 > !((stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1024 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9):
                revert with 0, 17
            if (0 / stor9) + ((stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1024 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9) < stor14[stor15[address(arg1)][idx]].field_1024:
                revert with 0, 17
            if s > !((0 / stor9) + ((stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1024 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9) - stor14[stor15[address(arg1)][idx]].field_1024):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 15
            idx = idx + 1
            s = s + (0 / stor9) + ((stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1024 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9) - stor14[stor15[address(arg1)][idx]].field_1024
            continue 
        t = 0
        while t <= stor12:
            if 0 > !t:
                revert with 0, 17
            if t == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 15
            t = t + 1
            continue 
        if block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 < stor12:
            revert with 0, 17
        if stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 and (block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11) - stor12 > -1 / stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792:
            revert with 0, 17
        if False and stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1536 > 0:
            revert with 0, 17
        if 0 > !((block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792)):
            revert with 0, 17
        if stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280) and stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 > -1 / stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1024 + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280):
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if (block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792) and stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256 > -1 / (block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792):
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if (block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9 > !((stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1024 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9):
            revert with 0, 17
        if ((block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1024 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9) < stor14[stor15[address(arg1)][idx]].field_1024:
            revert with 0, 17
        if s > !(((block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1024 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9) - stor14[stor15[address(arg1)][idx]].field_1024):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        mem[0] = address(arg1)
        mem[32] = 15
        idx = idx + 1
        s = s + ((block.timestamp - stor14[stor15[address(arg1)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9) + ((stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1024 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[address(arg1)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(arg1)][idx]].field_256].field_256) / stor9) - stor14[stor15[address(arg1)][idx]].field_1024
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
    return (s * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10^18)
}

function claimById(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor4 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor4 = 2
    if stor14[arg1].field_0 != msg.sender:
        revert with 0, 'only puchaser can claim'
    if not stor14[arg1].field_0:
        revert with 0, 'No node exist'
    if stor14[arg1].field_256 >= stor13.length:
        revert with 0, 50
    if block.timestamp < stor14[arg1].field_512:
        revert with 0, 17
    if not stor11:
        revert with 0, 18
    if block.timestamp < stor14[arg1].field_768:
        revert with 0, 17
    if not stor11:
        revert with 0, 18
    if stor14[arg1].field_256 >= stor13.length:
        revert with 0, 50
    if block.timestamp - stor14[arg1].field_512 / stor11 <= stor12:
        if block.timestamp - stor14[arg1].field_512 / stor11 and stor13[stor14[arg1].field_256].field_768 > -1 / block.timestamp - stor14[arg1].field_512 / stor11:
            revert with 0, 17
        if stor14[arg1].field_256 >= stor13.length:
            revert with 0, 50
        if block.timestamp - stor14[arg1].field_768 / stor11 < stor12:
            idx = 0
            while idx <= block.timestamp - stor14[arg1].field_768 / stor11:
                if 0 > !idx:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if False and stor13[stor14[arg1].field_256].field_1536 > 0:
                revert with 0, 17
            if block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 and stor13[stor14[arg1].field_256].field_256 > -1 / block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if False and stor13[stor14[arg1].field_256].field_256 > 0:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if 0 / stor9 > !(block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9):
                revert with 0, 17
            if (0 / stor9) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9) < stor14[arg1].field_1024:
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
            if (0 / stor9) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9) - stor14[arg1].field_1024 and 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / (0 / stor9) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9) - stor14[arg1].field_1024:
                revert with 0, 17
            if (0 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor14[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18 > msg.value:
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
            if block.timestamp - stor14[arg1].field_768 / stor11 < stor12:
                revert with 0, 17
            if stor13[stor14[arg1].field_256].field_1792 and (block.timestamp - stor14[arg1].field_768 / stor11) - stor12 > -1 / stor13[stor14[arg1].field_256].field_1792:
                revert with 0, 17
            if False and stor13[stor14[arg1].field_256].field_1536 > 0:
                revert with 0, 17
            if 0 > !((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792)):
                revert with 0, 17
            if block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 and stor13[stor14[arg1].field_256].field_256 > -1 / block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792) and stor13[stor14[arg1].field_256].field_256 > -1 / (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9 > !(block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9):
                revert with 0, 17
            if ((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9) < stor14[arg1].field_1024:
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
            if ((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9) - stor14[arg1].field_1024 and 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / ((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9) - stor14[arg1].field_1024:
                revert with 0, 17
            if ((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor14[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18 > msg.value:
                revert with 0, 'No set enough fee'
    else:
        if block.timestamp - stor14[arg1].field_512 / stor11 < stor12:
            revert with 0, 17
        if (block.timestamp - stor14[arg1].field_512 / stor11) - stor12 and stor13[stor14[arg1].field_256].field_1280 > -1 / (block.timestamp - stor14[arg1].field_512 / stor11) - stor12:
            revert with 0, 17
        if stor13[stor14[arg1].field_256].field_1024 > !((block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280) - (stor12 * stor13[stor14[arg1].field_256].field_1280)):
            revert with 0, 17
        if stor14[arg1].field_256 >= stor13.length:
            revert with 0, 50
        if block.timestamp - stor14[arg1].field_768 / stor11 < stor12:
            idx = 0
            while idx <= block.timestamp - stor14[arg1].field_768 / stor11:
                if 0 > !idx:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if False and stor13[stor14[arg1].field_256].field_1536 > 0:
                revert with 0, 17
            if stor13[stor14[arg1].field_256].field_1024 + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280) - (stor12 * stor13[stor14[arg1].field_256].field_1280) and stor13[stor14[arg1].field_256].field_256 > -1 / stor13[stor14[arg1].field_256].field_1024 + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280) - (stor12 * stor13[stor14[arg1].field_256].field_1280):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if False and stor13[stor14[arg1].field_256].field_256 > 0:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if 0 / stor9 > !((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9):
                revert with 0, 17
            if (0 / stor9) + ((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9) < stor14[arg1].field_1024:
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
            if (0 / stor9) + ((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9) - stor14[arg1].field_1024 and 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / (0 / stor9) + ((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9) - stor14[arg1].field_1024:
                revert with 0, 17
            if (0 / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + ((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor14[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18 > msg.value:
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
            if block.timestamp - stor14[arg1].field_768 / stor11 < stor12:
                revert with 0, 17
            if stor13[stor14[arg1].field_256].field_1792 and (block.timestamp - stor14[arg1].field_768 / stor11) - stor12 > -1 / stor13[stor14[arg1].field_256].field_1792:
                revert with 0, 17
            if False and stor13[stor14[arg1].field_256].field_1536 > 0:
                revert with 0, 17
            if 0 > !((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792)):
                revert with 0, 17
            if stor13[stor14[arg1].field_256].field_1024 + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280) - (stor12 * stor13[stor14[arg1].field_256].field_1280) and stor13[stor14[arg1].field_256].field_256 > -1 / stor13[stor14[arg1].field_256].field_1024 + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280) - (stor12 * stor13[stor14[arg1].field_256].field_1280):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792) and stor13[stor14[arg1].field_256].field_256 > -1 / (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9 > !((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9):
                revert with 0, 17
            if ((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9) + ((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9) < stor14[arg1].field_1024:
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
            if ((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9) + ((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9) - stor14[arg1].field_1024 and 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / ((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9) + ((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9) - stor14[arg1].field_1024:
                revert with 0, 17
            if ((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + ((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) - (stor14[arg1].field_1024 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) / 10^18 > msg.value:
                revert with 0, 'No set enough fee'
    if not stor14[arg1].field_0:
        revert with 0, 'No node exist'
    if stor14[arg1].field_256 >= stor13.length:
        revert with 0, 50
    if block.timestamp < stor14[arg1].field_512:
        revert with 0, 17
    if not stor11:
        revert with 0, 18
    if block.timestamp < stor14[arg1].field_768:
        revert with 0, 17
    if not stor11:
        revert with 0, 18
    if stor14[arg1].field_256 >= stor13.length:
        revert with 0, 50
    if block.timestamp - stor14[arg1].field_512 / stor11 <= stor12:
        if block.timestamp - stor14[arg1].field_512 / stor11 and stor13[stor14[arg1].field_256].field_768 > -1 / block.timestamp - stor14[arg1].field_512 / stor11:
            revert with 0, 17
        if stor14[arg1].field_256 >= stor13.length:
            revert with 0, 50
        if block.timestamp - stor14[arg1].field_768 / stor11 < stor12:
            idx = 0
            while idx <= block.timestamp - stor14[arg1].field_768 / stor11:
                if 0 > !idx:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if False and stor13[stor14[arg1].field_256].field_1536 > 0:
                revert with 0, 17
            if block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 and stor13[stor14[arg1].field_256].field_256 > -1 / block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if False and stor13[stor14[arg1].field_256].field_256 > 0:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            stor14[arg1].field_768 = block.timestamp
            if stor14[arg1].field_1280 > !(0 / stor9):
                revert with 0, 17
            stor14[arg1].field_1280 += 0 / stor9
            if 0 / stor9 > !(block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9):
                revert with 0, 17
            if (0 / stor9) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9) < stor14[arg1].field_1024:
                revert with 0, 17
            stor14[arg1].field_1024 = block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9
            require ext_code.size(sub_85adc8b0Address)
            call sub_85adc8b0Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (0 / stor9) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9) - stor14[arg1].field_1024
        else:
            idx = 0
            while idx <= stor12:
                if 0 > !idx:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if block.timestamp - stor14[arg1].field_768 / stor11 < stor12:
                revert with 0, 17
            if stor13[stor14[arg1].field_256].field_1792 and (block.timestamp - stor14[arg1].field_768 / stor11) - stor12 > -1 / stor13[stor14[arg1].field_256].field_1792:
                revert with 0, 17
            if False and stor13[stor14[arg1].field_256].field_1536 > 0:
                revert with 0, 17
            if 0 > !((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792)):
                revert with 0, 17
            if block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 and stor13[stor14[arg1].field_256].field_256 > -1 / block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792) and stor13[stor14[arg1].field_256].field_256 > -1 / (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            stor14[arg1].field_768 = block.timestamp
            if stor14[arg1].field_1280 > !((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9):
                revert with 0, 17
            stor14[arg1].field_1280 += (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9
            if (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9 > !(block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9):
                revert with 0, 17
            if ((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9) < stor14[arg1].field_1024:
                revert with 0, 17
            stor14[arg1].field_1024 = block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9
            require ext_code.size(sub_85adc8b0Address)
            call sub_85adc8b0Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_768 * stor13[stor14[arg1].field_256].field_256 / stor9) - stor14[arg1].field_1024
    else:
        if block.timestamp - stor14[arg1].field_512 / stor11 < stor12:
            revert with 0, 17
        if (block.timestamp - stor14[arg1].field_512 / stor11) - stor12 and stor13[stor14[arg1].field_256].field_1280 > -1 / (block.timestamp - stor14[arg1].field_512 / stor11) - stor12:
            revert with 0, 17
        if stor13[stor14[arg1].field_256].field_1024 > !((block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280) - (stor12 * stor13[stor14[arg1].field_256].field_1280)):
            revert with 0, 17
        if stor14[arg1].field_256 >= stor13.length:
            revert with 0, 50
        if block.timestamp - stor14[arg1].field_768 / stor11 < stor12:
            idx = 0
            while idx <= block.timestamp - stor14[arg1].field_768 / stor11:
                if 0 > !idx:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if False and stor13[stor14[arg1].field_256].field_1536 > 0:
                revert with 0, 17
            if stor13[stor14[arg1].field_256].field_1024 + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280) - (stor12 * stor13[stor14[arg1].field_256].field_1280) and stor13[stor14[arg1].field_256].field_256 > -1 / stor13[stor14[arg1].field_256].field_1024 + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280) - (stor12 * stor13[stor14[arg1].field_256].field_1280):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if False and stor13[stor14[arg1].field_256].field_256 > 0:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            stor14[arg1].field_768 = block.timestamp
            if stor14[arg1].field_1280 > !(0 / stor9):
                revert with 0, 17
            stor14[arg1].field_1280 += 0 / stor9
            if 0 / stor9 > !((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9):
                revert with 0, 17
            if (0 / stor9) + ((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9) < stor14[arg1].field_1024:
                revert with 0, 17
            stor14[arg1].field_1024 = (stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9
            require ext_code.size(sub_85adc8b0Address)
            call sub_85adc8b0Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (0 / stor9) + ((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9) - stor14[arg1].field_1024
        else:
            idx = 0
            while idx <= stor12:
                if 0 > !idx:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if block.timestamp - stor14[arg1].field_768 / stor11 < stor12:
                revert with 0, 17
            if stor13[stor14[arg1].field_256].field_1792 and (block.timestamp - stor14[arg1].field_768 / stor11) - stor12 > -1 / stor13[stor14[arg1].field_256].field_1792:
                revert with 0, 17
            if False and stor13[stor14[arg1].field_256].field_1536 > 0:
                revert with 0, 17
            if 0 > !((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792)):
                revert with 0, 17
            if stor13[stor14[arg1].field_256].field_1024 + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280) - (stor12 * stor13[stor14[arg1].field_256].field_1280) and stor13[stor14[arg1].field_256].field_256 > -1 / stor13[stor14[arg1].field_256].field_1024 + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280) - (stor12 * stor13[stor14[arg1].field_256].field_1280):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792) and stor13[stor14[arg1].field_256].field_256 > -1 / (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792) - (stor12 * stor13[stor14[arg1].field_256].field_1792):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            stor14[arg1].field_768 = block.timestamp
            if stor14[arg1].field_1280 > !((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9):
                revert with 0, 17
            stor14[arg1].field_1280 += (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9
            if (block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9 > !((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9):
                revert with 0, 17
            if ((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9) + ((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9) < stor14[arg1].field_1024:
                revert with 0, 17
            stor14[arg1].field_1024 = (stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9
            require ext_code.size(sub_85adc8b0Address)
            call sub_85adc8b0Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ((block.timestamp - stor14[arg1].field_768 / stor11 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1792 * stor13[stor14[arg1].field_256].field_256) / stor9) + ((stor13[stor14[arg1].field_256].field_1024 * stor13[stor14[arg1].field_256].field_256) + (block.timestamp - stor14[arg1].field_512 / stor11 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) - (stor12 * stor13[stor14[arg1].field_256].field_1280 * stor13[stor14[arg1].field_256].field_256) / stor9) - stor14[arg1].field_1024
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
        if not stor14[stor15[address(msg.sender)][idx]].field_0:
            revert with 0, 'No node exist'
        if stor14[stor15[address(msg.sender)][idx]].field_256 >= stor13.length:
            revert with 0, 50
        if block.timestamp < stor14[stor15[address(msg.sender)][idx]].field_512:
            revert with 0, 17
        if not stor11:
            revert with 0, 18
        if block.timestamp < stor14[stor15[address(msg.sender)][idx]].field_768:
            revert with 0, 17
        if not stor11:
            revert with 0, 18
        if stor14[stor15[address(msg.sender)][idx]].field_256 >= stor13.length:
            revert with 0, 50
        if block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11 <= stor12:
            if block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11 and stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_768 > -1 / block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11:
                revert with 0, 17
            if stor14[stor15[address(msg.sender)][idx]].field_256 >= stor13.length:
                revert with 0, 50
            if block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_768 / stor11 < stor12:
                t = 0
                while t <= block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_768 / stor11:
                    if 0 > !t:
                        revert with 0, 17
                    if t == -1:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 15
                    t = t + 1
                    continue 
                if False and stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1536 > 0:
                    revert with 0, 17
                if block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_768 and stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256 > -1 / block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_768:
                    revert with 0, 17
                if not stor9:
                    revert with 0, 18
                if False and stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256 > 0:
                    revert with 0, 17
                if not stor9:
                    revert with 0, 18
                if 0 / stor9 > !(block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_768 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256 / stor9):
                    revert with 0, 17
                if (0 / stor9) + (block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_768 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256 / stor9) < stor14[stor15[address(msg.sender)][idx]].field_1024:
                    revert with 0, 17
                if s > !((0 / stor9) + (block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_768 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256 / stor9) - stor14[stor15[address(msg.sender)][idx]].field_1024):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 15
                idx = idx + 1
                s = s + (0 / stor9) + (block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_768 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256 / stor9) - stor14[stor15[address(msg.sender)][idx]].field_1024
                continue 
            t = 0
            while t <= stor12:
                if 0 > !t:
                    revert with 0, 17
                if t == -1:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 15
                t = t + 1
                continue 
            if block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_768 / stor11 < stor12:
                revert with 0, 17
            if stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792 and (block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_768 / stor11) - stor12 > -1 / stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792:
                revert with 0, 17
            if False and stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1536 > 0:
                revert with 0, 17
            if 0 > !((block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792) - (stor12 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792)):
                revert with 0, 17
            if block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_768 and stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256 > -1 / block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_768:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792) - (stor12 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792) and stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256 > -1 / (block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792) - (stor12 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) / stor9 > !(block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_768 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256 / stor9):
                revert with 0, 17
            if ((block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_768 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256 / stor9) < stor14[stor15[address(msg.sender)][idx]].field_1024:
                revert with 0, 17
            if s > !(((block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_768 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256 / stor9) - stor14[stor15[address(msg.sender)][idx]].field_1024):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 15
            idx = idx + 1
            s = s + ((block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) / stor9) + (block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_768 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256 / stor9) - stor14[stor15[address(msg.sender)][idx]].field_1024
            continue 
        if block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11 < stor12:
            revert with 0, 17
        if (block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11) - stor12 and stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1280 > -1 / (block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11) - stor12:
            revert with 0, 17
        if stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1024 > !((block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1280) - (stor12 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1280)):
            revert with 0, 17
        if stor14[stor15[address(msg.sender)][idx]].field_256 >= stor13.length:
            revert with 0, 50
        if block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_768 / stor11 < stor12:
            t = 0
            while t <= block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_768 / stor11:
                if 0 > !t:
                    revert with 0, 17
                if t == -1:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 15
                t = t + 1
                continue 
            if False and stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1536 > 0:
                revert with 0, 17
            if stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1024 + (block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1280) - (stor12 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1280) and stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256 > -1 / stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1024 + (block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1280) - (stor12 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1280):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if False and stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256 > 0:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if 0 / stor9 > !((stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1024 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) / stor9):
                revert with 0, 17
            if (0 / stor9) + ((stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1024 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) / stor9) < stor14[stor15[address(msg.sender)][idx]].field_1024:
                revert with 0, 17
            if s > !((0 / stor9) + ((stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1024 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) / stor9) - stor14[stor15[address(msg.sender)][idx]].field_1024):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 15
            idx = idx + 1
            s = s + (0 / stor9) + ((stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1024 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) / stor9) - stor14[stor15[address(msg.sender)][idx]].field_1024
            continue 
        t = 0
        while t <= stor12:
            if 0 > !t:
                revert with 0, 17
            if t == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 15
            t = t + 1
            continue 
        if block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_768 / stor11 < stor12:
            revert with 0, 17
        if stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792 and (block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_768 / stor11) - stor12 > -1 / stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792:
            revert with 0, 17
        if False and stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1536 > 0:
            revert with 0, 17
        if 0 > !((block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792) - (stor12 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792)):
            revert with 0, 17
        if stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1024 + (block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1280) - (stor12 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1280) and stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256 > -1 / stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1024 + (block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1280) - (stor12 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1280):
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if (block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792) - (stor12 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792) and stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256 > -1 / (block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792) - (stor12 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792):
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if (block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) / stor9 > !((stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1024 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) / stor9):
            revert with 0, 17
        if ((block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) / stor9) + ((stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1024 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) / stor9) < stor14[stor15[address(msg.sender)][idx]].field_1024:
            revert with 0, 17
        if s > !(((block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) / stor9) + ((stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1024 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) / stor9) - stor14[stor15[address(msg.sender)][idx]].field_1024):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = 15
        idx = idx + 1
        s = s + ((block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_768 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1792 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) / stor9) + ((stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1024 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[address(msg.sender)][idx]].field_512 / stor11 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_1280 * stor13[stor14[stor15[address(msg.sender)][idx]].field_256].field_256) / stor9) - stor14[stor15[address(msg.sender)][idx]].field_1024
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
    if s * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10^18 > msg.value:
        revert with 0, 'No fee is set'
    idx = 0
    s = 0
    while idx < sub_627dd5ca[msg.sender]:
        if idx >= sub_627dd5ca[msg.sender]:
            revert with 0, 50
        if not stor14[stor15[msg.sender][idx]].field_0:
            revert with 0, 'No node exist'
        if stor14[stor15[msg.sender][idx]].field_256 >= stor13.length:
            revert with 0, 50
        if block.timestamp < stor14[stor15[msg.sender][idx]].field_512:
            revert with 0, 17
        if not stor11:
            revert with 0, 18
        if block.timestamp < stor14[stor15[msg.sender][idx]].field_768:
            revert with 0, 17
        if not stor11:
            revert with 0, 18
        if stor14[stor15[msg.sender][idx]].field_256 >= stor13.length:
            revert with 0, 50
        if block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 <= stor12:
            if block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 and stor13[stor14[stor15[msg.sender][idx]].field_256].field_768 > -1 / block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11:
                revert with 0, 17
            if stor14[stor15[msg.sender][idx]].field_256 >= stor13.length:
                revert with 0, 50
            if block.timestamp - stor14[stor15[msg.sender][idx]].field_768 / stor11 < stor12:
                t = 0
                while t <= block.timestamp - stor14[stor15[msg.sender][idx]].field_768 / stor11:
                    if 0 > !t:
                        revert with 0, 17
                    if t == -1:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 15
                    t = t + 1
                    continue 
                if False and stor13[stor14[stor15[msg.sender][idx]].field_256].field_1536 > 0:
                    revert with 0, 17
                if block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_768 and stor13[stor14[stor15[msg.sender][idx]].field_256].field_256 > -1 / block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_768:
                    revert with 0, 17
                if not stor9:
                    revert with 0, 18
                if False and stor13[stor14[stor15[msg.sender][idx]].field_256].field_256 > 0:
                    revert with 0, 17
                if not stor9:
                    revert with 0, 18
                stor14[stor15[msg.sender][idx]].field_768 = block.timestamp
                if stor14[stor15[msg.sender][idx]].field_1280 > !(0 / stor9):
                    revert with 0, 17
                stor14[stor15[msg.sender][idx]].field_1280 += 0 / stor9
                if 0 / stor9 > !(block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_768 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256 / stor9):
                    revert with 0, 17
                if (0 / stor9) + (block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_768 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256 / stor9) < stor14[stor15[msg.sender][idx]].field_1024:
                    revert with 0, 17
                if s > !((0 / stor9) + (block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_768 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256 / stor9) - stor14[stor15[msg.sender][idx]].field_1024):
                    revert with 0, 17
                stor14[stor15[msg.sender][idx]].field_1024 = block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_768 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256 / stor9
                if idx == -1:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 15
                idx = idx + 1
                s = s + (0 / stor9) + (block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_768 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256 / stor9) - stor14[stor15[msg.sender][idx]].field_1024
                continue 
            t = 0
            while t <= stor12:
                if 0 > !t:
                    revert with 0, 17
                if t == -1:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 15
                t = t + 1
                continue 
            if block.timestamp - stor14[stor15[msg.sender][idx]].field_768 / stor11 < stor12:
                revert with 0, 17
            if stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792 and (block.timestamp - stor14[stor15[msg.sender][idx]].field_768 / stor11) - stor12 > -1 / stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792:
                revert with 0, 17
            if False and stor13[stor14[stor15[msg.sender][idx]].field_256].field_1536 > 0:
                revert with 0, 17
            if 0 > !((block.timestamp - stor14[stor15[msg.sender][idx]].field_768 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792)):
                revert with 0, 17
            if block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_768 and stor13[stor14[stor15[msg.sender][idx]].field_256].field_256 > -1 / block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_768:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if (block.timestamp - stor14[stor15[msg.sender][idx]].field_768 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792) and stor13[stor14[stor15[msg.sender][idx]].field_256].field_256 > -1 / (block.timestamp - stor14[stor15[msg.sender][idx]].field_768 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            stor14[stor15[msg.sender][idx]].field_768 = block.timestamp
            if stor14[stor15[msg.sender][idx]].field_1280 > !((block.timestamp - stor14[stor15[msg.sender][idx]].field_768 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) / stor9):
                revert with 0, 17
            stor14[stor15[msg.sender][idx]].field_1280 += (block.timestamp - stor14[stor15[msg.sender][idx]].field_768 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) / stor9
            if (block.timestamp - stor14[stor15[msg.sender][idx]].field_768 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) / stor9 > !(block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_768 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256 / stor9):
                revert with 0, 17
            if ((block.timestamp - stor14[stor15[msg.sender][idx]].field_768 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) / stor9) + (block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_768 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256 / stor9) < stor14[stor15[msg.sender][idx]].field_1024:
                revert with 0, 17
            if s > !(((block.timestamp - stor14[stor15[msg.sender][idx]].field_768 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) / stor9) + (block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_768 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256 / stor9) - stor14[stor15[msg.sender][idx]].field_1024):
                revert with 0, 17
            stor14[stor15[msg.sender][idx]].field_1024 = block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_768 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256 / stor9
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 15
            idx = idx + 1
            s = s + ((block.timestamp - stor14[stor15[msg.sender][idx]].field_768 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) / stor9) + (block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_768 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256 / stor9) - stor14[stor15[msg.sender][idx]].field_1024
            continue 
        if block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 < stor12:
            revert with 0, 17
        if (block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11) - stor12 and stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280 > -1 / (block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11) - stor12:
            revert with 0, 17
        if stor13[stor14[stor15[msg.sender][idx]].field_256].field_1024 > !((block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280)):
            revert with 0, 17
        if stor14[stor15[msg.sender][idx]].field_256 >= stor13.length:
            revert with 0, 50
        if block.timestamp - stor14[stor15[msg.sender][idx]].field_768 / stor11 < stor12:
            t = 0
            while t <= block.timestamp - stor14[stor15[msg.sender][idx]].field_768 / stor11:
                if 0 > !t:
                    revert with 0, 17
                if t == -1:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 15
                t = t + 1
                continue 
            if False and stor13[stor14[stor15[msg.sender][idx]].field_256].field_1536 > 0:
                revert with 0, 17
            if stor13[stor14[stor15[msg.sender][idx]].field_256].field_1024 + (block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280) and stor13[stor14[stor15[msg.sender][idx]].field_256].field_256 > -1 / stor13[stor14[stor15[msg.sender][idx]].field_256].field_1024 + (block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280):
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            if False and stor13[stor14[stor15[msg.sender][idx]].field_256].field_256 > 0:
                revert with 0, 17
            if not stor9:
                revert with 0, 18
            stor14[stor15[msg.sender][idx]].field_768 = block.timestamp
            if stor14[stor15[msg.sender][idx]].field_1280 > !(0 / stor9):
                revert with 0, 17
            stor14[stor15[msg.sender][idx]].field_1280 += 0 / stor9
            if 0 / stor9 > !((stor13[stor14[stor15[msg.sender][idx]].field_256].field_1024 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) / stor9):
                revert with 0, 17
            if (0 / stor9) + ((stor13[stor14[stor15[msg.sender][idx]].field_256].field_1024 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) / stor9) < stor14[stor15[msg.sender][idx]].field_1024:
                revert with 0, 17
            if s > !((0 / stor9) + ((stor13[stor14[stor15[msg.sender][idx]].field_256].field_1024 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) / stor9) - stor14[stor15[msg.sender][idx]].field_1024):
                revert with 0, 17
            stor14[stor15[msg.sender][idx]].field_1024 = (stor13[stor14[stor15[msg.sender][idx]].field_256].field_1024 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) / stor9
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 15
            idx = idx + 1
            s = s + (0 / stor9) + ((stor13[stor14[stor15[msg.sender][idx]].field_256].field_1024 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) / stor9) - stor14[stor15[msg.sender][idx]].field_1024
            continue 
        t = 0
        while t <= stor12:
            if 0 > !t:
                revert with 0, 17
            if t == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 15
            t = t + 1
            continue 
        if block.timestamp - stor14[stor15[msg.sender][idx]].field_768 / stor11 < stor12:
            revert with 0, 17
        if stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792 and (block.timestamp - stor14[stor15[msg.sender][idx]].field_768 / stor11) - stor12 > -1 / stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792:
            revert with 0, 17
        if False and stor13[stor14[stor15[msg.sender][idx]].field_256].field_1536 > 0:
            revert with 0, 17
        if 0 > !((block.timestamp - stor14[stor15[msg.sender][idx]].field_768 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792)):
            revert with 0, 17
        if stor13[stor14[stor15[msg.sender][idx]].field_256].field_1024 + (block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280) and stor13[stor14[stor15[msg.sender][idx]].field_256].field_256 > -1 / stor13[stor14[stor15[msg.sender][idx]].field_256].field_1024 + (block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280):
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if (block.timestamp - stor14[stor15[msg.sender][idx]].field_768 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792) and stor13[stor14[stor15[msg.sender][idx]].field_256].field_256 > -1 / (block.timestamp - stor14[stor15[msg.sender][idx]].field_768 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792):
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        stor14[stor15[msg.sender][idx]].field_768 = block.timestamp
        if stor14[stor15[msg.sender][idx]].field_1280 > !((block.timestamp - stor14[stor15[msg.sender][idx]].field_768 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) / stor9):
            revert with 0, 17
        stor14[stor15[msg.sender][idx]].field_1280 += (block.timestamp - stor14[stor15[msg.sender][idx]].field_768 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) / stor9
        if (block.timestamp - stor14[stor15[msg.sender][idx]].field_768 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) / stor9 > !((stor13[stor14[stor15[msg.sender][idx]].field_256].field_1024 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) / stor9):
            revert with 0, 17
        if ((block.timestamp - stor14[stor15[msg.sender][idx]].field_768 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) / stor9) + ((stor13[stor14[stor15[msg.sender][idx]].field_256].field_1024 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) / stor9) < stor14[stor15[msg.sender][idx]].field_1024:
            revert with 0, 17
        if s > !(((block.timestamp - stor14[stor15[msg.sender][idx]].field_768 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) / stor9) + ((stor13[stor14[stor15[msg.sender][idx]].field_256].field_1024 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) / stor9) - stor14[stor15[msg.sender][idx]].field_1024):
            revert with 0, 17
        stor14[stor15[msg.sender][idx]].field_1024 = (stor13[stor14[stor15[msg.sender][idx]].field_256].field_1024 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) / stor9
        if idx == -1:
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = 15
        idx = idx + 1
        s = s + ((block.timestamp - stor14[stor15[msg.sender][idx]].field_768 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1792 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) / stor9) + ((stor13[stor14[stor15[msg.sender][idx]].field_256].field_1024 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) + (block.timestamp - stor14[stor15[msg.sender][idx]].field_512 / stor11 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) - (stor12 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_1280 * stor13[stor14[stor15[msg.sender][idx]].field_256].field_256) / stor9) - stor14[stor15[msg.sender][idx]].field_1024
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



}
