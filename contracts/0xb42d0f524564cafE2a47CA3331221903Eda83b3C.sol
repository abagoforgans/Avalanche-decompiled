contract main {




// =====================  Runtime code  =====================


#
#  - reserveTokens(address arg1, uint256 arg2)
#  - mint(uint256 arg1)
#  - sub_a1d56486(?)
#  - tokenURI(uint256 arg1)
#
const MAX_PURCHASABLE = 10

const MAX_SUPPLY = 4000


uint256 stor0;
uint256 stor1;
array of struct stor2;
array of struct stor3;
mapping of struct stor4;
mapping of uint64 balanceOf;
mapping of address approved;
mapping of uint8 stor7;
address owner;
uint128 stor10; offset 160
address stor10;
mapping of struct stor11;
uint256 tokenPrice;
uint256 sub_ef19233b;
array of struct stor14;
array of struct stor15;
uint8 stor16;
uint8 stor16; offset 8
uint128 sub_2dff8423; offset 16
uint256 stor16; offset 8
address stor17;
mapping of uint8 stor18;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 > arg1:
        revert with 3477536996
    if arg1 >= stor0:
        revert with 3477536996
    if stor4[arg1].field_224:
        revert with 3477536996
    return approved[arg1]
}

function sub_2dff8423(?) {
    return sub_2dff8423
}

function sub_61f21de0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor18[address(arg1)])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 2404300292
    return balanceOf[address(arg1)]
}

function tokenPrice() {
    return tokenPrice
}

function owner() {
    return owner
}

function sub_b35c938e(?) {
    return bool(uint8(stor16.field_8))
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor7[address(arg1)][address(arg2)])
}

function saleIsActive() {
    return bool(uint8(stor16.field_0))
}

function sub_ef19233b(?) {
    return sub_ef19233b
}

function _fallback() payable {
    revert
}

function totalSupply() {
    return (stor0 - stor1)
}

function openSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor16.field_0) = 1
}

function closeSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor16.field_0) = 0
}

function sub_1672c6b8(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor16.field_8) = 0
}

function sub_8d4a982f(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor16.field_8) = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_592e6317(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ef19233b = arg1
}

function setTokenPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenPrice = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 2959280091
    stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) <= 0:
        revert with 0, 'MONKEEZ: Nothing to withdraw'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
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

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor11[arg1].field_0:
        if arg2 and stor11[arg1].field_160 > -1 / arg2:
            revert with 'NH{q', 17
        return stor11[arg1].field_0, arg2 * stor11[arg1].field_160 / 10000
    if arg2 and Mask(96, 0, stor10.field_160) > -1 / arg2:
        revert with 'NH{q', 17
    return address(stor10.field_0), arg2 * Mask(96, 0, stor10.field_160) / 10000
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == *U Z:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function setRoyaltyPayoutAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor17 = arg1
    if sub_2dff8423 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC2981: royalty fee will exceed salePrice'
    if not stor17:
        revert with 0, 'ERC2981: invalid receiver'
    address(stor10.field_0) = stor17
    Mask(96, 0, stor10.field_160) = sub_2dff8423
}

function sub_1ebdcaae(?) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(96, 0, arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2dff8423 = Mask(96, 0, arg1)
    if sub_2dff8423 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC2981: royalty fee will exceed salePrice'
    if not stor17:
        revert with 0, 'ERC2981: invalid receiver'
    address(stor10.field_0) = stor17
    Mask(96, 0, stor10.field_160) = sub_2dff8423
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    if 0 > arg1:
        revert with 3744308034
    if arg1 >= stor0:
        revert with 3744308034
    mem[192] = stor4[arg1].field_0
    mem[224] = stor4[arg1].field_160
    mem[256] = bool(stor4[arg1].field_224)
    if stor4[arg1].field_224:
        revert with 3744308034
    if stor4[arg1].field_0:
        return stor4[arg1].field_0
    mem[64] = 384
    mem[288] = stor4[arg1 - 1].field_0
    mem[320] = stor4[arg1 - 1].field_160
    mem[352] = bool(stor4[arg1 - 1].field_224)
    s = 192
    s = arg1
    while not stor4[arg1 - 1].field_0:
        mem[0] = s - 2
        mem[32] = 4
        mem[64] = mem[64] + 96
        mem[288] = stor4[s - 2].field_0
        mem[320] = stor4[arg1 - 1].field_160
        mem[352] = bool(stor4[arg1 - 1].field_224)
        s = 288
        s = s - 1
        continue 
    mem[mem[64]] = mem[300 len 20]
    return memory
      from mem[64]
       len 32
}

