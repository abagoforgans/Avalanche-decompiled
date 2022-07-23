contract main {




// =====================  Runtime code  =====================


#
#  - tokensOfOwner(address arg1, uint8 arg2, uint8 arg3)
#
address owner;
uint256 stor1;
uint256 stor2;
uint256 stor3;
array of struct stor4;
array of struct stor5;
mapping of struct stor6;
mapping of struct balanceOf;
mapping of address approved;
mapping of uint8 stor9;
uint8 sub_068afd4d;
uint8 sub_d356620a; offset 8
uint8 sub_51252504; offset 16
uint8 sub_1edbccd4; offset 24
uint8 sub_87a8cb59; offset 32
uint256 NFT_PRICE;
uint8 stor12;
uint8 stor12; offset 8
uint8 stor12; offset 16
uint256 stor12; offset 16
uint256 stor12; offset 8
uint256 stor12;
array of struct stor13;
mapping of struct whitelistedData;
array of struct sub_85c6b79e;

function sub_068afd4d(?) {
    return sub_068afd4d
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor2:
        revert with 3477536996
    if stor6[arg1].field_224:
        revert with 3477536996
    return approved[arg1]
}

function sub_10baa74c(?) {
    return bool(uint8(stor12.field_8))
}

function getWhitelistedData(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return whitelistedData[address(arg1)].field_256
}

function sub_1edbccd4(?) {
    return sub_1edbccd4
}

function countWhitelisted() {
    return sub_85c6b79e.length
}

function sub_51252504(?) {
    return sub_51252504
}

function NFT_PRICE() {
    return NFT_PRICE
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 2404300292
    return balanceOf[address(arg1)].field_0
}

function sub_7bf08e34(?) {
    return bool(uint8(stor12.field_0))
}

function sub_85c6b79e(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_85c6b79e.length
    return sub_85c6b79e[arg1].field_0
}

function sub_87a8cb59(?) {
    return sub_87a8cb59
}

function sub_8874e47f(?) {
    return bool(uint8(stor12.field_16))
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return whitelistedData[arg1].field_0, whitelistedData[arg1].field_256
}

function sub_d356620a(?) {
    return sub_d356620a
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor9[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function totalSupply() {
    return (stor2 - stor3)
}

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (whitelistedData[address(arg1)].field_0 == arg1)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, '2Ownable: caller is not the owne'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setNFTPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '2Ownable: caller is not the owne'
    NFT_PRICE = arg1
}

function togglePaused() {
    if owner != msg.sender:
        revert with 0, '2Ownable: caller is not the owne'
    Mask(248, 0, stor12.field_8) = Mask(248, 0, not uint8(stor12.field_8))
}

function togglePreSale() {
    if owner != msg.sender:
        revert with 0, '2Ownable: caller is not the owne'
    Mask(240, 0, stor12.field_16) = Mask(240, 0, not uint8(stor12.field_16))
}

function toggleRevealed() {
    if owner != msg.sender:
        revert with 0, '2Ownable: caller is not the owne'
    uint256(stor12.field_0) = not uint8(stor12.field_0) or Mask(248, 8, uint256(stor12.field_0))
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1 - msg.sender:
        revert with 2959280091
    stor9[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '2Ownable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function addAddressToWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '2Ownable: caller is not the owne'
    if not whitelistedData[address(arg1)].field_0 - arg1:
        revert with 0, 'Already whitelisted'
    whitelistedData[address(arg1)].field_0 = arg1
    whitelistedData[address(arg1)].field_256 = 0
    sub_85c6b79e.length++
    sub_85c6b79e[sub_85c6b79e.length].field_0 = arg1
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, '2Ownable: caller is not the owne'
    if not stor1 - 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not eth.balance(this.address):
        revert with 0, 'No enough balance yet'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Founder transfer failed'
    stor1 = 1
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    if arg1 >= stor2:
        revert with 3744308034
    mem[192] = stor6[arg1].field_0
    mem[224] = stor6[arg1].field_160
    mem[256] = bool(stor6[arg1].field_224)
    if stor6[arg1].field_224:
        revert with 3744308034
    if stor6[arg1].field_0:
        return stor6[arg1].field_0
    mem[64] = 384
    mem[288] = stor6[arg1 - 1].field_0
    mem[320] = stor6[arg1 - 1].field_160
    mem[352] = bool(stor6[arg1 - 1].field_224)
    s = 192
    s = arg1
    while not stor6[arg1 - 1].field_0:
        mem[0] = s - 2
        mem[32] = 6
        mem[64] = mem[64] + 96
        mem[288] = stor6[s - 2].field_0
        mem[320] = stor6[arg1 - 1].field_160
        mem[352] = bool(stor6[arg1 - 1].field_224)
        s = 288
        s = s - 1
        continue 
    mem[mem[64]] = mem[300 len 20]
    return memory
      from mem[64]
       len 32
}

function getWhiteListedAdrrs() {
    mem[64] = (32 * sub_85c6b79e.length) + 128
    mem[96] = sub_85c6b79e.length
    if not sub_85c6b79e.length:
        mem[(32 * sub_85c6b79e.length) + 128] = 32
        mem[(32 * sub_85c6b79e.length) + 160] = sub_85c6b79e.length
        idx = 0
        s = (32 * sub_85c6b79e.length) + 192
        t = 128
        while idx < sub_85c6b79e.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_85c6b79e.length) + 128
           len (96 * sub_85c6b79e.length) + 64
    mem[128] = address(sub_85c6b79e.field_0)
    idx = 128
    s = 0
    while (32 * sub_85c6b79e.length) + 96 > idx:
        mem[idx + 32] = sub_85c6b79e[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_85c6b79e.length) + 128] = 32
    mem[(32 * sub_85c6b79e.length) + 160] = sub_85c6b79e.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_85c6b79e.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_85c6b79e.length) + -mem[64] + 192
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= stor2:
        revert with 3744308034
    if stor6[arg2].field_224:
        revert with 3744308034
    if stor6[arg2].field_0:
        if not arg1 - stor6[arg2].field_0:
            revert with 2487188364
        if stor6[arg2].field_0 != msg.sender:
            if not stor9[stor6[arg2].field_0][address(msg.sender)]:
                revert with 3484662082
        approved[arg2] = arg1
        emit Approval(stor6[arg2].field_0, arg1, arg2);
    else:
        mem[64] = 384
        mem[288] = stor6[arg2 - 1].field_0
        s = 192
        s = arg2
        while not stor6[arg2 - 1].field_0:
            mem[0] = s - 2
            mem[32] = 6
            mem[64] = mem[64] + 96
            mem[288] = stor6[s - 2].field_0
            mem[320] = stor6[arg2 - 1].field_160
            mem[352] = bool(stor6[arg2 - 1].field_224)
            s = 288
            s = s - 1
            continue 
        if not arg1 - mem[300 len 20]:
            revert with 2487188364
        if mem[300 len 20] != msg.sender:
            if not stor9[mem[300 len 20]][address(msg.sender)]:
                revert with 3484662082
        approved[arg2] = arg1
        emit Approval(mem[300 len 20], arg1, arg2);
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '2Ownable: caller is not the owne'
    if bool(stor13.length):
        if not bool(stor13.length) - (uint255(stor13.length) * 0.5 < 32):
            revert with 0, 34
        if arg1.length:
            stor13[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor13.length = 0
            idx = 0
            while (uint255(stor13.length) * 0.5) + 31 / 32 > idx:
                stor13[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if not bool(stor13.length) - (stor13.length.field_1 < 32):
            revert with 0, 34
        if arg1.length:
            stor13[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor13.length = 0
            idx = 0
            while stor13.length.field_1 + 31 / 32 > idx:
                stor13[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if arg3 >= stor2:
        revert with 3744308034
    if stor6[arg3].field_224:
        revert with 3744308034
    if stor6[arg3].field_0:
        if stor6[arg3].field_0 != arg1:
            revert with 2702475520
        if arg1 != msg.sender:
            if not stor9[address(arg1)][address(msg.sender)]:
                if arg3 >= stor2:
                    revert with 3477536996
                if stor6[arg3].field_224:
                    revert with 3477536996
                if approved[arg3] != msg.sender:
                    revert with 1506318014
        if not arg2:
            revert with 3931454260
        approved[arg3] = 0
        emit Approval(arg1, 0, arg3);
        balanceOf[address(arg1)].field_0 = uint64(balanceOf[address(arg1)].field_0 - 1)
        balanceOf[arg2].field_0 = uint64(balanceOf[arg2].field_0 + 1)
        stor6[arg3].field_0 = arg2
        stor6[arg3].field_160 = uint64(block.timestamp)
        if not stor6[arg3 + 1].field_0:
            if arg3 + 1 != stor2:
                stor6[arg3 + 1].field_0 = arg1
                stor6[arg3 + 1].field_160 = stor6[arg3].field_160
    else:
        mem[64] = 384
        mem[288] = stor6[arg3 - 1].field_0
        mem[320] = stor6[arg3 - 1].field_160
        s = 192
        s = arg3
        while not stor6[arg3 - 1].field_0:
            mem[0] = s - 2
            mem[32] = 6
            mem[64] = mem[64] + 96
            mem[288] = stor6[s - 2].field_0
            mem[320] = stor6[arg3 - 1].field_160
            mem[352] = bool(stor6[arg3 - 1].field_224)
            s = 288
            s = s - 1
            continue 
        if mem[300 len 20] != arg1:
            revert with 2702475520
        if arg1 != msg.sender:
            if not stor9[address(arg1)][address(msg.sender)]:
                if arg3 >= stor2:
                    revert with 3477536996
                if stor6[arg3].field_224:
                    revert with 3477536996
                if approved[arg3] != msg.sender:
                    revert with 1506318014
        if not arg2:
            revert with 3931454260
        approved[arg3] = 0
        emit Approval(arg1, 0, arg3);
        balanceOf[address(arg1)].field_0 = uint64(balanceOf[address(arg1)].field_0 - 1)
        balanceOf[arg2].field_0 = uint64(balanceOf[arg2].field_0 + 1)
        stor6[arg3].field_0 = arg2
        stor6[arg3].field_160 = uint64(block.timestamp)
        if not stor6[arg3 + 1].field_0:
            if arg3 + 1 != stor2:
                stor6[arg3 + 1].field_0 = arg1
                stor6[arg3 + 1].field_160 = mem[344 len 8]
    emit Transfer(arg1, arg2, arg3);
}

function sub_c7a9255c(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, '2Ownable: caller is not the owne'
    if stor2 - stor3 > !uint8(arg1):
        revert with 0, 17
    if stor2 - stor3 + uint8(arg1) > sub_d356620a:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Will exceed the total reserve limit'
    mem[64] = 128
    mem[96] = 0
    if not msg.sender:
        revert with 772236032
    if not -uint8(arg1):
        revert with 3043158237
    balanceOf[address(msg.sender)].field_0 = uint64(uint8(arg1) + balanceOf[address(msg.sender)].field_0)
    balanceOf[address(msg.sender)].field_64 = uint64(uint8(arg1) + balanceOf[address(msg.sender)].field_64)
    mem[0] = stor2
    mem[32] = 6
    stor6[stor2].field_0 = msg.sender
    stor6[stor2].field_160 = uint64(block.timestamp)
    emit Transfer(0, msg.sender, stor2);
    if not ext_code.size(msg.sender):
        idx = stor2
        while idx + -uint8(arg1) + -stor2 + 1:
            emit Transfer(0, msg.sender, idx + 1);
            idx = idx + 1
            continue 
        stor2 = stor2 + uint8(arg1) + 2
    mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    mem[var49001] = msg.sender
    mem[var49001 + 32] = 0
    mem[var49001 + 64] = var49003
    mem[var49001 + 96] = 128
    mem[var51002] = 0
    if var34001 < var53003:
        mem[var34001 + var53002] = mem[var34001 + 128]
        var34001 = var34001 + 32
        continue 
    if var34001 > var53003:
        mem[var53003 + var53002] = 0
    call msg.sender.0x150b7a02 with:
         gas gas_remaining wei
        args mem[132 len ceil32(var53005) + var53008 - 100]
    mem[128] = ext_call.return_data[0]
    if not ext_call.success:
        if not return_data.size:
            revert with 3517284054
        if not -return_data.size:
            revert with 3517284054
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 128
    require return_data.size >= 32
    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
        revert with 3517284054
    if not var53026 - uint8(arg1) - stor2:
        require stor2 == stor2
        stor2 = var53026
    emit Transfer(0, msg.sender, var53026);
    mem[ceil32(return_data.size) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = 0
    mem[ceil32(return_data.size) + 196] = var53026
    mem[ceil32(return_data.size) + 228] = 128
    mem[ceil32(return_data.size) + 260] = 0
    var34001 = 0
    continue 
}

function name() {
    if bool(stor4.length):
        if not bool(stor4.length) - (uint255(stor4.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor4.length):
            if not bool(stor4.length) - (uint255(stor4.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if not bool(stor4.length) - (stor4.length.field_1 < 32):
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if not bool(stor4.length) - (stor4.length.field_1 < 32):
        revert with 0, 34
    if bool(stor4.length):
        if not bool(stor4.length) - (uint255(stor4.length) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if not bool(stor4.length) - (stor4.length.field_1 < 32):
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function symbol() {
    if bool(stor5.length):
        if not bool(stor5.length) - (uint255(stor5.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor5.length):
            if not bool(stor5.length) - (uint255(stor5.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if not bool(stor5.length) - (stor5.length.field_1 < 32):
                revert with 0, 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[(uint255(stor5.length) * 0.5) + ceil32(uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if not bool(stor5.length) - (stor5.length.field_1 < 32):
        revert with 0, 34
    if bool(stor5.length):
        if not bool(stor5.length) - (uint255(stor5.length) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if not bool(stor5.length) - (stor5.length.field_1 < 32):
            revert with 0, 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[stor5.length.field_1 + ceil32(stor5.length.field_1) + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function BASE_URI() {
    if bool(stor13.length):
        if not bool(stor13.length) - (uint255(stor13.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor13.length):
            if not bool(stor13.length) - (uint255(stor13.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor13.length):
                if 31 < uint255(stor13.length) * 0.5:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor13.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length), data=mem[128 len ceil32(uint255(stor13.length) * 0.5)])
                mem[128] = 256 * stor13.length.field_8
        else:
            if not bool(stor13.length) - (stor13.length.field_1 < 32):
                revert with 0, 34
            if stor13.length.field_1:
                if 31 < stor13.length.field_1:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while stor13.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length), data=mem[128 len ceil32(uint255(stor13.length) * 0.5)])
                mem[128] = 256 * stor13.length.field_8
        mem[ceil32(uint255(stor13.length) * 0.5) + 192 len ceil32(uint255(stor13.length) * 0.5)] = mem[128 len ceil32(uint255(stor13.length) * 0.5)]
        if ceil32(uint255(stor13.length) * 0.5) > uint255(stor13.length) * 0.5:
            mem[(uint255(stor13.length) * 0.5) + ceil32(uint255(stor13.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor13.length), data=mem[128 len ceil32(uint255(stor13.length) * 0.5)], mem[(2 * ceil32(uint255(stor13.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor13.length) * 0.5)]), 
    if not bool(stor13.length) - (stor13.length.field_1 < 32):
        revert with 0, 34
    if bool(stor13.length):
        if not bool(stor13.length) - (uint255(stor13.length) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor13.length):
            if 31 < uint255(stor13.length) * 0.5:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while (uint255(stor13.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)])
            mem[128] = 256 * stor13.length.field_8
    else:
        if not bool(stor13.length) - (stor13.length.field_1 < 32):
            revert with 0, 34
        if stor13.length.field_1:
            if 31 < stor13.length.field_1:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while stor13.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)])
            mem[128] = 256 * stor13.length.field_8
    mem[ceil32(stor13.length.field_1) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
    if ceil32(stor13.length.field_1) > stor13.length.field_1:
        mem[stor13.length.field_1 + ceil32(stor13.length.field_1) + 192] = 0
    return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)], mem[(2 * ceil32(stor13.length.field_1)) + 192 len 2 * ceil32(stor13.length.field_1)]), 
}

function mintNFT(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tx.origin != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The caller is from different contract'
    if uint8(stor12.field_8):
        revert with 0, 'Contract has been paused'
    if stor2 - stor3 > !arg1:
        revert with 0, 17
    if not uint8(stor12.field_16):
        if stor2 - stor3 + arg1 > sub_068afd4d:
            revert with 0, 'Will exceed the total nft limit'
        if arg1 <= 0:
            revert with 0, 'One-time purchase nft limit'
        if arg1 > sub_1edbccd4:
            revert with 0, 'One-time purchase nft limit'
        if arg1 and NFT_PRICE > -1 / arg1:
            revert with 0, 17
        if msg.value < arg1 * NFT_PRICE:
            revert with 0, 'Insufficient fee'
        mem[64] = 128
        mem[96] = 0
        if not msg.sender:
            revert with 772236032
        if not -arg1:
            revert with 3043158237
        balanceOf[address(msg.sender)].field_0 = uint64(arg1 + balanceOf[address(msg.sender)].field_0)
        balanceOf[address(msg.sender)].field_64 = uint64(arg1 + balanceOf[address(msg.sender)].field_64)
        mem[0] = stor2
        mem[32] = 6
        stor6[stor2].field_0 = msg.sender
        stor6[stor2].field_160 = uint64(block.timestamp)
        emit Transfer(0, msg.sender, stor2);
        if not ext_code.size(msg.sender):
            idx = stor2
            while idx + -arg1 + -stor2 + 1:
                emit Transfer(0, msg.sender, idx + 1);
                idx = idx + 1
                continue 
            stor2 = stor2 + arg1 + 2
        mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
        mem[var57001] = msg.sender
        mem[var57001 + 32] = 0
        mem[var57001 + 64] = var57003
        mem[var57001 + 96] = 128
        mem[var59002] = 0
        if var42001 < var61003:
            mem[var42001 + var61002] = mem[var42001 + 128]
            var42001 = var42001 + 32
            continue 
        if var42001 > var61003:
            mem[var61003 + var61002] = 0
        call msg.sender.0x150b7a02 with:
             gas gas_remaining wei
            args mem[132 len ceil32(var61005) + var61008 - 100]
        mem[128] = ext_call.return_data[0]
        if not ext_call.success:
            if not return_data.size:
                revert with 3517284054
            if not -return_data.size:
                revert with 3517284054
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 128
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 3517284054
        if not var61026 - arg1 - stor2:
            require stor2 == stor2
            stor2 = var61026
        emit Transfer(0, msg.sender, var61026);
        mem[ceil32(return_data.size) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = 0
        mem[ceil32(return_data.size) + 196] = var61026
        mem[ceil32(return_data.size) + 228] = 128
        mem[ceil32(return_data.size) + 260] = 0
        var42001 = 0
        continue 
    if stor2 - stor3 + arg1 >= sub_51252504:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Will exceed the total presale nft limit'
    if whitelistedData[msg.sender].field_0 != msg.sender:
        revert with 0, 'Address is not on whitelist'
    if whitelistedData[msg.sender].field_256 > !arg1:
        revert with 0, 17
    if whitelistedData[msg.sender].field_256 + arg1 > sub_87a8cb59:
        revert with 0, 'Above presale mint limit'
    if whitelistedData[msg.sender].field_256 > !arg1:
        revert with 0, 17
    whitelistedData[msg.sender].field_256 += arg1
    if arg1 <= 0:
        revert with 0, 'One-time purchase nft limit'
    if arg1 > sub_1edbccd4:
        revert with 0, 'One-time purchase nft limit'
    if arg1 and NFT_PRICE > -1 / arg1:
        revert with 0, 17
    if msg.value < arg1 * NFT_PRICE:
        revert with 0, 'Insufficient fee'
    mem[64] = 128
    mem[96] = 0
    if not msg.sender:
        revert with 772236032
    if not -arg1:
        revert with 3043158237
    balanceOf[address(msg.sender)].field_0 = uint64(arg1 + balanceOf[address(msg.sender)].field_0)
    balanceOf[address(msg.sender)].field_64 = uint64(arg1 + balanceOf[address(msg.sender)].field_64)
    mem[0] = stor2
    mem[32] = 6
    stor6[stor2].field_0 = msg.sender
    stor6[stor2].field_160 = uint64(block.timestamp)
    emit Transfer(0, msg.sender, stor2);
    if not ext_code.size(msg.sender):
        idx = stor2
        while idx + -arg1 + -stor2 + 1:
            emit Transfer(0, msg.sender, idx + 1);
            idx = idx + 1
            continue 
        stor2 = stor2 + arg1 + 2
    mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    mem[var66001] = msg.sender
    mem[var66001 + 32] = 0
    mem[var66001 + 64] = var66003
    mem[var66001 + 96] = 128
    mem[var68002] = 0
    if var51001 < var70003:
        mem[var51001 + var70002] = mem[var51001 + 128]
        var51001 = var51001 + 32
        continue 
    if var51001 > var70003:
        mem[var70003 + var70002] = 0
    call msg.sender.0x150b7a02 with:
         gas gas_remaining wei
        args mem[132 len ceil32(var70005) + var70008 - 100]
    mem[128] = ext_call.return_data[0]
    if not ext_call.success:
        if not return_data.size:
            revert with 3517284054
        if not -return_data.size:
            revert with 3517284054
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 128
    require return_data.size >= 32
    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
        revert with 3517284054
    if not var70026 - arg1 - stor2:
        require stor2 == stor2
        stor2 = var70026
    emit Transfer(0, msg.sender, var70026);
    mem[ceil32(return_data.size) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = 0
    mem[ceil32(return_data.size) + 196] = var70026
    mem[ceil32(return_data.size) + 228] = 128
    mem[ceil32(return_data.size) + 260] = 0
    var51001 = 0
    continue 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    if arg3 >= stor2:
        revert with 3744308034
    mem[224] = stor6[arg3].field_0
    mem[256] = stor6[arg3].field_160
    mem[288] = bool(stor6[arg3].field_224)
    if stor6[arg3].field_224:
        revert with 3744308034
    if stor6[arg3].field_0:
        if stor6[arg3].field_0 != arg1:
            revert with 2702475520
        if arg1 != msg.sender:
            if not stor9[address(arg1)][address(msg.sender)]:
                if arg3 >= stor2:
                    revert with 3477536996
                if stor6[arg3].field_224:
                    revert with 3477536996
                if approved[arg3] != msg.sender:
                    revert with 1506318014
        if not arg2:
            revert with 3931454260
        approved[arg3] = 0
        emit Approval(arg1, 0, arg3);
        balanceOf[address(arg1)].field_0 = uint64(balanceOf[address(arg1)].field_0 - 1)
        balanceOf[arg2].field_0 = uint64(balanceOf[arg2].field_0 + 1)
        stor6[arg3].field_0 = arg2
        stor6[arg3].field_160 = uint64(block.timestamp)
        if not stor6[arg3 + 1].field_0:
            if arg3 + 1 != stor2:
                stor6[arg3 + 1].field_0 = arg1
                stor6[arg3 + 1].field_160 = stor6[arg3].field_160
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2):
            call arg2.0x150b7a02 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, 128, 0
            if not ext_call.success:
                if not return_data.size:
                    revert with 3517284054
                if not -return_data.size:
                    revert with 3517284054
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 3517284054
    else:
        mem[64] = 416
        mem[320] = stor6[arg3 - 1].field_0
        mem[352] = stor6[arg3 - 1].field_160
        mem[384] = bool(stor6[arg3 - 1].field_224)
        s = 224
        s = arg3
        while not stor6[arg3 - 1].field_0:
            mem[0] = s - 2
            mem[32] = 6
            mem[64] = mem[64] + 96
            mem[320] = stor6[s - 2].field_0
            mem[352] = stor6[arg3 - 1].field_160
            mem[384] = bool(stor6[arg3 - 1].field_224)
            s = 320
            s = s - 1
            continue 
        if mem[332 len 20] != arg1:
            revert with 2702475520
        if arg1 == msg.sender:
            if not arg2:
                revert with 3931454260
            approved[arg3] = 0
            emit Approval(arg1, 0, arg3);
            balanceOf[address(arg1)].field_0 = uint64(balanceOf[address(arg1)].field_0 - 1)
            balanceOf[arg2].field_0 = uint64(balanceOf[arg2].field_0 + 1)
            mem[32] = 6
            stor6[arg3].field_0 = arg2
            stor6[arg3].field_160 = uint64(block.timestamp)
            mem[0] = arg3 + 1
            if stor6[arg3 + 1].field_0:
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2):
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg1
                    mem[mem[64] + 68] = arg3
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164 len 0] = None
                    call arg2.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), arg3, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            revert with 3517284054
                        if not -return_data.size:
                            revert with 3517284054
                        revert with ext_call.return_data[0 len return_data.size]
                    _1313 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1313] == Mask(32, 224, mem[_1313])
                    if Mask(32, 224, mem[_1313]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 3517284054
            else:
                if arg3 + 1 == stor2:
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164 len 0] = None
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                revert with 3517284054
                            if not -return_data.size:
                                revert with 3517284054
                            revert with ext_call.return_data[0 len return_data.size]
                        _1315 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1315] == Mask(32, 224, mem[_1315])
                        if Mask(32, 224, mem[_1315]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 3517284054
                else:
                    stor6[arg3 + 1].field_0 = arg1
                    stor6[arg3 + 1].field_160 = mem[376 len 8]
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164 len 0] = None
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                revert with 3517284054
                            if not -return_data.size:
                                revert with 3517284054
                            revert with ext_call.return_data[0 len return_data.size]
                        _1317 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1317] == Mask(32, 224, mem[_1317])
                        if Mask(32, 224, mem[_1317]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 3517284054
        else:
            if stor9[address(arg1)][address(msg.sender)]:
                if not arg2:
                    revert with 3931454260
                approved[arg3] = 0
                emit Approval(arg1, 0, arg3);
                balanceOf[address(arg1)].field_0 = uint64(balanceOf[address(arg1)].field_0 - 1)
                balanceOf[arg2].field_0 = uint64(balanceOf[arg2].field_0 + 1)
                mem[32] = 6
                stor6[arg3].field_0 = arg2
                stor6[arg3].field_160 = uint64(block.timestamp)
                mem[0] = arg3 + 1
                if stor6[arg3 + 1].field_0:
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164 len 0] = None
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                revert with 3517284054
                            if not -return_data.size:
                                revert with 3517284054
                            revert with ext_call.return_data[0 len return_data.size]
                        _1319 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1319] == Mask(32, 224, mem[_1319])
                        if Mask(32, 224, mem[_1319]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 3517284054
                else:
                    if arg3 + 1 == stor2:
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = arg3
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164 len 0] = None
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    revert with 3517284054
                                if not -return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1321 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1321] == Mask(32, 224, mem[_1321])
                            if Mask(32, 224, mem[_1321]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
                    else:
                        stor6[arg3 + 1].field_0 = arg1
                        stor6[arg3 + 1].field_160 = mem[376 len 8]
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = arg3
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164 len 0] = None
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    revert with 3517284054
                                if not -return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1323 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1323] == Mask(32, 224, mem[_1323])
                            if Mask(32, 224, mem[_1323]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
            else:
                if arg3 >= stor2:
                    revert with 3477536996
                if stor6[arg3].field_224:
                    revert with 3477536996
                if approved[arg3] != msg.sender:
                    revert with 1506318014
                if not arg2:
                    revert with 3931454260
                approved[arg3] = 0
                emit Approval(arg1, 0, arg3);
                balanceOf[address(arg1)].field_0 = uint64(balanceOf[address(arg1)].field_0 - 1)
                balanceOf[arg2].field_0 = uint64(balanceOf[arg2].field_0 + 1)
                mem[32] = 6
                stor6[arg3].field_0 = arg2
                stor6[arg3].field_160 = uint64(block.timestamp)
                mem[0] = arg3 + 1
                if stor6[arg3 + 1].field_0:
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164 len 0] = None
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                revert with 3517284054
                            if not -return_data.size:
                                revert with 3517284054
                            revert with ext_call.return_data[0 len return_data.size]
                        _1325 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1325] == Mask(32, 224, mem[_1325])
                        if Mask(32, 224, mem[_1325]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 3517284054
                else:
                    if arg3 + 1 == stor2:
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = arg3
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164 len 0] = None
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    revert with 3517284054
                                if not -return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1327 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1327] == Mask(32, 224, mem[_1327])
                            if Mask(32, 224, mem[_1327]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
                    else:
                        stor6[arg3 + 1].field_0 = arg1
                        stor6[arg3 + 1].field_160 = mem[376 len 8]
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = arg3
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164 len 0] = None
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    revert with 3517284054
                                if not -return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1329 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1329] == Mask(32, 224, mem[_1329])
                            if Mask(32, 224, mem[_1329]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(ceil32(arg4.length)) + 97] = 0
    mem[ceil32(ceil32(arg4.length)) + 129] = 0
    mem[ceil32(ceil32(arg4.length)) + 161] = 0
    if arg3 >= stor2:
        revert with 3744308034
    mem[ceil32(ceil32(arg4.length)) + 193] = stor6[arg3].field_0
    mem[ceil32(ceil32(arg4.length)) + 225] = stor6[arg3].field_160
    mem[ceil32(ceil32(arg4.length)) + 257] = bool(stor6[arg3].field_224)
    if stor6[arg3].field_224:
        revert with 3744308034
    if stor6[arg3].field_0:
        if stor6[arg3].field_0 != arg1:
            revert with 2702475520
        if arg1 != msg.sender:
            if not stor9[address(arg1)][address(msg.sender)]:
                if arg3 >= stor2:
                    revert with 3477536996
                if stor6[arg3].field_224:
                    revert with 3477536996
                if approved[arg3] != msg.sender:
                    revert with 1506318014
        if not arg2:
            revert with 3931454260
        approved[arg3] = 0
        emit Approval(arg1, 0, arg3);
        balanceOf[address(arg1)].field_0 = uint64(balanceOf[address(arg1)].field_0 - 1)
        balanceOf[arg2].field_0 = uint64(balanceOf[arg2].field_0 + 1)
        stor6[arg3].field_0 = arg2
        stor6[arg3].field_160 = uint64(block.timestamp)
        if not stor6[arg3 + 1].field_0:
            if arg3 + 1 != stor2:
                stor6[arg3 + 1].field_0 = arg1
                stor6[arg3 + 1].field_160 = stor6[arg3].field_160
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2):
            call arg2.0x150b7a02 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
            if not ext_call.success:
                if not return_data.size:
                    if not -arg4.length:
                        revert with 3517284054
                    revert with arg4[all]
                if not -return_data.size:
                    revert with 3517284054
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 3517284054
    else:
        mem[64] = ceil32(ceil32(arg4.length)) + 385
        mem[ceil32(ceil32(arg4.length)) + 289] = stor6[arg3 - 1].field_0
        mem[ceil32(ceil32(arg4.length)) + 321] = stor6[arg3 - 1].field_160
        mem[ceil32(ceil32(arg4.length)) + 353] = bool(stor6[arg3 - 1].field_224)
        s = ceil32(ceil32(arg4.length)) + 193
        s = arg3
        while not stor6[arg3 - 1].field_0:
            mem[0] = s - 2
            mem[32] = 6
            mem[64] = mem[64] + 96
            mem[ceil32(ceil32(arg4.length)) + 289] = stor6[s - 2].field_0
            mem[ceil32(ceil32(arg4.length)) + 321] = stor6[arg3 - 1].field_160
            mem[ceil32(ceil32(arg4.length)) + 353] = bool(stor6[arg3 - 1].field_224)
            s = ceil32(ceil32(arg4.length)) + 289
            s = s - 1
            continue 
        if mem[ceil32(ceil32(arg4.length)) + 301 len 20] != arg1:
            revert with 2702475520
        if arg1 == msg.sender:
            if not arg2:
                revert with 3931454260
            approved[arg3] = 0
            emit Approval(arg1, 0, arg3);
            balanceOf[address(arg1)].field_0 = uint64(balanceOf[address(arg1)].field_0 - 1)
            balanceOf[arg2].field_0 = uint64(balanceOf[arg2].field_0 + 1)
            mem[32] = 6
            stor6[arg3].field_0 = arg2
            stor6[arg3].field_160 = uint64(block.timestamp)
            mem[0] = arg3 + 1
            if stor6[arg3 + 1].field_0:
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2):
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg1
                    mem[mem[64] + 68] = arg3
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = arg4.length
                    mem[mem[64] + 164 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 0) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                    if ceil32(arg4.length) <= arg4.length:
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not -arg4.length:
                                    revert with 3517284054
                                revert with arg4[all]
                            if not -return_data.size:
                                revert with 3517284054
                            revert with ext_call.return_data[0 len return_data.size]
                        _1313 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1313] == Mask(32, 224, mem[_1313])
                        if Mask(32, 224, mem[_1313]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 3517284054
                    else:
                        mem[arg4.length + mem[64] + 164] = 0
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not -arg4.length:
                                    revert with 3517284054
                                revert with arg4[all]
                            if not -return_data.size:
                                revert with 3517284054
                            revert with ext_call.return_data[0 len return_data.size]
                        _1314 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1314] == Mask(32, 224, mem[_1314])
                        if Mask(32, 224, mem[_1314]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 3517284054
            else:
                if arg3 + 1 == stor2:
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = arg4.length
                        mem[mem[64] + 164 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 0) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                        if ceil32(arg4.length) <= arg4.length:
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not -arg4.length:
                                        revert with 3517284054
                                    revert with arg4[all]
                                if not -return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1315 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1315] == Mask(32, 224, mem[_1315])
                            if Mask(32, 224, mem[_1315]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
                        else:
                            mem[arg4.length + mem[64] + 164] = 0
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not -arg4.length:
                                        revert with 3517284054
                                    revert with arg4[all]
                                if not -return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1316 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1316] == Mask(32, 224, mem[_1316])
                            if Mask(32, 224, mem[_1316]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
                else:
                    stor6[arg3 + 1].field_0 = arg1
                    stor6[arg3 + 1].field_160 = mem[ceil32(ceil32(arg4.length)) + 345 len 8]
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = arg4.length
                        mem[mem[64] + 164 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 0) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                        if ceil32(arg4.length) <= arg4.length:
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not -arg4.length:
                                        revert with 3517284054
                                    revert with arg4[all]
                                if not -return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1317 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1317] == Mask(32, 224, mem[_1317])
                            if Mask(32, 224, mem[_1317]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
                        else:
                            mem[arg4.length + mem[64] + 164] = 0
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not -arg4.length:
                                        revert with 3517284054
                                    revert with arg4[all]
                                if not -return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1318 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1318] == Mask(32, 224, mem[_1318])
                            if Mask(32, 224, mem[_1318]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
        else:
            if stor9[address(arg1)][address(msg.sender)]:
                if not arg2:
                    revert with 3931454260
                approved[arg3] = 0
                emit Approval(arg1, 0, arg3);
                balanceOf[address(arg1)].field_0 = uint64(balanceOf[address(arg1)].field_0 - 1)
                balanceOf[arg2].field_0 = uint64(balanceOf[arg2].field_0 + 1)
                mem[32] = 6
                stor6[arg3].field_0 = arg2
                stor6[arg3].field_160 = uint64(block.timestamp)
                mem[0] = arg3 + 1
                if stor6[arg3 + 1].field_0:
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = arg4.length
                        mem[mem[64] + 164 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 0) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                        if ceil32(arg4.length) <= arg4.length:
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not -arg4.length:
                                        revert with 3517284054
                                    revert with arg4[all]
                                if not -return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1319 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1319] == Mask(32, 224, mem[_1319])
                            if Mask(32, 224, mem[_1319]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
                        else:
                            mem[arg4.length + mem[64] + 164] = 0
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not -arg4.length:
                                        revert with 3517284054
                                    revert with arg4[all]
                                if not -return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1320 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1320] == Mask(32, 224, mem[_1320])
                            if Mask(32, 224, mem[_1320]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
                else:
                    if arg3 + 1 == stor2:
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = arg3
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = arg4.length
                            mem[mem[64] + 164 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 0) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                            if ceil32(arg4.length) <= arg4.length:
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not -arg4.length:
                                            revert with 3517284054
                                        revert with arg4[all]
                                    if not -return_data.size:
                                        revert with 3517284054
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1321 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1321] == Mask(32, 224, mem[_1321])
                                if Mask(32, 224, mem[_1321]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 3517284054
                            else:
                                mem[arg4.length + mem[64] + 164] = 0
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not -arg4.length:
                                            revert with 3517284054
                                        revert with arg4[all]
                                    if not -return_data.size:
                                        revert with 3517284054
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1322 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1322] == Mask(32, 224, mem[_1322])
                                if Mask(32, 224, mem[_1322]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 3517284054
                    else:
                        stor6[arg3 + 1].field_0 = arg1
                        stor6[arg3 + 1].field_160 = mem[ceil32(ceil32(arg4.length)) + 345 len 8]
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = arg3
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = arg4.length
                            mem[mem[64] + 164 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 0) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                            if ceil32(arg4.length) <= arg4.length:
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not -arg4.length:
                                            revert with 3517284054
                                        revert with arg4[all]
                                    if not -return_data.size:
                                        revert with 3517284054
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1323 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1323] == Mask(32, 224, mem[_1323])
                                if Mask(32, 224, mem[_1323]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 3517284054
                            else:
                                mem[arg4.length + mem[64] + 164] = 0
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not -arg4.length:
                                            revert with 3517284054
                                        revert with arg4[all]
                                    if not -return_data.size:
                                        revert with 3517284054
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1324 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1324] == Mask(32, 224, mem[_1324])
                                if Mask(32, 224, mem[_1324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 3517284054
            else:
                if arg3 >= stor2:
                    revert with 3477536996
                if stor6[arg3].field_224:
                    revert with 3477536996
                if approved[arg3] != msg.sender:
                    revert with 1506318014
                if not arg2:
                    revert with 3931454260
                approved[arg3] = 0
                emit Approval(arg1, 0, arg3);
                balanceOf[address(arg1)].field_0 = uint64(balanceOf[address(arg1)].field_0 - 1)
                balanceOf[arg2].field_0 = uint64(balanceOf[arg2].field_0 + 1)
                mem[32] = 6
                stor6[arg3].field_0 = arg2
                stor6[arg3].field_160 = uint64(block.timestamp)
                mem[0] = arg3 + 1
                if stor6[arg3 + 1].field_0:
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = arg4.length
                        mem[mem[64] + 164 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 0) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                        if ceil32(arg4.length) <= arg4.length:
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not -arg4.length:
                                        revert with 3517284054
                                    revert with arg4[all]
                                if not -return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1325 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1325] == Mask(32, 224, mem[_1325])
                            if Mask(32, 224, mem[_1325]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
                        else:
                            mem[arg4.length + mem[64] + 164] = 0
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not -arg4.length:
                                        revert with 3517284054
                                    revert with arg4[all]
                                if not -return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1326 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1326] == Mask(32, 224, mem[_1326])
                            if Mask(32, 224, mem[_1326]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
                else:
                    if arg3 + 1 == stor2:
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = arg3
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = arg4.length
                            mem[mem[64] + 164 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 0) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                            if ceil32(arg4.length) <= arg4.length:
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not -arg4.length:
                                            revert with 3517284054
                                        revert with arg4[all]
                                    if not -return_data.size:
                                        revert with 3517284054
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1327 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1327] == Mask(32, 224, mem[_1327])
                                if Mask(32, 224, mem[_1327]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 3517284054
                            else:
                                mem[arg4.length + mem[64] + 164] = 0
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not -arg4.length:
                                            revert with 3517284054
                                        revert with arg4[all]
                                    if not -return_data.size:
                                        revert with 3517284054
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1328 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1328] == Mask(32, 224, mem[_1328])
                                if Mask(32, 224, mem[_1328]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 3517284054
                    else:
                        stor6[arg3 + 1].field_0 = arg1
                        stor6[arg3 + 1].field_160 = mem[ceil32(ceil32(arg4.length)) + 345 len 8]
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = arg3
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = arg4.length
                            mem[mem[64] + 164 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 0) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                            if ceil32(arg4.length) <= arg4.length:
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not -arg4.length:
                                            revert with 3517284054
                                        revert with arg4[all]
                                    if not -return_data.size:
                                        revert with 3517284054
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1329 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1329] == Mask(32, 224, mem[_1329])
                                if Mask(32, 224, mem[_1329]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 3517284054
                            else:
                                mem[arg4.length + mem[64] + 164] = 0
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not -arg4.length:
                                            revert with 3517284054
                                        revert with arg4[all]
                                    if not -return_data.size:
                                        revert with 3517284054
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1330 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1330] == Mask(32, 224, mem[_1330])
                                if Mask(32, 224, mem[_1330]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 3517284054
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor2:
        revert with 0, 'Token not found'
    mem[0] = arg1
    mem[32] = 6
    if stor6[arg1].field_224:
        revert with 0, 'Token not found'
    if not uint8(stor12.field_0):
        return 32, 53, 
               0xfe697066733a2f2f516d4e744d75325635364b666231317645676165574844594a3773563243734670754b746e6931425462735146, mem[181 len 11] >> 168,
               0
    if bool(stor13.length):
        if not bool(stor13.length) - (uint255(stor13.length) * 0.5 < 32):
            revert with 0, 34
        if uint255(stor13.length) * 0.5 <= 0:
            return 32, 53, 
                   0xfe697066733a2f2f516d4e744d75325635364b666231317645676165574844594a3773563243734670754b746e6931425462735146, mem[181 len 11] >> 168,
                   0
        if not -arg1:
            mem[96] = 1
            mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
            if bool(stor13.length):
                if not bool(stor13.length) - (uint255(stor13.length) * 0.5 < 32):
                    revert with 0, 34
                if not bool(stor13.length):
                    mem[192] = Mask(248, 8, stor13.length)
                else:
                    if bool(stor13.length) != 1:
                        mem[64] = 6
                        _442 = mem[160]
                        mem[38] = mem[160]
                        mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        if ceil32(_442) > _442:
                            mem[_442 + 70] = 0
                        return memory
                          from mem[64]
                           len ceil32(_442) + -mem[64] + 70
                    idx = 0
                    s = 0
                    while idx < uint255(stor13.length) * 0.5:
                        mem[idx + 192] = stor13[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[(uint255(stor13.length) * 0.5) + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[(uint255(stor13.length) * 0.5) + 193] = '.json'
                mem[(uint255(stor13.length) * 0.5) + 198] = 32
                mem[(uint255(stor13.length) * 0.5) + 230] = mem[160]
                mem[(uint255(stor13.length) * 0.5) + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(mem[160]) > mem[160]:
                    mem[mem[160] + (uint255(stor13.length) * 0.5) + 262] = 0
                return Array(len=mem[160], data=mem[(uint255(stor13.length) * 0.5) + 262 len ceil32(mem[160])])
            if not bool(stor13.length) - (stor13.length.field_1 < 32):
                revert with 0, 34
            if not bool(stor13.length):
                mem[192] = Mask(248, 8, stor13.length)
            else:
                if bool(stor13.length) != 1:
                    mem[64] = 6
                    _446 = mem[160]
                    mem[38] = mem[160]
                    mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_446) > _446:
                        mem[_446 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_446) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + 192] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor13.length.field_1 + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[stor13.length.field_1 + 193] = '.json'
            mem[stor13.length.field_1 + 198] = 32
            mem[stor13.length.field_1 + 230] = mem[160]
            mem[stor13.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + stor13.length.field_1 + 262] = 0
            return Array(len=mem[160], data=mem[stor13.length.field_1 + 262 len ceil32(mem[160])])
        s = 0
        idx = arg1
        while idx:
            if not s + 1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[96] = s
        mem[64] = ceil32(s) + 128
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[96]:
                    revert with 0, 50
                mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _919 = mem[64]
            if bool(stor13.length):
                if not bool(stor13.length) - (uint255(stor13.length) * 0.5 < 32):
                    revert with 0, 34
                if not bool(stor13.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor13.length)
                    _975 = mem[96]
                    mem[mem[64] + (uint255(stor13.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[mem[96] + mem[64] + (uint255(stor13.length) * 0.5) + 32] = '.json'
                    if ceil32(mem[96]) <= mem[96]:
                        _1399 = mem[64]
                        mem[64] = mem[96] + mem[64] + (uint255(stor13.length) * 0.5) + 37
                        mem[mem[96] + _919 + (uint255(stor13.length) * 0.5) + 37] = 32
                        _1471 = mem[_1399]
                        mem[_975 + _919 + (uint255(stor13.length) * 0.5) + 69] = mem[_1399]
                        mem[_975 + _919 + (uint255(stor13.length) * 0.5) + 101 len ceil32(_1471)] = mem[_1399 + 32 len ceil32(_1471)]
                        if ceil32(_1471) > _1471:
                            mem[_1471 + _975 + _919 + (uint255(stor13.length) * 0.5) + 101] = 0
                        return 32, mem[_975 + _919 + (uint255(stor13.length) * 0.5) + 69 len ceil32(_1471) + 32]
                    _1400 = mem[64]
                    mem[64] = mem[96] + mem[64] + (uint255(stor13.length) * 0.5) + 37
                    mem[mem[96] + _919 + (uint255(stor13.length) * 0.5) + 37] = 32
                    _1472 = mem[_1400]
                    mem[_975 + _919 + (uint255(stor13.length) * 0.5) + 69] = mem[_1400]
                    mem[_975 + _919 + (uint255(stor13.length) * 0.5) + 101 len ceil32(_1472)] = mem[_1400 + 32 len ceil32(_1472)]
                    if ceil32(_1472) > _1472:
                        mem[_1472 + _975 + _919 + (uint255(stor13.length) * 0.5) + 101] = 0
                    return 32, mem[_975 + _919 + (uint255(stor13.length) * 0.5) + 69 len ceil32(_1472) + 32]
                if bool(stor13.length) != 1:
                    _983 = mem[96]
                    mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_983] = '.json'
                    if ceil32(_983) <= _983:
                        _1402 = mem[64]
                        mem[64] = _983 + 5
                        mem[_983 + 5] = 32
                        _1473 = mem[_1402]
                        mem[_983 + 37] = mem[_1402]
                        mem[_983 + 69 len ceil32(_1473)] = mem[_1402 + 32 len ceil32(_1473)]
                        if ceil32(_1473) > _1473:
                            mem[_1473 + _983 + 69] = 0
                        return 32, mem[_983 + 37 len ceil32(_1473) + 32]
                    _1403 = mem[64]
                    mem[64] = _983 + 5
                    mem[_983 + 5] = 32
                    _1474 = mem[_1403]
                    mem[_983 + 37] = mem[_1403]
                    mem[_983 + 69 len ceil32(_1474)] = mem[_1403 + 32 len ceil32(_1474)]
                    if ceil32(_1474) > _1474:
                        mem[_1474 + _983 + 69] = 0
                    return 32, mem[_983 + 37 len ceil32(_1474) + 32]
                mem[0] = 13
                idx = 0
                s = 0
                while idx < uint255(stor13.length) * 0.5:
                    mem[idx + _919 + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _1375 = mem[96]
                mem[_919 + (uint255(stor13.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1375 + _919 + (uint255(stor13.length) * 0.5) + 32] = '.json'
                if ceil32(_1375) <= _1375:
                    _1799 = mem[64]
                    mem[64] = _1375 + _919 + (uint255(stor13.length) * 0.5) + 37
                    mem[_1375 + _919 + (uint255(stor13.length) * 0.5) + 37] = 32
                    _1831 = mem[_1799]
                    mem[_1375 + _919 + (uint255(stor13.length) * 0.5) + 69] = mem[_1799]
                    mem[_1375 + _919 + (uint255(stor13.length) * 0.5) + 101 len ceil32(_1831)] = mem[_1799 + 32 len ceil32(_1831)]
                    if ceil32(_1831) > _1831:
                        mem[_1831 + _1375 + _919 + (uint255(stor13.length) * 0.5) + 101] = 0
                    return 32, mem[_1375 + _919 + (uint255(stor13.length) * 0.5) + 69 len ceil32(_1831) + 32]
                _1800 = mem[64]
                mem[64] = _1375 + _919 + (uint255(stor13.length) * 0.5) + 37
                mem[_1375 + _919 + (uint255(stor13.length) * 0.5) + 37] = 32
                _1832 = mem[_1800]
                mem[_1375 + _919 + (uint255(stor13.length) * 0.5) + 69] = mem[_1800]
                mem[_1375 + _919 + (uint255(stor13.length) * 0.5) + 101 len ceil32(_1832)] = mem[_1800 + 32 len ceil32(_1832)]
                if ceil32(_1832) > _1832:
                    mem[_1832 + _1375 + _919 + (uint255(stor13.length) * 0.5) + 101] = 0
                return 32, mem[_1375 + _919 + (uint255(stor13.length) * 0.5) + 69 len ceil32(_1832) + 32]
            if not bool(stor13.length) - (stor13.length.field_1 < 32):
                revert with 0, 34
            if not bool(stor13.length):
                mem[mem[64] + 32] = Mask(248, 8, stor13.length)
                _984 = mem[96]
                mem[mem[64] + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[96] + mem[64] + stor13.length.field_1 + 32] = '.json'
                if ceil32(mem[96]) <= mem[96]:
                    _1404 = mem[64]
                    mem[64] = mem[96] + mem[64] + stor13.length.field_1 + 37
                    mem[mem[96] + _919 + stor13.length.field_1 + 37] = 32
                    _1475 = mem[_1404]
                    mem[_984 + _919 + stor13.length.field_1 + 69] = mem[_1404]
                    mem[_984 + _919 + stor13.length.field_1 + 101 len ceil32(_1475)] = mem[_1404 + 32 len ceil32(_1475)]
                    if ceil32(_1475) > _1475:
                        mem[_1475 + _984 + _919 + stor13.length.field_1 + 101] = 0
                    return 32, mem[_984 + _919 + stor13.length.field_1 + 69 len ceil32(_1475) + 32]
                _1405 = mem[64]
                mem[64] = mem[96] + mem[64] + stor13.length.field_1 + 37
                mem[mem[96] + _919 + stor13.length.field_1 + 37] = 32
                _1476 = mem[_1405]
                mem[_984 + _919 + stor13.length.field_1 + 69] = mem[_1405]
                mem[_984 + _919 + stor13.length.field_1 + 101 len ceil32(_1476)] = mem[_1405 + 32 len ceil32(_1476)]
                if ceil32(_1476) > _1476:
                    mem[_1476 + _984 + _919 + stor13.length.field_1 + 101] = 0
                return 32, mem[_984 + _919 + stor13.length.field_1 + 69 len ceil32(_1476) + 32]
            if bool(stor13.length) != 1:
                _999 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_999] = '.json'
                if ceil32(_999) <= _999:
                    _1407 = mem[64]
                    mem[64] = _999 + 5
                    mem[_999 + 5] = 32
                    _1477 = mem[_1407]
                    mem[_999 + 37] = mem[_1407]
                    mem[_999 + 69 len ceil32(_1477)] = mem[_1407 + 32 len ceil32(_1477)]
                    if ceil32(_1477) > _1477:
                        mem[_1477 + _999 + 69] = 0
                    return 32, mem[_999 + 37 len ceil32(_1477) + 32]
                _1408 = mem[64]
                mem[64] = _999 + 5
                mem[_999 + 5] = 32
                _1478 = mem[_1408]
                mem[_999 + 37] = mem[_1408]
                mem[_999 + 69 len ceil32(_1478)] = mem[_1408 + 32 len ceil32(_1478)]
                if ceil32(_1478) > _1478:
                    mem[_1478 + _999 + 69] = 0
                return 32, mem[_999 + 37 len ceil32(_1478) + 32]
            mem[0] = 13
            idx = 0
            s = 0
            while idx < stor13.length.field_1:
                mem[idx + _919 + 32] = stor13[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1376 = mem[96]
            mem[_919 + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1376 + _919 + stor13.length.field_1 + 32] = '.json'
            if ceil32(_1376) <= _1376:
                _1801 = mem[64]
                mem[64] = _1376 + _919 + stor13.length.field_1 + 37
                mem[_1376 + _919 + stor13.length.field_1 + 37] = 32
                _1833 = mem[_1801]
                mem[_1376 + _919 + stor13.length.field_1 + 69] = mem[_1801]
                mem[_1376 + _919 + stor13.length.field_1 + 101 len ceil32(_1833)] = mem[_1801 + 32 len ceil32(_1833)]
                if ceil32(_1833) > _1833:
                    mem[_1833 + _1376 + _919 + stor13.length.field_1 + 101] = 0
                return 32, mem[_1376 + _919 + stor13.length.field_1 + 69 len ceil32(_1833) + 32]
            _1802 = mem[64]
            mem[64] = _1376 + _919 + stor13.length.field_1 + 37
            mem[_1376 + _919 + stor13.length.field_1 + 37] = 32
            _1834 = mem[_1802]
            mem[_1376 + _919 + stor13.length.field_1 + 69] = mem[_1802]
            mem[_1376 + _919 + stor13.length.field_1 + 101 len ceil32(_1834)] = mem[_1802 + 32 len ceil32(_1834)]
            if ceil32(_1834) > _1834:
                mem[_1834 + _1376 + _919 + stor13.length.field_1 + 101] = 0
            return 32, mem[_1376 + _919 + stor13.length.field_1 + 69 len ceil32(_1834) + 32]
        mem[128 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[96]:
                revert with 0, 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _920 = mem[64]
        if bool(stor13.length):
            if not bool(stor13.length) - (uint255(stor13.length) * 0.5 < 32):
                revert with 0, 34
            if not bool(stor13.length):
                mem[mem[64] + 32] = Mask(248, 8, stor13.length)
                _977 = mem[96]
                mem[mem[64] + (uint255(stor13.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[96] + mem[64] + (uint255(stor13.length) * 0.5) + 32] = '.json'
                if ceil32(mem[96]) <= mem[96]:
                    _1409 = mem[64]
                    mem[64] = mem[96] + mem[64] + (uint255(stor13.length) * 0.5) + 37
                    mem[mem[96] + _920 + (uint255(stor13.length) * 0.5) + 37] = 32
                    _1479 = mem[_1409]
                    mem[_977 + _920 + (uint255(stor13.length) * 0.5) + 69] = mem[_1409]
                    mem[_977 + _920 + (uint255(stor13.length) * 0.5) + 101 len ceil32(_1479)] = mem[_1409 + 32 len ceil32(_1479)]
                    if ceil32(_1479) > _1479:
                        mem[_1479 + _977 + _920 + (uint255(stor13.length) * 0.5) + 101] = 0
                    return 32, mem[_977 + _920 + (uint255(stor13.length) * 0.5) + 69 len ceil32(_1479) + 32]
                _1410 = mem[64]
                mem[64] = mem[96] + mem[64] + (uint255(stor13.length) * 0.5) + 37
                mem[mem[96] + _920 + (uint255(stor13.length) * 0.5) + 37] = 32
                _1480 = mem[_1410]
                mem[_977 + _920 + (uint255(stor13.length) * 0.5) + 69] = mem[_1410]
                mem[_977 + _920 + (uint255(stor13.length) * 0.5) + 101 len ceil32(_1480)] = mem[_1410 + 32 len ceil32(_1480)]
                if ceil32(_1480) > _1480:
                    mem[_1480 + _977 + _920 + (uint255(stor13.length) * 0.5) + 101] = 0
                return 32, mem[_977 + _920 + (uint255(stor13.length) * 0.5) + 69 len ceil32(_1480) + 32]
            if bool(stor13.length) != 1:
                _985 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_985] = '.json'
                if ceil32(_985) <= _985:
                    _1412 = mem[64]
                    mem[64] = _985 + 5
                    mem[_985 + 5] = 32
                    _1481 = mem[_1412]
                    mem[_985 + 37] = mem[_1412]
                    mem[_985 + 69 len ceil32(_1481)] = mem[_1412 + 32 len ceil32(_1481)]
                    if ceil32(_1481) > _1481:
                        mem[_1481 + _985 + 69] = 0
                    return 32, mem[_985 + 37 len ceil32(_1481) + 32]
                _1413 = mem[64]
                mem[64] = _985 + 5
                mem[_985 + 5] = 32
                _1482 = mem[_1413]
                mem[_985 + 37] = mem[_1413]
                mem[_985 + 69 len ceil32(_1482)] = mem[_1413 + 32 len ceil32(_1482)]
                if ceil32(_1482) > _1482:
                    mem[_1482 + _985 + 69] = 0
                return 32, mem[_985 + 37 len ceil32(_1482) + 32]
            mem[0] = 13
            idx = 0
            s = 0
            while idx < uint255(stor13.length) * 0.5:
                mem[idx + _920 + 32] = stor13[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1377 = mem[96]
            mem[_920 + (uint255(stor13.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1377 + _920 + (uint255(stor13.length) * 0.5) + 32] = '.json'
            if ceil32(_1377) <= _1377:
                _1803 = mem[64]
                mem[64] = _1377 + _920 + (uint255(stor13.length) * 0.5) + 37
                mem[_1377 + _920 + (uint255(stor13.length) * 0.5) + 37] = 32
                _1835 = mem[_1803]
                mem[_1377 + _920 + (uint255(stor13.length) * 0.5) + 69] = mem[_1803]
                mem[_1377 + _920 + (uint255(stor13.length) * 0.5) + 101 len ceil32(_1835)] = mem[_1803 + 32 len ceil32(_1835)]
                if ceil32(_1835) > _1835:
                    mem[_1835 + _1377 + _920 + (uint255(stor13.length) * 0.5) + 101] = 0
                return 32, mem[_1377 + _920 + (uint255(stor13.length) * 0.5) + 69 len ceil32(_1835) + 32]
            _1804 = mem[64]
            mem[64] = _1377 + _920 + (uint255(stor13.length) * 0.5) + 37
            mem[_1377 + _920 + (uint255(stor13.length) * 0.5) + 37] = 32
            _1836 = mem[_1804]
            mem[_1377 + _920 + (uint255(stor13.length) * 0.5) + 69] = mem[_1804]
            mem[_1377 + _920 + (uint255(stor13.length) * 0.5) + 101 len ceil32(_1836)] = mem[_1804 + 32 len ceil32(_1836)]
            if ceil32(_1836) > _1836:
                mem[_1836 + _1377 + _920 + (uint255(stor13.length) * 0.5) + 101] = 0
            return 32, mem[_1377 + _920 + (uint255(stor13.length) * 0.5) + 69 len ceil32(_1836) + 32]
        if not bool(stor13.length) - (stor13.length.field_1 < 32):
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            _986 = mem[96]
            mem[mem[64] + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[96] + mem[64] + stor13.length.field_1 + 32] = '.json'
            if ceil32(mem[96]) <= mem[96]:
                _1414 = mem[64]
                mem[64] = mem[96] + mem[64] + stor13.length.field_1 + 37
                mem[mem[96] + _920 + stor13.length.field_1 + 37] = 32
                _1483 = mem[_1414]
                mem[_986 + _920 + stor13.length.field_1 + 69] = mem[_1414]
                mem[_986 + _920 + stor13.length.field_1 + 101 len ceil32(_1483)] = mem[_1414 + 32 len ceil32(_1483)]
                if ceil32(_1483) > _1483:
                    mem[_1483 + _986 + _920 + stor13.length.field_1 + 101] = 0
                return 32, mem[_986 + _920 + stor13.length.field_1 + 69 len ceil32(_1483) + 32]
            _1415 = mem[64]
            mem[64] = mem[96] + mem[64] + stor13.length.field_1 + 37
            mem[mem[96] + _920 + stor13.length.field_1 + 37] = 32
            _1484 = mem[_1415]
            mem[_986 + _920 + stor13.length.field_1 + 69] = mem[_1415]
            mem[_986 + _920 + stor13.length.field_1 + 101 len ceil32(_1484)] = mem[_1415 + 32 len ceil32(_1484)]
            if ceil32(_1484) > _1484:
                mem[_1484 + _986 + _920 + stor13.length.field_1 + 101] = 0
            return 32, mem[_986 + _920 + stor13.length.field_1 + 69 len ceil32(_1484) + 32]
        if bool(stor13.length) != 1:
            _1001 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1001] = '.json'
            if ceil32(_1001) <= _1001:
                _1417 = mem[64]
                mem[64] = _1001 + 5
                mem[_1001 + 5] = 32
                _1485 = mem[_1417]
                mem[_1001 + 37] = mem[_1417]
                mem[_1001 + 69 len ceil32(_1485)] = mem[_1417 + 32 len ceil32(_1485)]
                if ceil32(_1485) > _1485:
                    mem[_1485 + _1001 + 69] = 0
                return 32, mem[_1001 + 37 len ceil32(_1485) + 32]
            _1418 = mem[64]
            mem[64] = _1001 + 5
            mem[_1001 + 5] = 32
            _1486 = mem[_1418]
            mem[_1001 + 37] = mem[_1418]
            mem[_1001 + 69 len ceil32(_1486)] = mem[_1418 + 32 len ceil32(_1486)]
            if ceil32(_1486) > _1486:
                mem[_1486 + _1001 + 69] = 0
            return 32, mem[_1001 + 37 len ceil32(_1486) + 32]
        mem[0] = 13
        idx = 0
        s = 0
        while idx < stor13.length.field_1:
            mem[idx + _920 + 32] = stor13[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1378 = mem[96]
        mem[_920 + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_1378 + _920 + stor13.length.field_1 + 32] = '.json'
        if ceil32(_1378) <= _1378:
            _1805 = mem[64]
            mem[64] = _1378 + _920 + stor13.length.field_1 + 37
            mem[_1378 + _920 + stor13.length.field_1 + 37] = 32
            _1837 = mem[_1805]
            mem[_1378 + _920 + stor13.length.field_1 + 69] = mem[_1805]
            mem[_1378 + _920 + stor13.length.field_1 + 101 len ceil32(_1837)] = mem[_1805 + 32 len ceil32(_1837)]
            if ceil32(_1837) > _1837:
                mem[_1837 + _1378 + _920 + stor13.length.field_1 + 101] = 0
            return 32, mem[_1378 + _920 + stor13.length.field_1 + 69 len ceil32(_1837) + 32]
        _1806 = mem[64]
        mem[64] = _1378 + _920 + stor13.length.field_1 + 37
        mem[_1378 + _920 + stor13.length.field_1 + 37] = 32
        _1838 = mem[_1806]
        mem[_1378 + _920 + stor13.length.field_1 + 69] = mem[_1806]
        mem[_1378 + _920 + stor13.length.field_1 + 101 len ceil32(_1838)] = mem[_1806 + 32 len ceil32(_1838)]
        if ceil32(_1838) > _1838:
            mem[_1838 + _1378 + _920 + stor13.length.field_1 + 101] = 0
        return 32, mem[_1378 + _920 + stor13.length.field_1 + 69 len ceil32(_1838) + 32]
    if not bool(stor13.length) - (stor13.length.field_1 < 32):
        revert with 0, 34
    if stor13.length.field_1 <= 0:
        return 32, 53, 
               0xfe697066733a2f2f516d4e744d75325635364b666231317645676165574844594a3773563243734670754b746e6931425462735146, mem[181 len 11] >> 168,
               0
    if not -arg1:
        mem[96] = 1
        mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
        if bool(stor13.length):
            if not bool(stor13.length) - (uint255(stor13.length) * 0.5 < 32):
                revert with 0, 34
            if not bool(stor13.length):
                mem[192] = Mask(248, 8, stor13.length)
            else:
                if bool(stor13.length) != 1:
                    mem[64] = 6
                    _450 = mem[160]
                    mem[38] = mem[160]
                    mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_450) > _450:
                        mem[_450 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_450) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < uint255(stor13.length) * 0.5:
                    mem[idx + 192] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[(uint255(stor13.length) * 0.5) + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[(uint255(stor13.length) * 0.5) + 193] = '.json'
            mem[(uint255(stor13.length) * 0.5) + 198] = 32
            mem[(uint255(stor13.length) * 0.5) + 230] = mem[160]
            mem[(uint255(stor13.length) * 0.5) + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + (uint255(stor13.length) * 0.5) + 262] = 0
            return Array(len=mem[160], data=mem[(uint255(stor13.length) * 0.5) + 262 len ceil32(mem[160])])
        if not bool(stor13.length) - (stor13.length.field_1 < 32):
            revert with 0, 34
        if not bool(stor13.length):
            mem[192] = Mask(248, 8, stor13.length)
        else:
            if bool(stor13.length) != 1:
                mem[64] = 6
                _454 = mem[160]
                mem[38] = mem[160]
                mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_454) > _454:
                    mem[_454 + 70] = 0
                return memory
                  from mem[64]
                   len ceil32(_454) + -mem[64] + 70
            idx = 0
            s = 0
            while idx < stor13.length.field_1:
                mem[idx + 192] = stor13[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor13.length.field_1 + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[stor13.length.field_1 + 193] = '.json'
        mem[stor13.length.field_1 + 198] = 32
        mem[stor13.length.field_1 + 230] = mem[160]
        mem[stor13.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[mem[160] + stor13.length.field_1 + 262] = 0
        return Array(len=mem[160], data=mem[stor13.length.field_1 + 262 len ceil32(mem[160])])
    s = 0
    idx = arg1
    while idx:
        if not s + 1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[96]:
                revert with 0, 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _921 = mem[64]
        if bool(stor13.length):
            if not bool(stor13.length) - (uint255(stor13.length) * 0.5 < 32):
                revert with 0, 34
            if not bool(stor13.length):
                mem[mem[64] + 32] = Mask(248, 8, stor13.length)
                _979 = mem[96]
                mem[mem[64] + (uint255(stor13.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[96] + mem[64] + (uint255(stor13.length) * 0.5) + 32] = '.json'
                if ceil32(mem[96]) <= mem[96]:
                    _1419 = mem[64]
                    mem[64] = mem[96] + mem[64] + (uint255(stor13.length) * 0.5) + 37
                    mem[mem[96] + _921 + (uint255(stor13.length) * 0.5) + 37] = 32
                    _1487 = mem[_1419]
                    mem[_979 + _921 + (uint255(stor13.length) * 0.5) + 69] = mem[_1419]
                    mem[_979 + _921 + (uint255(stor13.length) * 0.5) + 101 len ceil32(_1487)] = mem[_1419 + 32 len ceil32(_1487)]
                    if ceil32(_1487) > _1487:
                        mem[_1487 + _979 + _921 + (uint255(stor13.length) * 0.5) + 101] = 0
                    return 32, mem[_979 + _921 + (uint255(stor13.length) * 0.5) + 69 len ceil32(_1487) + 32]
                _1420 = mem[64]
                mem[64] = mem[96] + mem[64] + (uint255(stor13.length) * 0.5) + 37
                mem[mem[96] + _921 + (uint255(stor13.length) * 0.5) + 37] = 32
                _1488 = mem[_1420]
                mem[_979 + _921 + (uint255(stor13.length) * 0.5) + 69] = mem[_1420]
                mem[_979 + _921 + (uint255(stor13.length) * 0.5) + 101 len ceil32(_1488)] = mem[_1420 + 32 len ceil32(_1488)]
                if ceil32(_1488) > _1488:
                    mem[_1488 + _979 + _921 + (uint255(stor13.length) * 0.5) + 101] = 0
                return 32, mem[_979 + _921 + (uint255(stor13.length) * 0.5) + 69 len ceil32(_1488) + 32]
            if bool(stor13.length) != 1:
                _991 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_991] = '.json'
                if ceil32(_991) <= _991:
                    _1422 = mem[64]
                    mem[64] = _991 + 5
                    mem[_991 + 5] = 32
                    _1489 = mem[_1422]
                    mem[_991 + 37] = mem[_1422]
                    mem[_991 + 69 len ceil32(_1489)] = mem[_1422 + 32 len ceil32(_1489)]
                    if ceil32(_1489) > _1489:
                        mem[_1489 + _991 + 69] = 0
                    return 32, mem[_991 + 37 len ceil32(_1489) + 32]
                _1423 = mem[64]
                mem[64] = _991 + 5
                mem[_991 + 5] = 32
                _1490 = mem[_1423]
                mem[_991 + 37] = mem[_1423]
                mem[_991 + 69 len ceil32(_1490)] = mem[_1423 + 32 len ceil32(_1490)]
                if ceil32(_1490) > _1490:
                    mem[_1490 + _991 + 69] = 0
                return 32, mem[_991 + 37 len ceil32(_1490) + 32]
            mem[0] = 13
            idx = 0
            s = 0
            while idx < uint255(stor13.length) * 0.5:
                mem[idx + _921 + 32] = stor13[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1379 = mem[96]
            mem[_921 + (uint255(stor13.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1379 + _921 + (uint255(stor13.length) * 0.5) + 32] = '.json'
            if ceil32(_1379) <= _1379:
                _1807 = mem[64]
                mem[64] = _1379 + _921 + (uint255(stor13.length) * 0.5) + 37
                mem[_1379 + _921 + (uint255(stor13.length) * 0.5) + 37] = 32
                _1839 = mem[_1807]
                mem[_1379 + _921 + (uint255(stor13.length) * 0.5) + 69] = mem[_1807]
                mem[_1379 + _921 + (uint255(stor13.length) * 0.5) + 101 len ceil32(_1839)] = mem[_1807 + 32 len ceil32(_1839)]
                if ceil32(_1839) > _1839:
                    mem[_1839 + _1379 + _921 + (uint255(stor13.length) * 0.5) + 101] = 0
                return 32, mem[_1379 + _921 + (uint255(stor13.length) * 0.5) + 69 len ceil32(_1839) + 32]
            _1808 = mem[64]
            mem[64] = _1379 + _921 + (uint255(stor13.length) * 0.5) + 37
            mem[_1379 + _921 + (uint255(stor13.length) * 0.5) + 37] = 32
            _1840 = mem[_1808]
            mem[_1379 + _921 + (uint255(stor13.length) * 0.5) + 69] = mem[_1808]
            mem[_1379 + _921 + (uint255(stor13.length) * 0.5) + 101 len ceil32(_1840)] = mem[_1808 + 32 len ceil32(_1840)]
            if ceil32(_1840) > _1840:
                mem[_1840 + _1379 + _921 + (uint255(stor13.length) * 0.5) + 101] = 0
            return 32, mem[_1379 + _921 + (uint255(stor13.length) * 0.5) + 69 len ceil32(_1840) + 32]
        if not bool(stor13.length) - (stor13.length.field_1 < 32):
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            _992 = mem[96]
            mem[mem[64] + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[96] + mem[64] + stor13.length.field_1 + 32] = '.json'
            if ceil32(mem[96]) <= mem[96]:
                _1424 = mem[64]
                mem[64] = mem[96] + mem[64] + stor13.length.field_1 + 37
                mem[mem[96] + _921 + stor13.length.field_1 + 37] = 32
                _1491 = mem[_1424]
                mem[_992 + _921 + stor13.length.field_1 + 69] = mem[_1424]
                mem[_992 + _921 + stor13.length.field_1 + 101 len ceil32(_1491)] = mem[_1424 + 32 len ceil32(_1491)]
                if ceil32(_1491) > _1491:
                    mem[_1491 + _992 + _921 + stor13.length.field_1 + 101] = 0
                return 32, mem[_992 + _921 + stor13.length.field_1 + 69 len ceil32(_1491) + 32]
            _1425 = mem[64]
            mem[64] = mem[96] + mem[64] + stor13.length.field_1 + 37
            mem[mem[96] + _921 + stor13.length.field_1 + 37] = 32
            _1492 = mem[_1425]
            mem[_992 + _921 + stor13.length.field_1 + 69] = mem[_1425]
            mem[_992 + _921 + stor13.length.field_1 + 101 len ceil32(_1492)] = mem[_1425 + 32 len ceil32(_1492)]
            if ceil32(_1492) > _1492:
                mem[_1492 + _992 + _921 + stor13.length.field_1 + 101] = 0
            return 32, mem[_992 + _921 + stor13.length.field_1 + 69 len ceil32(_1492) + 32]
        if bool(stor13.length) != 1:
            _1003 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1003] = '.json'
            if ceil32(_1003) <= _1003:
                _1427 = mem[64]
                mem[64] = _1003 + 5
                mem[_1003 + 5] = 32
                _1493 = mem[_1427]
                mem[_1003 + 37] = mem[_1427]
                mem[_1003 + 69 len ceil32(_1493)] = mem[_1427 + 32 len ceil32(_1493)]
                if ceil32(_1493) > _1493:
                    mem[_1493 + _1003 + 69] = 0
                return 32, mem[_1003 + 37 len ceil32(_1493) + 32]
            _1428 = mem[64]
            mem[64] = _1003 + 5
            mem[_1003 + 5] = 32
            _1494 = mem[_1428]
            mem[_1003 + 37] = mem[_1428]
            mem[_1003 + 69 len ceil32(_1494)] = mem[_1428 + 32 len ceil32(_1494)]
            if ceil32(_1494) > _1494:
                mem[_1494 + _1003 + 69] = 0
            return 32, mem[_1003 + 37 len ceil32(_1494) + 32]
        mem[0] = 13
        idx = 0
        s = 0
        while idx < stor13.length.field_1:
            mem[idx + _921 + 32] = stor13[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1380 = mem[96]
        mem[_921 + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_1380 + _921 + stor13.length.field_1 + 32] = '.json'
        if ceil32(_1380) <= _1380:
            _1809 = mem[64]
            mem[64] = _1380 + _921 + stor13.length.field_1 + 37
            mem[_1380 + _921 + stor13.length.field_1 + 37] = 32
            _1841 = mem[_1809]
            mem[_1380 + _921 + stor13.length.field_1 + 69] = mem[_1809]
            mem[_1380 + _921 + stor13.length.field_1 + 101 len ceil32(_1841)] = mem[_1809 + 32 len ceil32(_1841)]
            if ceil32(_1841) > _1841:
                mem[_1841 + _1380 + _921 + stor13.length.field_1 + 101] = 0
            return 32, mem[_1380 + _921 + stor13.length.field_1 + 69 len ceil32(_1841) + 32]
        _1810 = mem[64]
        mem[64] = _1380 + _921 + stor13.length.field_1 + 37
        mem[_1380 + _921 + stor13.length.field_1 + 37] = 32
        _1842 = mem[_1810]
        mem[_1380 + _921 + stor13.length.field_1 + 69] = mem[_1810]
        mem[_1380 + _921 + stor13.length.field_1 + 101 len ceil32(_1842)] = mem[_1810 + 32 len ceil32(_1842)]
        if ceil32(_1842) > _1842:
            mem[_1842 + _1380 + _921 + stor13.length.field_1 + 101] = 0
        return 32, mem[_1380 + _921 + stor13.length.field_1 + 69 len ceil32(_1842) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[96]:
            revert with 0, 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _922 = mem[64]
    if bool(stor13.length):
        if not bool(stor13.length) - (uint255(stor13.length) * 0.5 < 32):
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            _981 = mem[96]
            mem[mem[64] + (uint255(stor13.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[96] + mem[64] + (uint255(stor13.length) * 0.5) + 32] = '.json'
            if ceil32(mem[96]) <= mem[96]:
                _1429 = mem[64]
                mem[64] = mem[96] + mem[64] + (uint255(stor13.length) * 0.5) + 37
                mem[mem[96] + _922 + (uint255(stor13.length) * 0.5) + 37] = 32
                _1495 = mem[_1429]
                mem[_981 + _922 + (uint255(stor13.length) * 0.5) + 69] = mem[_1429]
                mem[_981 + _922 + (uint255(stor13.length) * 0.5) + 101 len ceil32(_1495)] = mem[_1429 + 32 len ceil32(_1495)]
                if ceil32(_1495) > _1495:
                    mem[_1495 + _981 + _922 + (uint255(stor13.length) * 0.5) + 101] = 0
                return 32, mem[_981 + _922 + (uint255(stor13.length) * 0.5) + 69 len ceil32(_1495) + 32]
            _1430 = mem[64]
            mem[64] = mem[96] + mem[64] + (uint255(stor13.length) * 0.5) + 37
            mem[mem[96] + _922 + (uint255(stor13.length) * 0.5) + 37] = 32
            _1496 = mem[_1430]
            mem[_981 + _922 + (uint255(stor13.length) * 0.5) + 69] = mem[_1430]
            mem[_981 + _922 + (uint255(stor13.length) * 0.5) + 101 len ceil32(_1496)] = mem[_1430 + 32 len ceil32(_1496)]
            if ceil32(_1496) > _1496:
                mem[_1496 + _981 + _922 + (uint255(stor13.length) * 0.5) + 101] = 0
            return 32, mem[_981 + _922 + (uint255(stor13.length) * 0.5) + 69 len ceil32(_1496) + 32]
        if bool(stor13.length) != 1:
            _993 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_993] = '.json'
            if ceil32(_993) <= _993:
                _1432 = mem[64]
                mem[64] = _993 + 5
                mem[_993 + 5] = 32
                _1497 = mem[_1432]
                mem[_993 + 37] = mem[_1432]
                mem[_993 + 69 len ceil32(_1497)] = mem[_1432 + 32 len ceil32(_1497)]
                if ceil32(_1497) > _1497:
                    mem[_1497 + _993 + 69] = 0
                return 32, mem[_993 + 37 len ceil32(_1497) + 32]
            _1433 = mem[64]
            mem[64] = _993 + 5
            mem[_993 + 5] = 32
            _1498 = mem[_1433]
            mem[_993 + 37] = mem[_1433]
            mem[_993 + 69 len ceil32(_1498)] = mem[_1433 + 32 len ceil32(_1498)]
            if ceil32(_1498) > _1498:
                mem[_1498 + _993 + 69] = 0
            return 32, mem[_993 + 37 len ceil32(_1498) + 32]
        mem[0] = 13
        idx = 0
        s = 0
        while idx < uint255(stor13.length) * 0.5:
            mem[idx + _922 + 32] = stor13[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1381 = mem[96]
        mem[_922 + (uint255(stor13.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_1381 + _922 + (uint255(stor13.length) * 0.5) + 32] = '.json'
        if ceil32(_1381) <= _1381:
            _1811 = mem[64]
            mem[64] = _1381 + _922 + (uint255(stor13.length) * 0.5) + 37
            mem[_1381 + _922 + (uint255(stor13.length) * 0.5) + 37] = 32
            _1843 = mem[_1811]
            mem[_1381 + _922 + (uint255(stor13.length) * 0.5) + 69] = mem[_1811]
            mem[_1381 + _922 + (uint255(stor13.length) * 0.5) + 101 len ceil32(_1843)] = mem[_1811 + 32 len ceil32(_1843)]
            if ceil32(_1843) > _1843:
                mem[_1843 + _1381 + _922 + (uint255(stor13.length) * 0.5) + 101] = 0
            return 32, mem[_1381 + _922 + (uint255(stor13.length) * 0.5) + 69 len ceil32(_1843) + 32]
        _1812 = mem[64]
        mem[64] = _1381 + _922 + (uint255(stor13.length) * 0.5) + 37
        mem[_1381 + _922 + (uint255(stor13.length) * 0.5) + 37] = 32
        _1844 = mem[_1812]
        mem[_1381 + _922 + (uint255(stor13.length) * 0.5) + 69] = mem[_1812]
        mem[_1381 + _922 + (uint255(stor13.length) * 0.5) + 101 len ceil32(_1844)] = mem[_1812 + 32 len ceil32(_1844)]
        if ceil32(_1844) > _1844:
            mem[_1844 + _1381 + _922 + (uint255(stor13.length) * 0.5) + 101] = 0
        return 32, mem[_1381 + _922 + (uint255(stor13.length) * 0.5) + 69 len ceil32(_1844) + 32]
    if not bool(stor13.length) - (stor13.length.field_1 < 32):
        revert with 0, 34
    if not bool(stor13.length):
        mem[mem[64] + 32] = Mask(248, 8, stor13.length)
        _994 = mem[96]
        mem[mem[64] + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[96] + mem[64] + stor13.length.field_1 + 32] = '.json'
        if ceil32(mem[96]) <= mem[96]:
            _1434 = mem[64]
            mem[64] = mem[96] + mem[64] + stor13.length.field_1 + 37
            mem[mem[96] + _922 + stor13.length.field_1 + 37] = 32
            _1499 = mem[_1434]
            mem[_994 + _922 + stor13.length.field_1 + 69] = mem[_1434]
            mem[_994 + _922 + stor13.length.field_1 + 101 len ceil32(_1499)] = mem[_1434 + 32 len ceil32(_1499)]
            if ceil32(_1499) > _1499:
                mem[_1499 + _994 + _922 + stor13.length.field_1 + 101] = 0
            return 32, mem[_994 + _922 + stor13.length.field_1 + 69 len ceil32(_1499) + 32]
        _1435 = mem[64]
        mem[64] = mem[96] + mem[64] + stor13.length.field_1 + 37
        mem[mem[96] + _922 + stor13.length.field_1 + 37] = 32
        _1500 = mem[_1435]
        mem[_994 + _922 + stor13.length.field_1 + 69] = mem[_1435]
        mem[_994 + _922 + stor13.length.field_1 + 101 len ceil32(_1500)] = mem[_1435 + 32 len ceil32(_1500)]
        if ceil32(_1500) > _1500:
            mem[_1500 + _994 + _922 + stor13.length.field_1 + 101] = 0
        return 32, mem[_994 + _922 + stor13.length.field_1 + 69 len ceil32(_1500) + 32]
    if bool(stor13.length) != 1:
        _1005 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_1005] = '.json'
        if ceil32(_1005) <= _1005:
            _1437 = mem[64]
            mem[64] = _1005 + 5
            mem[_1005 + 5] = 32
            _1501 = mem[_1437]
            mem[_1005 + 37] = mem[_1437]
            mem[_1005 + 69 len ceil32(_1501)] = mem[_1437 + 32 len ceil32(_1501)]
            if ceil32(_1501) > _1501:
                mem[_1501 + _1005 + 69] = 0
            return 32, mem[_1005 + 37 len ceil32(_1501) + 32]
        _1438 = mem[64]
        mem[64] = _1005 + 5
        mem[_1005 + 5] = 32
        _1502 = mem[_1438]
        mem[_1005 + 37] = mem[_1438]
        mem[_1005 + 69 len ceil32(_1502)] = mem[_1438 + 32 len ceil32(_1502)]
        if ceil32(_1502) > _1502:
            mem[_1502 + _1005 + 69] = 0
        return 32, mem[_1005 + 37 len ceil32(_1502) + 32]
    mem[0] = 13
    idx = 0
    s = 0
    while idx < stor13.length.field_1:
        mem[idx + _922 + 32] = stor13[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _1382 = mem[96]
    mem[_922 + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[_1382 + _922 + stor13.length.field_1 + 32] = '.json'
    if ceil32(_1382) <= _1382:
        _1813 = mem[64]
        mem[64] = _1382 + _922 + stor13.length.field_1 + 37
        mem[_1382 + _922 + stor13.length.field_1 + 37] = 32
        _1845 = mem[_1813]
        mem[_1382 + _922 + stor13.length.field_1 + 69] = mem[_1813]
        mem[_1382 + _922 + stor13.length.field_1 + 101 len ceil32(_1845)] = mem[_1813 + 32 len ceil32(_1845)]
        if ceil32(_1845) > _1845:
            mem[_1845 + _1382 + _922 + stor13.length.field_1 + 101] = 0
        return 32, mem[_1382 + _922 + stor13.length.field_1 + 69 len ceil32(_1845) + 32]
    _1814 = mem[64]
    mem[64] = _1382 + _922 + stor13.length.field_1 + 37
    mem[_1382 + _922 + stor13.length.field_1 + 37] = 32
    _1846 = mem[_1814]
    mem[_1382 + _922 + stor13.length.field_1 + 69] = mem[_1814]
    mem[_1382 + _922 + stor13.length.field_1 + 101 len ceil32(_1846)] = mem[_1814 + 32 len ceil32(_1846)]
    if ceil32(_1846) > _1846:
        mem[_1846 + _1382 + _922 + stor13.length.field_1 + 101] = 0
    return 32, mem[_1382 + _922 + stor13.length.field_1 + 69 len ceil32(_1846) + 32]
}



}