function sub_54383708(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if not address(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MONKEEZ: Can't add the null address'
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 18
        stor18[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_bc6105b8(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if not address(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MONKEEZ: Can't remove the null address'
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 18
        stor18[address(cd[((32 * idx) + cd[4] + 36)])] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_7e2285aa(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor15[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15.length = 0
            idx = 0
            while stor15.length.field_1 + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor15[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15.length = 0
            idx = 0
            while stor15.length.field_1 + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor14[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14.length = 0
            idx = 0
            while stor14.length.field_1 + 31 / 32 > idx:
                stor14[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor14[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14.length = 0
            idx = 0
            while stor14.length.field_1 + 31 / 32 > idx:
                stor14[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if 0 > arg2:
        revert with 3744308034
    if arg2 >= stor0:
        revert with 3744308034
    if stor4[arg2].field_224:
        revert with 3744308034
    if stor4[arg2].field_0:
        if arg1 == stor4[arg2].field_0:
            revert with 2487188364
        if stor4[arg2].field_0 != msg.sender:
            if not stor7[stor4[arg2].field_0][address(msg.sender)]:
                revert with 3484662082
        approved[arg2] = arg1
        emit Approval(stor4[arg2].field_0, arg1, arg2);
    else:
        mem[64] = 384
        mem[288] = stor4[arg2 - 1].field_0
        s = 192
        s = arg2
        while not stor4[arg2 - 1].field_0:
            mem[0] = s - 2
            mem[32] = 4
            mem[64] = mem[64] + 96
            mem[288] = stor4[s - 2].field_0
            mem[320] = stor4[arg2 - 1].field_160
            mem[352] = bool(stor4[arg2 - 1].field_224)
            s = 288
            s = s - 1
            continue 
        if arg1 == mem[300 len 20]:
            revert with 2487188364
        if mem[300 len 20] != msg.sender:
            if not stor7[mem[300 len 20]][address(msg.sender)]:
                revert with 3484662082
        approved[arg2] = arg1
        emit Approval(mem[300 len 20], arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if 0 > arg3:
        revert with 3744308034
    if arg3 >= stor0:
        revert with 3744308034
    if stor4[arg3].field_224:
        revert with 3744308034
    if stor4[arg3].field_0:
        if stor4[arg3].field_0 != arg1:
            revert with 2702475520
        if arg1 != msg.sender:
            if not stor7[address(arg1)][address(msg.sender)]:
                if 0 > arg3:
                    revert with 3477536996
                if arg3 >= stor0:
                    revert with 3477536996
                if stor4[arg3].field_224:
                    revert with 3477536996
                if approved[arg3] != msg.sender:
                    revert with 1506318014
        if not arg2:
            revert with 3931454260
        approved[arg3] = 0
        emit Approval(arg1, 0, arg3);
        balanceOf[address(arg1)] = uint64(balanceOf[address(arg1)] - 1)
        balanceOf[address(arg2)] = uint64(balanceOf[address(arg2)] + 1)
        stor4[arg3].field_0 = arg2
        stor4[arg3].field_160 = uint64(block.timestamp)
        if not stor4[arg3 + 1].field_0:
            if arg3 + 1 != stor0:
                stor4[arg3 + 1].field_0 = arg1
                stor4[arg3 + 1].field_160 = stor4[arg3].field_160
    else:
        mem[64] = 384
        mem[288] = stor4[arg3 - 1].field_0
        mem[320] = stor4[arg3 - 1].field_160
        s = 192
        s = arg3
        while not stor4[arg3 - 1].field_0:
            mem[0] = s - 2
            mem[32] = 4
            mem[64] = mem[64] + 96
            mem[288] = stor4[s - 2].field_0
            mem[320] = stor4[arg3 - 1].field_160
            mem[352] = bool(stor4[arg3 - 1].field_224)
            s = 288
            s = s - 1
            continue 
        if mem[300 len 20] != arg1:
            revert with 2702475520
        if arg1 != msg.sender:
            if not stor7[address(arg1)][address(msg.sender)]:
                if 0 > arg3:
                    revert with 3477536996
                if arg3 >= stor0:
                    revert with 3477536996
                if stor4[arg3].field_224:
                    revert with 3477536996
                if approved[arg3] != msg.sender:
                    revert with 1506318014
        if not arg2:
            revert with 3931454260
        approved[arg3] = 0
        emit Approval(arg1, 0, arg3);
        balanceOf[address(arg1)] = uint64(balanceOf[address(arg1)] - 1)
        balanceOf[address(arg2)] = uint64(balanceOf[address(arg2)] + 1)
        stor4[arg3].field_0 = arg2
        stor4[arg3].field_160 = uint64(block.timestamp)
        if not stor4[arg3 + 1].field_0:
            if arg3 + 1 != stor0:
                stor4[arg3 + 1].field_0 = arg1
                stor4[arg3 + 1].field_160 = mem[344 len 8]
    emit Transfer(arg1, arg2, arg3);
}

function name() {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
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

function symbol() {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function extension() {
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor15.length.field_1:
                if 31 < stor15.length.field_1:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length.field_1), data=mem[128 len ceil32(stor15.length.field_1)])
                mem[128] = 256 * stor15.length.field_8
        else:
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor15.length.field_1:
                if 31 < stor15.length.field_1:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length.field_1), data=mem[128 len ceil32(stor15.length.field_1)])
                mem[128] = 256 * stor15.length.field_8
        mem[ceil32(stor15.length.field_1) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
        if ceil32(stor15.length.field_1) > stor15.length.field_1:
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor15.length.field_1), data=mem[128 len ceil32(stor15.length.field_1)], mem[(2 * ceil32(stor15.length.field_1)) + 192 len 2 * ceil32(stor15.length.field_1)]), 
    if bool(stor15.length) == stor15.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor15.length.field_1:
            if 31 < stor15.length.field_1:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while stor15.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    else:
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor15.length.field_1:
            if 31 < stor15.length.field_1:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while stor15.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    mem[ceil32(stor15.length.field_1) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
    if ceil32(stor15.length.field_1) > stor15.length.field_1:
        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 192] = 0
    return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)], mem[(2 * ceil32(stor15.length.field_1)) + 192 len 2 * ceil32(stor15.length.field_1)]), 
}

function sub_e4d3d448(?) {
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor14.length):
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor14.length.field_1:
                if 31 < stor14.length.field_1:
                    mem[128] = uint256(stor14.field_0)
                    idx = 128
                    s = 0
                    while stor14.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor14[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)])
                mem[128] = 256 * stor14.length.field_8
        else:
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor14.length.field_1:
                if 31 < stor14.length.field_1:
                    mem[128] = uint256(stor14.field_0)
                    idx = 128
                    s = 0
                    while stor14.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor14[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)])
                mem[128] = 256 * stor14.length.field_8
        mem[ceil32(stor14.length.field_1) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
        if ceil32(stor14.length.field_1) > stor14.length.field_1:
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)], mem[(2 * ceil32(stor14.length.field_1)) + 192 len 2 * ceil32(stor14.length.field_1)]), 
    if bool(stor14.length) == stor14.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor14.length.field_1:
            if 31 < stor14.length.field_1:
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while stor14.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)])
            mem[128] = 256 * stor14.length.field_8
    else:
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor14.length.field_1:
            if 31 < stor14.length.field_1:
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while stor14.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)])
            mem[128] = 256 * stor14.length.field_8
    mem[ceil32(stor14.length.field_1) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
    if ceil32(stor14.length.field_1) > stor14.length.field_1:
        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 192] = 0
    return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)], mem[(2 * ceil32(stor14.length.field_1)) + 192 len 2 * ceil32(stor14.length.field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    if 0 > arg3:
        revert with 3744308034
    if arg3 >= stor0:
        revert with 3744308034
    mem[224] = stor4[arg3].field_0
    mem[256] = stor4[arg3].field_160
    mem[288] = bool(stor4[arg3].field_224)
    if stor4[arg3].field_224:
        revert with 3744308034
    if stor4[arg3].field_0:
        if stor4[arg3].field_0 != arg1:
            revert with 2702475520
        if arg1 != msg.sender:
            if not stor7[address(arg1)][address(msg.sender)]:
                if 0 > arg3:
                    revert with 3477536996
                if arg3 >= stor0:
                    revert with 3477536996
                if stor4[arg3].field_224:
                    revert with 3477536996
                if approved[arg3] != msg.sender:
                    revert with 1506318014
        if not arg2:
            revert with 3931454260
        approved[arg3] = 0
        emit Approval(arg1, 0, arg3);
        balanceOf[address(arg1)] = uint64(balanceOf[address(arg1)] - 1)
        balanceOf[address(arg2)] = uint64(balanceOf[address(arg2)] + 1)
        stor4[arg3].field_0 = arg2
        stor4[arg3].field_160 = uint64(block.timestamp)
        if not stor4[arg3 + 1].field_0:
            if arg3 + 1 != stor0:
                stor4[arg3 + 1].field_0 = arg1
                stor4[arg3 + 1].field_160 = stor4[arg3].field_160
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2) > 0:
            require ext_code.size(arg2)
            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, 128, 0
            if not ext_call.success:
                if not return_data.size:
                    revert with 3517284054
                if not return_data.size:
                    revert with 3517284054
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 3517284054
    else:
        mem[64] = 416
        mem[320] = stor4[arg3 - 1].field_0
        mem[352] = stor4[arg3 - 1].field_160
        mem[384] = bool(stor4[arg3 - 1].field_224)
        s = 224
        s = arg3
        while not stor4[arg3 - 1].field_0:
            mem[0] = s - 2
            mem[32] = 4
            mem[64] = mem[64] + 96
            mem[320] = stor4[s - 2].field_0
            mem[352] = stor4[arg3 - 1].field_160
            mem[384] = bool(stor4[arg3 - 1].field_224)
            s = 320
            s = s - 1
            continue 
        if mem[332 len 20] != arg1:
            revert with 2702475520
        if msg.sender == arg1:
            if not arg2:
                revert with 3931454260
            approved[arg3] = 0
            emit Approval(arg1, 0, arg3);
            balanceOf[address(arg1)] = uint64(balanceOf[address(arg1)] - 1)
            balanceOf[address(arg2)] = uint64(balanceOf[address(arg2)] + 1)
            stor4[arg3].field_0 = arg2
            stor4[arg3].field_160 = uint64(block.timestamp)
            mem[0] = arg3 + 1
            mem[32] = 4
            if stor4[arg3 + 1].field_0:
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2) > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg1
                    mem[mem[64] + 68] = arg3
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164 len 0] = None
                    require ext_code.size(arg2)
                    call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), arg3, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            revert with 3517284054
                        if not return_data.size:
                            revert with 3517284054
                        revert with ext_call.return_data[0 len return_data.size]
                    _1333 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1333] == Mask(32, 224, mem[_1333])
                    if Mask(32, 224, mem[_1333]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 3517284054
            else:
                if arg3 + 1 == stor0:
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164 len 0] = None
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                revert with 3517284054
                            if not return_data.size:
                                revert with 3517284054
                            revert with ext_call.return_data[0 len return_data.size]
                        _1334 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1334] == Mask(32, 224, mem[_1334])
                        if Mask(32, 224, mem[_1334]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 3517284054
                else:
                    stor4[arg3 + 1].field_0 = arg1
                    stor4[arg3 + 1].field_160 = mem[376 len 8]
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164 len 0] = None
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                revert with 3517284054
                            if not return_data.size:
                                revert with 3517284054
                            revert with ext_call.return_data[0 len return_data.size]
                        _1335 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1335] == Mask(32, 224, mem[_1335])
                        if Mask(32, 224, mem[_1335]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 3517284054
        else:
            if stor7[address(arg1)][address(msg.sender)]:
                if not arg2:
                    revert with 3931454260
                approved[arg3] = 0
                emit Approval(arg1, 0, arg3);
                balanceOf[address(arg1)] = uint64(balanceOf[address(arg1)] - 1)
                balanceOf[address(arg2)] = uint64(balanceOf[address(arg2)] + 1)
                stor4[arg3].field_0 = arg2
                stor4[arg3].field_160 = uint64(block.timestamp)
                mem[0] = arg3 + 1
                mem[32] = 4
                if stor4[arg3 + 1].field_0:
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164 len 0] = None
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                revert with 3517284054
                            if not return_data.size:
                                revert with 3517284054
                            revert with ext_call.return_data[0 len return_data.size]
                        _1336 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1336] == Mask(32, 224, mem[_1336])
                        if Mask(32, 224, mem[_1336]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 3517284054
                else:
                    if arg3 + 1 == stor0:
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = arg3
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164 len 0] = None
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    revert with 3517284054
                                if not return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1337 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1337] == Mask(32, 224, mem[_1337])
                            if Mask(32, 224, mem[_1337]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
                    else:
                        stor4[arg3 + 1].field_0 = arg1
                        stor4[arg3 + 1].field_160 = mem[376 len 8]
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = arg3
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164 len 0] = None
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    revert with 3517284054
                                if not return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1338 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1338] == Mask(32, 224, mem[_1338])
                            if Mask(32, 224, mem[_1338]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
            else:
                if 0 > arg3:
                    revert with 3477536996
                if arg3 >= stor0:
                    revert with 3477536996
                if stor4[arg3].field_224:
                    revert with 3477536996
                if approved[arg3] != msg.sender:
                    revert with 1506318014
                if not arg2:
                    revert with 3931454260
                approved[arg3] = 0
                emit Approval(arg1, 0, arg3);
                balanceOf[address(arg1)] = uint64(balanceOf[address(arg1)] - 1)
                balanceOf[address(arg2)] = uint64(balanceOf[address(arg2)] + 1)
                stor4[arg3].field_0 = arg2
                stor4[arg3].field_160 = uint64(block.timestamp)
                mem[0] = arg3 + 1
                mem[32] = 4
                if stor4[arg3 + 1].field_0:
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164 len 0] = None
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                revert with 3517284054
                            if not return_data.size:
                                revert with 3517284054
                            revert with ext_call.return_data[0 len return_data.size]
                        _1339 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1339] == Mask(32, 224, mem[_1339])
                        if Mask(32, 224, mem[_1339]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 3517284054
                else:
                    if arg3 + 1 == stor0:
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = arg3
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164 len 0] = None
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    revert with 3517284054
                                if not return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1340 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1340] == Mask(32, 224, mem[_1340])
                            if Mask(32, 224, mem[_1340]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
                    else:
                        stor4[arg3 + 1].field_0 = arg1
                        stor4[arg3 + 1].field_160 = mem[376 len 8]
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = arg3
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164 len 0] = None
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    revert with 3517284054
                                if not return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1341 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1341] == Mask(32, 224, mem[_1341])
                            if Mask(32, 224, mem[_1341]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(ceil32(arg4.length)) + 97] = 0
    mem[ceil32(ceil32(arg4.length)) + 129] = 0
    mem[ceil32(ceil32(arg4.length)) + 161] = 0
    if 0 > arg3:
        revert with 3744308034
    if arg3 >= stor0:
        revert with 3744308034
    mem[ceil32(ceil32(arg4.length)) + 193] = stor4[arg3].field_0
    mem[ceil32(ceil32(arg4.length)) + 225] = stor4[arg3].field_160
    mem[ceil32(ceil32(arg4.length)) + 257] = bool(stor4[arg3].field_224)
    if stor4[arg3].field_224:
        revert with 3744308034
    if stor4[arg3].field_0:
        if stor4[arg3].field_0 != arg1:
            revert with 2702475520
        if arg1 != msg.sender:
            if not stor7[address(arg1)][address(msg.sender)]:
                if 0 > arg3:
                    revert with 3477536996
                if arg3 >= stor0:
                    revert with 3477536996
                if stor4[arg3].field_224:
                    revert with 3477536996
                if approved[arg3] != msg.sender:
                    revert with 1506318014
        if not arg2:
            revert with 3931454260
        approved[arg3] = 0
        emit Approval(arg1, 0, arg3);
        balanceOf[address(arg1)] = uint64(balanceOf[address(arg1)] - 1)
        balanceOf[address(arg2)] = uint64(balanceOf[address(arg2)] + 1)
        stor4[arg3].field_0 = arg2
        stor4[arg3].field_160 = uint64(block.timestamp)
        if not stor4[arg3 + 1].field_0:
            if arg3 + 1 != stor0:
                stor4[arg3 + 1].field_0 = arg1
                stor4[arg3 + 1].field_160 = stor4[arg3].field_160
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2) > 0:
            require ext_code.size(arg2)
            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
            if not ext_call.success:
                if not return_data.size:
                    if not arg4.length:
                        revert with 3517284054
                    revert with arg4[all]
                if not return_data.size:
                    revert with 3517284054
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 3517284054
    else:
        mem[64] = ceil32(ceil32(arg4.length)) + 385
        mem[ceil32(ceil32(arg4.length)) + 289] = stor4[arg3 - 1].field_0
        mem[ceil32(ceil32(arg4.length)) + 321] = stor4[arg3 - 1].field_160
        mem[ceil32(ceil32(arg4.length)) + 353] = bool(stor4[arg3 - 1].field_224)
        s = ceil32(ceil32(arg4.length)) + 193
        s = arg3
        while not stor4[arg3 - 1].field_0:
            mem[0] = s - 2
            mem[32] = 4
            mem[64] = mem[64] + 96
            mem[ceil32(ceil32(arg4.length)) + 289] = stor4[s - 2].field_0
            mem[ceil32(ceil32(arg4.length)) + 321] = stor4[arg3 - 1].field_160
            mem[ceil32(ceil32(arg4.length)) + 353] = bool(stor4[arg3 - 1].field_224)
            s = ceil32(ceil32(arg4.length)) + 289
            s = s - 1
            continue 
        if mem[ceil32(ceil32(arg4.length)) + 301 len 20] != arg1:
            revert with 2702475520
        if msg.sender == arg1:
            if not arg2:
                revert with 3931454260
            approved[arg3] = 0
            emit Approval(arg1, 0, arg3);
            balanceOf[address(arg1)] = uint64(balanceOf[address(arg1)] - 1)
            balanceOf[address(arg2)] = uint64(balanceOf[address(arg2)] + 1)
            stor4[arg3].field_0 = arg2
            stor4[arg3].field_160 = uint64(block.timestamp)
            mem[0] = arg3 + 1
            mem[32] = 4
            if stor4[arg3 + 1].field_0:
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2) > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg1
                    mem[mem[64] + 68] = arg3
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = arg4.length
                    mem[mem[64] + 164 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 0) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                    if ceil32(arg4.length) <= arg4.length:
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not arg4.length:
                                    revert with 3517284054
                                revert with arg4[all]
                            if not return_data.size:
                                revert with 3517284054
                            revert with ext_call.return_data[0 len return_data.size]
                        _1333 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1333] == Mask(32, 224, mem[_1333])
                        if Mask(32, 224, mem[_1333]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 3517284054
                    else:
                        mem[mem[64] + arg4.length + 164] = 0
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not arg4.length:
                                    revert with 3517284054
                                revert with arg4[all]
                            if not return_data.size:
                                revert with 3517284054
                            revert with ext_call.return_data[0 len return_data.size]
                        _1342 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1342] == Mask(32, 224, mem[_1342])
                        if Mask(32, 224, mem[_1342]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 3517284054
            else:
                if arg3 + 1 == stor0:
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = arg4.length
                        mem[mem[64] + 164 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 0) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                        if ceil32(arg4.length) <= arg4.length:
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not arg4.length:
                                        revert with 3517284054
                                    revert with arg4[all]
                                if not return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1334 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1334] == Mask(32, 224, mem[_1334])
                            if Mask(32, 224, mem[_1334]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
                        else:
                            mem[mem[64] + arg4.length + 164] = 0
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not arg4.length:
                                        revert with 3517284054
                                    revert with arg4[all]
                                if not return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1343 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1343] == Mask(32, 224, mem[_1343])
                            if Mask(32, 224, mem[_1343]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
                else:
                    stor4[arg3 + 1].field_0 = arg1
                    stor4[arg3 + 1].field_160 = mem[ceil32(ceil32(arg4.length)) + 345 len 8]
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = arg4.length
                        mem[mem[64] + 164 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 0) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                        if ceil32(arg4.length) <= arg4.length:
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not arg4.length:
                                        revert with 3517284054
                                    revert with arg4[all]
                                if not return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1335 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1335] == Mask(32, 224, mem[_1335])
                            if Mask(32, 224, mem[_1335]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
                        else:
                            mem[mem[64] + arg4.length + 164] = 0
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not arg4.length:
                                        revert with 3517284054
                                    revert with arg4[all]
                                if not return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1344 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1344] == Mask(32, 224, mem[_1344])
                            if Mask(32, 224, mem[_1344]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
        else:
            if stor7[address(arg1)][address(msg.sender)]:
                if not arg2:
                    revert with 3931454260
                approved[arg3] = 0
                emit Approval(arg1, 0, arg3);
                balanceOf[address(arg1)] = uint64(balanceOf[address(arg1)] - 1)
                balanceOf[address(arg2)] = uint64(balanceOf[address(arg2)] + 1)
                stor4[arg3].field_0 = arg2
                stor4[arg3].field_160 = uint64(block.timestamp)
                mem[0] = arg3 + 1
                mem[32] = 4
                if stor4[arg3 + 1].field_0:
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = arg4.length
                        mem[mem[64] + 164 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 0) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                        if ceil32(arg4.length) <= arg4.length:
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not arg4.length:
                                        revert with 3517284054
                                    revert with arg4[all]
                                if not return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1336 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1336] == Mask(32, 224, mem[_1336])
                            if Mask(32, 224, mem[_1336]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
                        else:
                            mem[mem[64] + arg4.length + 164] = 0
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not arg4.length:
                                        revert with 3517284054
                                    revert with arg4[all]
                                if not return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1345 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1345] == Mask(32, 224, mem[_1345])
                            if Mask(32, 224, mem[_1345]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
                else:
                    if arg3 + 1 == stor0:
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = arg3
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = arg4.length
                            mem[mem[64] + 164 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 0) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                            if ceil32(arg4.length) <= arg4.length:
                                require ext_code.size(arg2)
                                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not arg4.length:
                                            revert with 3517284054
                                        revert with arg4[all]
                                    if not return_data.size:
                                        revert with 3517284054
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1337 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1337] == Mask(32, 224, mem[_1337])
                                if Mask(32, 224, mem[_1337]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 3517284054
                            else:
                                mem[mem[64] + arg4.length + 164] = 0
                                require ext_code.size(arg2)
                                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not arg4.length:
                                            revert with 3517284054
                                        revert with arg4[all]
                                    if not return_data.size:
                                        revert with 3517284054
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1346 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1346] == Mask(32, 224, mem[_1346])
                                if Mask(32, 224, mem[_1346]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 3517284054
                    else:
                        stor4[arg3 + 1].field_0 = arg1
                        stor4[arg3 + 1].field_160 = mem[ceil32(ceil32(arg4.length)) + 345 len 8]
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = arg3
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = arg4.length
                            mem[mem[64] + 164 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 0) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                            if ceil32(arg4.length) <= arg4.length:
                                require ext_code.size(arg2)
                                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not arg4.length:
                                            revert with 3517284054
                                        revert with arg4[all]
                                    if not return_data.size:
                                        revert with 3517284054
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1338 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1338] == Mask(32, 224, mem[_1338])
                                if Mask(32, 224, mem[_1338]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 3517284054
                            else:
                                mem[mem[64] + arg4.length + 164] = 0
                                require ext_code.size(arg2)
                                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not arg4.length:
                                            revert with 3517284054
                                        revert with arg4[all]
                                    if not return_data.size:
                                        revert with 3517284054
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1347 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1347] == Mask(32, 224, mem[_1347])
                                if Mask(32, 224, mem[_1347]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 3517284054
            else:
                if 0 > arg3:
                    revert with 3477536996
                if arg3 >= stor0:
                    revert with 3477536996
                if stor4[arg3].field_224:
                    revert with 3477536996
                if approved[arg3] != msg.sender:
                    revert with 1506318014
                if not arg2:
                    revert with 3931454260
                approved[arg3] = 0
                emit Approval(arg1, 0, arg3);
                balanceOf[address(arg1)] = uint64(balanceOf[address(arg1)] - 1)
                balanceOf[address(arg2)] = uint64(balanceOf[address(arg2)] + 1)
                stor4[arg3].field_0 = arg2
                stor4[arg3].field_160 = uint64(block.timestamp)
                mem[0] = arg3 + 1
                mem[32] = 4
                if stor4[arg3 + 1].field_0:
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = arg4.length
                        mem[mem[64] + 164 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 0) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                        if ceil32(arg4.length) <= arg4.length:
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not arg4.length:
                                        revert with 3517284054
                                    revert with arg4[all]
                                if not return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1339 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1339] == Mask(32, 224, mem[_1339])
                            if Mask(32, 224, mem[_1339]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
                        else:
                            mem[mem[64] + arg4.length + 164] = 0
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not arg4.length:
                                        revert with 3517284054
                                    revert with arg4[all]
                                if not return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1348 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1348] == Mask(32, 224, mem[_1348])
                            if Mask(32, 224, mem[_1348]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
                else:
                    if arg3 + 1 == stor0:
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = arg3
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = arg4.length
                            mem[mem[64] + 164 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 0) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                            if ceil32(arg4.length) <= arg4.length:
                                require ext_code.size(arg2)
                                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not arg4.length:
                                            revert with 3517284054
                                        revert with arg4[all]
                                    if not return_data.size:
                                        revert with 3517284054
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1340 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1340] == Mask(32, 224, mem[_1340])
                                if Mask(32, 224, mem[_1340]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 3517284054
                            else:
                                mem[mem[64] + arg4.length + 164] = 0
                                require ext_code.size(arg2)
                                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not arg4.length:
                                            revert with 3517284054
                                        revert with arg4[all]
                                    if not return_data.size:
                                        revert with 3517284054
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1349 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1349] == Mask(32, 224, mem[_1349])
                                if Mask(32, 224, mem[_1349]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 3517284054
                    else:
                        stor4[arg3 + 1].field_0 = arg1
                        stor4[arg3 + 1].field_160 = mem[ceil32(ceil32(arg4.length)) + 345 len 8]
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = arg3
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = arg4.length
                            mem[mem[64] + 164 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 0) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                            if ceil32(arg4.length) <= arg4.length:
                                require ext_code.size(arg2)
                                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not arg4.length:
                                            revert with 3517284054
                                        revert with arg4[all]
                                    if not return_data.size:
                                        revert with 3517284054
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1341 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1341] == Mask(32, 224, mem[_1341])
                                if Mask(32, 224, mem[_1341]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 3517284054
                            else:
                                mem[mem[64] + arg4.length + 164] = 0
                                require ext_code.size(arg2)
                                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not arg4.length:
                                            revert with 3517284054
                                        revert with arg4[all]
                                    if not return_data.size:
                                        revert with 3517284054
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1350 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1350] == Mask(32, 224, mem[_1350])
                                if Mask(32, 224, mem[_1350]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 3517284054
}



}
