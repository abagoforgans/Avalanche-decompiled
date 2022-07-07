contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - sub_759351ab(?)
#  - sub_8ea45625(?)
#  - sub_b88c3f09(?)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
const sub_1fdebc44(?) = 20 * 10^6

const sub_3df16874(?) = 3 * 10^6

const sub_72b9fb16(?) = 1000

const sub_9f457fc8(?) = 10 * 10^6

const sub_d5d9cfec(?) = 2

const sub_ec84b80d(?) = 5

const MAX_PER_MINT = 10


address owner;
array of struct stor2;
array of struct stor3;
mapping of uint256 balanceOf;
mapping of address ownerOf;
mapping of address approved;
mapping of uint8 stor7;
mapping of struct tokenOfOwnerByIndex;
mapping of uint256 stor9;
uint256 totalSupply;
mapping of uint8 stor11;
uint8 stor12;
uint8 states; offset 8
uint256 stor12; offset 8
array of address sub_9e4df439;
array of address tokens;
mapping of uint8 stor15;
address treasuryAddress;
uint256 mintPrice;
uint256 genesisSupply;
uint256 stor19; offset 32
uint256 sub_1313088e;
mapping of struct stor20;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    return approved[arg1]
}

function sub_1313088e(?) {
    return sub_1313088e
}

function initialized() {
    return bool(uint8(stor12.field_0))
}

function totalSupply() {
    return totalSupply
}

function whitelists(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2].field_0
}

function genesisSupply() {
    return genesisSupply
}

function tokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokens.length
    return tokens[arg1].field_0
}

function treasury() {
    return treasuryAddress
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    return ownerOf[arg1]
}

function mintPrice() {
    return mintPrice
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[arg1]
}

function states() {
    return states
}

function owner() {
    return owner
}

function sub_9e4df439(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_9e4df439.length
    return sub_9e4df439[arg1].field_0
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor7[arg1][arg2])
}

function sub_f8b08712(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor15[arg1])
}

function _fallback() payable {
    revert
}

function setMintPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    mintPrice = arg1
}

function setGenesisSupply(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    genesisSupply = arg1
}

function setState(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    states = arg1
}

function setTreasury(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    treasuryAddress = arg1
}

function withdraw() {
    require msg.sender == owner
    call treasuryAddress with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    stor7[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if ownerOf[arg2] != msg.sender:
        if not stor7[stor5[arg2]][msg.sender]:
            revert with 0, 'NOT_APPROVED'
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000)
}

function sub_fed505da(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    require msg.sender == owner
    if uint16(arg1) >= tokens.length:
        revert with 0, 50
    require ext_code.size(tokens[uint16(arg1)].field_0)
    call tokens[uint16(arg1)].field_0.0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_78d210b7(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    require msg.sender == owner
    if uint16(arg1) >= sub_9e4df439.length:
        revert with 0, 50
    require ext_code.size(sub_9e4df439[uint16(arg1)].field_0)
    call sub_9e4df439[uint16(arg1)].field_0.0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1cb24f86(?) {
    require calldata.size - 4 >= 64
    require arg2 == uint32(arg2)
    if 4 >= sub_9e4df439.length:
        revert with 0, 50
    if address(sub_9e4df439.field_1024) != msg.sender:
        revert with 0, 'Invalid pool'
    if 1 >= sub_9e4df439.length:
        revert with 0, 50
    require ext_code.size(address(sub_9e4df439.field_256))
    call address(sub_9e4df439.field_256).0x2883a89e with:
         gas gas_remaining wei
        args arg1, uint32(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_16c85277(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 15
        stor15[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_9d6927bf(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 11
        stor11[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_c3a99ddd(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint128(arg1)
    if 2 >= tokens.length:
        revert with 0, 50
    require ext_code.size(address(tokens.field_512))
    call address(tokens.field_512).0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, uint128(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if uint128(stor20[address(msg.sender)].field_0) >> 128 > !uint128(arg1):
        revert with 0, 17
    stor20[address(msg.sender)].field_0 = (uint128(stor20[address(msg.sender)].field_0) >> 128) + uint128(arg1) << 128 or stor20[address(msg.sender)].field_0
}

function setTokens(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require msg.sender == owner
    tokens.length = arg1.length
    if not arg1.length:
        idx = 0
        while tokens.length > idx:
            tokens[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg1 + 36
        while arg1 + (32 * arg1.length) + 36 > idx:
            tokens[s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while tokens.length > idx:
            tokens[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_1aa0f42d(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require msg.sender == owner
    sub_9e4df439.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_9e4df439.length > idx:
            sub_9e4df439[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            sub_9e4df439[s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_9e4df439.length > idx:
            sub_9e4df439[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_8fc0f5eb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor20[address(arg1)].field_0:
        return 0
    if uint128(block.timestamp) < stor20[address(arg1)].field_0:
        revert with 0, 17
    if uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) and 3 * 10^6 > -1 / uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0):
        revert with 0, 17
    if 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) and balanceOf[address(arg1)] > -1 / 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0):
        revert with 0, 17
    if uint128(stor20[address(arg1)].field_0) >> 128 > !(3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) * balanceOf[address(arg1)] / 24 * 3600):
        revert with 0, 17
    if balanceOf[address(arg1)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
        revert with 0, 17
    if (uint128(stor20[address(arg1)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) * balanceOf[address(arg1)] / 24 * 3600) <= 20 * 10^6 * balanceOf[address(arg1)]:
        return ((uint128(stor20[address(arg1)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) * balanceOf[address(arg1)] / 24 * 3600))
    if balanceOf[address(arg1)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
        revert with 0, 17
    return (20 * 10^6 * balanceOf[address(arg1)])
}

function initialize() {
    require msg.sender == owner
    require not uint8(stor12.field_0)
    uint8(stor12.field_0) = 1
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        uint8(stor2.length) = 32
        stor2.length.field_8 = 0
        stor2.length.field_128 = uint128('World of Hunters')
        idx = 0
        while (uint255(stor2.length) * 0.5) + 31 / 32 > idx:
            stor2[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
        uint8(stor2.length) = 32
        stor2.length.field_8 = 0
        stor2.length.field_128 = uint128('World of Hunters')
        idx = 0
        while stor2.length.field_1 + 31 / 32 > idx:
            stor2[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        uint8(stor3.length) = 6
        stor3.length.field_8 = 0
        stor3.length.field_232 = 5721928
        idx = 0
        while (uint255(stor3.length) * 0.5) + 31 / 32 > idx:
            stor3[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        uint8(stor3.length) = 6
        stor3.length.field_8 = 0
        stor3.length.field_232 = 5721928
        idx = 0
        while stor3.length.field_1 + 31 / 32 > idx:
            stor3[idx].field_0 = 0
            idx = idx + 1
            continue 
    mintPrice = 10^18
    genesisSupply = 5000
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[32] = 5
    require ownerOf[arg1]
    if 1 >= sub_9e4df439.length:
        revert with 0, 50
    mem[0] = 13
    mem[96] = 0x3b30414700000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(address(sub_9e4df439.field_256))
    staticcall address(sub_9e4df439.field_256).draw(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 127 < return_data.size + 96
    _7 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _7
    require _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_7)] = mem[_6 + 128 len ceil32(_7)]
    if ceil32(_7) > _7:
        mem[_7 + ceil32(return_data.size) + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _7
    mem[mem[64] + 64 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
    if ceil32(_7) > _7:
        mem[_7 + mem[64] + 64] = 0
    return Array(len=_7, data=mem[mem[64] + 64 len ceil32(_7)])
}

function name() {
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
            mem[(uint255(stor2.length) * 0.5) + ceil32(uint255(stor2.length) * 0.5) + 192] = 0
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
        mem[stor2.length.field_1 + ceil32(stor2.length.field_1) + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function symbol() {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
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
        mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if ownerOf[arg2] != msg.sender:
        revert with 0, 'NOT_OWNER'
    require ownerOf[arg2] == msg.sender
    if not arg1:
        revert with 0, 'Not burnable'
    if not msg.sender:
        if totalSupply == -1:
            revert with 0, 17
        totalSupply++
    else:
        if arg1 != msg.sender:
            if balanceOf[address(msg.sender)] < 1:
                revert with 0, 17
            if balanceOf[address(msg.sender)] - 1 != stor9[arg2]:
                tokenOfOwnerByIndex[address(msg.sender)][stor9[arg2]].field_0 = tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)] - 1].field_0
                stor9[stor8[address(msg.sender)][stor4[address(msg.sender)] - 1].field_0] = stor9[arg2]
            stor9[arg2] = 0
            tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)] - 1].field_0 = 0
    if not arg1:
        if not totalSupply:
            revert with 0, 17
        totalSupply--
    else:
        if arg1 != msg.sender:
            tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)]].field_0 = arg2
            stor9[arg2] = balanceOf[address(arg1)]
    if not balanceOf[address(msg.sender)]:
        revert with 0, 17
    balanceOf[address(msg.sender)]--
    if balanceOf[address(arg1)] == -1:
        revert with 0, 17
    balanceOf[address(arg1)]++
    approved[arg2] = 0
    ownerOf[arg2] = arg1
    emit Transfer(msg.sender, arg1, arg2);
    if msg.sender:
        if stor20[address(msg.sender)].field_0 != uint128(block.timestamp):
            if not stor20[address(msg.sender)].field_0:
                stor20[address(msg.sender)].field_0 = uint128(block.timestamp)
                stor20[address(msg.sender)].field_128 = 0
            else:
                if uint128(block.timestamp) < stor20[address(msg.sender)].field_0:
                    revert with 0, 17
                if uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) and 3 * 10^6 > -1 / uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0):
                    revert with 0, 17
                if 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) and balanceOf[address(msg.sender)] > -1 / 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0):
                    revert with 0, 17
                if uint128(stor20[address(msg.sender)].field_0) >> 128 > !(3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600):
                    revert with 0, 17
                if balanceOf[address(msg.sender)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                    revert with 0, 17
                if (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) <= 20 * 10^6 * balanceOf[address(msg.sender)]:
                    if (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) < 0:
                        revert with 0, 'Insufficient energy'
                    stor20[address(msg.sender)].field_0 = uint128(block.timestamp) or (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) << 128
                else:
                    if balanceOf[address(msg.sender)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                        revert with 0, 17
                    if 20 * 10^6 * balanceOf[address(msg.sender)] < 0:
                        revert with 0, 'Insufficient energy'
                    stor20[address(msg.sender)].field_0 = uint128(block.timestamp) or 20 * 10^6 * balanceOf[address(msg.sender)] << 128
    if stor20[address(arg1)].field_0 != uint128(block.timestamp):
        if not stor20[address(arg1)].field_0:
            stor20[address(arg1)].field_0 = uint128(block.timestamp)
            stor20[address(arg1)].field_128 = 0
        else:
            if uint128(block.timestamp) < stor20[address(arg1)].field_0:
                revert with 0, 17
            if uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) and 3 * 10^6 > -1 / uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0):
                revert with 0, 17
            if 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) and balanceOf[address(arg1)] > -1 / 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0):
                revert with 0, 17
            if uint128(stor20[address(arg1)].field_0) >> 128 > !(3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) * balanceOf[address(arg1)] / 24 * 3600):
                revert with 0, 17
            if balanceOf[address(arg1)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                revert with 0, 17
            if (uint128(stor20[address(arg1)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) * balanceOf[address(arg1)] / 24 * 3600) <= 20 * 10^6 * balanceOf[address(arg1)]:
                if (uint128(stor20[address(arg1)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) * balanceOf[address(arg1)] / 24 * 3600) < 0:
                    revert with 0, 'Insufficient energy'
                stor20[address(arg1)].field_0 = uint128(block.timestamp) or (uint128(stor20[address(arg1)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) * balanceOf[address(arg1)] / 24 * 3600) << 128
            else:
                if balanceOf[address(arg1)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                    revert with 0, 17
                if 20 * 10^6 * balanceOf[address(arg1)] < 0:
                    revert with 0, 'Insufficient energy'
                stor20[address(arg1)].field_0 = uint128(block.timestamp) or 20 * 10^6 * balanceOf[address(arg1)] << 128
}

function sub_e32075fd(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    if not Mask(1, 2, Mask(248, 0, stor12.field_8)):
        revert with 0, 'Invalid state'
    if 2 >= sub_9e4df439.length:
        revert with 0, 50
    if address(sub_9e4df439.field_512) != msg.sender:
        revert with 0, 'Invalid breeder'
    if not arg4:
        if stor20[address(arg1)].field_0 != uint128(block.timestamp):
            if not stor20[address(arg1)].field_0:
                stor20[address(arg1)].field_0 = uint128(block.timestamp)
                stor20[address(arg1)].field_128 = 0
            else:
                if uint128(block.timestamp) < stor20[address(arg1)].field_0:
                    revert with 0, 17
                if uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) and 3 * 10^6 > -1 / uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0):
                    revert with 0, 17
                if 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) and balanceOf[address(arg1)] > -1 / 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0):
                    revert with 0, 17
                if uint128(stor20[address(arg1)].field_0) >> 128 > !(3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) * balanceOf[address(arg1)] / 24 * 3600):
                    revert with 0, 17
                if balanceOf[address(arg1)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                    revert with 0, 17
                if (uint128(stor20[address(arg1)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) * balanceOf[address(arg1)] / 24 * 3600) <= 20 * 10^6 * balanceOf[address(arg1)]:
                    if (uint128(stor20[address(arg1)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) * balanceOf[address(arg1)] / 24 * 3600) < 10 * 10^6:
                        revert with 0, 'Insufficient energy'
                    stor20[address(arg1)].field_0 = uint128(block.timestamp) or (uint128(stor20[address(arg1)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) * balanceOf[address(arg1)] / 24 * 3600) - 10 * 10^6 << 128
                else:
                    if balanceOf[address(arg1)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                        revert with 0, 17
                    if 20 * 10^6 * balanceOf[address(arg1)] < 10 * 10^6:
                        revert with 0, 'Insufficient energy'
                    stor20[address(arg1)].field_0 = uint128(block.timestamp) or (20 * 10^6 * balanceOf[address(arg1)]) - 10 * 10^6 << 128
    else:
        if stor20[address(arg1)].field_0 != uint128(block.timestamp):
            if not stor20[address(arg1)].field_0:
                stor20[address(arg1)].field_0 = uint128(block.timestamp)
                stor20[address(arg1)].field_128 = 0
            else:
                if uint128(block.timestamp) < stor20[address(arg1)].field_0:
                    revert with 0, 17
                if uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) and 3 * 10^6 > -1 / uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0):
                    revert with 0, 17
                if 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) and balanceOf[address(arg1)] > -1 / 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0):
                    revert with 0, 17
                if uint128(stor20[address(arg1)].field_0) >> 128 > !(3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) * balanceOf[address(arg1)] / 24 * 3600):
                    revert with 0, 17
                if balanceOf[address(arg1)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                    revert with 0, 17
                if (uint128(stor20[address(arg1)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) * balanceOf[address(arg1)] / 24 * 3600) <= 20 * 10^6 * balanceOf[address(arg1)]:
                    if (uint128(stor20[address(arg1)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) * balanceOf[address(arg1)] / 24 * 3600) < 20 * 10^6:
                        revert with 0, 'Insufficient energy'
                    stor20[address(arg1)].field_0 = uint128(block.timestamp) or (uint128(stor20[address(arg1)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) * balanceOf[address(arg1)] / 24 * 3600) - 20 * 10^6 << 128
                else:
                    if balanceOf[address(arg1)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                        revert with 0, 17
                    if 20 * 10^6 * balanceOf[address(arg1)] < 20 * 10^6:
                        revert with 0, 'Insufficient energy'
                    stor20[address(arg1)].field_0 = uint128(block.timestamp) or (20 * 10^6 * balanceOf[address(arg1)]) - 20 * 10^6 << 128
        if 1 >= sub_9e4df439.length:
            revert with 0, 50
        require ext_code.size(address(sub_9e4df439.field_256))
        call address(sub_9e4df439.field_256).0xb1b4af09 with:
             gas gas_remaining wei
            args arg2, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 1 >= sub_9e4df439.length:
            revert with 0, 50
        require ext_code.size(address(sub_9e4df439.field_256))
        call address(sub_9e4df439.field_256).0x5939839b with:
             gas gas_remaining wei
            args arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ownerOf[arg4]:
            revert with 0, 'ALREADY_MINTED'
        if not address(arg1):
            revert with 0, 'Not burnable'
        if totalSupply == -1:
            revert with 0, 17
        totalSupply++
        if not address(arg1):
            if not totalSupply:
                revert with 0, 17
            totalSupply--
        else:
            if address(arg1):
                tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)]].field_0 = arg4
                stor9[arg4] = balanceOf[address(arg1)]
        balanceOf[address(arg1)]++
        ownerOf[arg4] = address(arg1)
        emit Transfer(0, address(arg1), arg4);
        if stor20[address(arg1)].field_0 != uint128(block.timestamp):
            if not stor20[address(arg1)].field_0:
                stor20[address(arg1)].field_0 = uint128(block.timestamp)
                stor20[address(arg1)].field_128 = 0
            else:
                if uint128(block.timestamp) < stor20[address(arg1)].field_0:
                    revert with 0, 17
                if uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) and 3 * 10^6 > -1 / uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0):
                    revert with 0, 17
                if 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) and balanceOf[address(arg1)] > -1 / 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0):
                    revert with 0, 17
                if uint128(stor20[address(arg1)].field_0) >> 128 > !(3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) * balanceOf[address(arg1)] / 24 * 3600):
                    revert with 0, 17
                if balanceOf[address(arg1)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                    revert with 0, 17
                if (uint128(stor20[address(arg1)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) * balanceOf[address(arg1)] / 24 * 3600) <= 20 * 10^6 * balanceOf[address(arg1)]:
                    if (uint128(stor20[address(arg1)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) * balanceOf[address(arg1)] / 24 * 3600) < 0:
                        revert with 0, 'Insufficient energy'
                    stor20[address(arg1)].field_0 = uint128(block.timestamp) or (uint128(stor20[address(arg1)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(arg1)].field_0) * balanceOf[address(arg1)] / 24 * 3600) << 128
                else:
                    if balanceOf[address(arg1)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                        revert with 0, 17
                    if 20 * 10^6 * balanceOf[address(arg1)] < 0:
                        revert with 0, 'Insufficient energy'
                    stor20[address(arg1)].field_0 = uint128(block.timestamp) or 20 * 10^6 * balanceOf[address(arg1)] << 128
}

function mintPublic(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not Mask(1, 1, Mask(248, 0, stor12.field_8)):
        revert with 0, 'Invalid state'
    require arg1 <= 10
    if mintPrice and arg1 > -1 / mintPrice:
        revert with 0, 17
    require msg.value >= mintPrice * arg1
    if 1000 <= sub_1313088e:
        if msg.sender != tx.origin:
            revert with 0, 'Invalid sender'
        if sub_1313088e > !arg1:
            revert with 0, 17
        if sub_1313088e + arg1 > genesisSupply:
            revert with 0, 'Insufficient supply'
        if arg1 > test266151307():
            revert with 0, 65
        mem[96] = arg1
        if not arg1:
            if 0 >= sub_9e4df439.length:
                revert with 0, 50
            mem[0] = 13
            mem[(32 * arg1) + 128] = 0x9284409000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1) + 132] = sub_1313088e
            mem[(32 * arg1) + 164] = arg1
            require ext_code.size(address(sub_9e4df439.field_0))
            call address(sub_9e4df439.field_0).0x92844090 with:
                 gas gas_remaining wei
                args sub_1313088e, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg1) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg1) + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _46 = mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32)
            require mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) <= test266151307()
            require (32 * arg1) + return_data.size + 128 > (32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 159
            _61 = mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]
            if mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 1 < 0 or (32 * arg1) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 129 > test266151307():
                revert with 0, 65
            mem[64] = (32 * arg1) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 129
            mem[(32 * arg1) + ceil32(return_data.size) + 128] = mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]
            require _46 + (32 * _61) + 32 <= return_data.size
            mem[(32 * arg1) + ceil32(return_data.size) + 160 len 32 * _61] = mem[(32 * arg1) + _46 + 160 len 32 * _61]
            idx = 0
            while idx < arg1:
                if sub_1313088e > !idx:
                    revert with 0, 17
                if 1 > !(sub_1313088e + idx):
                    revert with 0, 17
                if 1 >= sub_9e4df439.length:
                    revert with 0, 50
                if idx >= mem[(32 * arg1) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                _1368 = mem[(32 * idx) + (32 * arg1) + ceil32(return_data.size) + 160]
                mem[mem[64]] = 0x5939839b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_1313088e + idx + 1
                mem[mem[64] + 36] = _1368
                require ext_code.size(address(sub_9e4df439.field_256))
                call address(sub_9e4df439.field_256).0x5939839b with:
                     gas gas_remaining wei
                    args sub_1313088e + idx + 1, _1368
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ownerOf[uint256(stor19.field_0) + idx + 1]:
                    revert with 0, 'ALREADY_MINTED'
                if not msg.sender:
                    revert with 0, 'Not burnable'
                if totalSupply == -1:
                    revert with 0, 17
                totalSupply++
                if not msg.sender:
                    if not totalSupply:
                        revert with 0, 17
                    totalSupply--
                else:
                    if msg.sender:
                        tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]].field_0 = sub_1313088e + idx + 1
                        stor9[uint256(stor19.field_0) + idx + 1] = balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)]++
                ownerOf[uint256(stor19.field_0) + idx + 1] = msg.sender
                emit Transfer(0, msg.sender, sub_1313088e + idx + 1);
                mem[0] = msg.sender
                mem[32] = 4
                if stor20[address(msg.sender)].field_0 != uint128(block.timestamp):
                    if not stor20[address(msg.sender)].field_0:
                        mem[0] = msg.sender
                        mem[32] = 20
                        stor20[address(msg.sender)].field_0 = uint128(block.timestamp)
                        stor20[address(msg.sender)].field_128 = 0
                    else:
                        if uint128(block.timestamp) < stor20[address(msg.sender)].field_0:
                            revert with 0, 17
                        if uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) and 3 * 10^6 > -1 / uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0):
                            revert with 0, 17
                        if 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) and balanceOf[address(msg.sender)] > -1 / 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0):
                            revert with 0, 17
                        if uint128(stor20[address(msg.sender)].field_0) >> 128 > !(3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600):
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                            revert with 0, 17
                        if (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) <= 20 * 10^6 * balanceOf[address(msg.sender)]:
                            if (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) < 0:
                                revert with 0, 'Insufficient energy'
                            mem[0] = msg.sender
                            mem[32] = 20
                            stor20[address(msg.sender)].field_0 = uint128(block.timestamp) or (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) << 128
                        else:
                            if balanceOf[address(msg.sender)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                                revert with 0, 17
                            if 20 * 10^6 * balanceOf[address(msg.sender)] < 0:
                                revert with 0, 'Insufficient energy'
                            mem[0] = msg.sender
                            mem[32] = 20
                            stor20[address(msg.sender)].field_0 = uint128(block.timestamp) or 20 * 10^6 * balanceOf[address(msg.sender)] << 128
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            mem[128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
            if 0 >= sub_9e4df439.length:
                revert with 0, 50
            mem[0] = 13
            mem[(32 * arg1) + 128] = 0x9284409000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1) + 132] = sub_1313088e
            mem[(32 * arg1) + 164] = arg1
            require ext_code.size(address(sub_9e4df439.field_0))
            call address(sub_9e4df439.field_0).0x92844090 with:
                 gas gas_remaining wei
                args sub_1313088e, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg1) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg1) + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _54 = mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32)
            require mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) <= test266151307()
            require (32 * arg1) + return_data.size + 128 > (32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 159
            _67 = mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]
            if mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 1 < 0 or (32 * arg1) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 129 > test266151307():
                revert with 0, 65
            mem[64] = (32 * arg1) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 129
            mem[(32 * arg1) + ceil32(return_data.size) + 128] = mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]
            require _54 + (32 * _67) + 32 <= return_data.size
            mem[(32 * arg1) + ceil32(return_data.size) + 160 len 32 * _67] = mem[(32 * arg1) + _54 + 160 len 32 * _67]
            idx = 0
            while idx < arg1:
                if sub_1313088e > !idx:
                    revert with 0, 17
                if 1 > !(sub_1313088e + idx):
                    revert with 0, 17
                if 1 >= sub_9e4df439.length:
                    revert with 0, 50
                if idx >= mem[(32 * arg1) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                _1370 = mem[(32 * idx) + (32 * arg1) + ceil32(return_data.size) + 160]
                mem[mem[64]] = 0x5939839b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_1313088e + idx + 1
                mem[mem[64] + 36] = _1370
                require ext_code.size(address(sub_9e4df439.field_256))
                call address(sub_9e4df439.field_256).0x5939839b with:
                     gas gas_remaining wei
                    args sub_1313088e + idx + 1, _1370
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ownerOf[uint256(stor19.field_0) + idx + 1]:
                    revert with 0, 'ALREADY_MINTED'
                if not msg.sender:
                    revert with 0, 'Not burnable'
                if totalSupply == -1:
                    revert with 0, 17
                totalSupply++
                if not msg.sender:
                    if not totalSupply:
                        revert with 0, 17
                    totalSupply--
                else:
                    if msg.sender:
                        tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]].field_0 = sub_1313088e + idx + 1
                        stor9[uint256(stor19.field_0) + idx + 1] = balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)]++
                ownerOf[uint256(stor19.field_0) + idx + 1] = msg.sender
                emit Transfer(0, msg.sender, sub_1313088e + idx + 1);
                mem[0] = msg.sender
                mem[32] = 4
                if stor20[address(msg.sender)].field_0 != uint128(block.timestamp):
                    if not stor20[address(msg.sender)].field_0:
                        mem[0] = msg.sender
                        mem[32] = 20
                        stor20[address(msg.sender)].field_0 = uint128(block.timestamp)
                        stor20[address(msg.sender)].field_128 = 0
                    else:
                        if uint128(block.timestamp) < stor20[address(msg.sender)].field_0:
                            revert with 0, 17
                        if uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) and 3 * 10^6 > -1 / uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0):
                            revert with 0, 17
                        if 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) and balanceOf[address(msg.sender)] > -1 / 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0):
                            revert with 0, 17
                        if uint128(stor20[address(msg.sender)].field_0) >> 128 > !(3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600):
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                            revert with 0, 17
                        if (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) <= 20 * 10^6 * balanceOf[address(msg.sender)]:
                            if (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) < 0:
                                revert with 0, 'Insufficient energy'
                            mem[0] = msg.sender
                            mem[32] = 20
                            stor20[address(msg.sender)].field_0 = uint128(block.timestamp) or (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) << 128
                        else:
                            if balanceOf[address(msg.sender)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                                revert with 0, 17
                            if 20 * 10^6 * balanceOf[address(msg.sender)] < 0:
                                revert with 0, 'Insufficient energy'
                            mem[0] = msg.sender
                            mem[32] = 20
                            stor20[address(msg.sender)].field_0 = uint128(block.timestamp) or 20 * 10^6 * balanceOf[address(msg.sender)] << 128
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        if sub_1313088e > !arg1:
            revert with 0, 17
        sub_1313088e += arg1
    else:
        if arg1 < 2:
            if msg.sender != tx.origin:
                revert with 0, 'Invalid sender'
            if sub_1313088e > !arg1:
                revert with 0, 17
            if sub_1313088e + arg1 > genesisSupply:
                revert with 0, 'Insufficient supply'
            if arg1 > test266151307():
                revert with 0, 65
            mem[96] = arg1
            if not arg1:
                if 0 >= sub_9e4df439.length:
                    revert with 0, 50
                mem[0] = 13
                mem[(32 * arg1) + 128] = 0x9284409000000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1) + 132] = sub_1313088e
                mem[(32 * arg1) + 164] = arg1
                require ext_code.size(address(sub_9e4df439.field_0))
                call address(sub_9e4df439.field_0).0x92844090 with:
                     gas gas_remaining wei
                    args sub_1313088e, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg1) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * arg1) + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _55 = mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32)
                require mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) <= test266151307()
                require (32 * arg1) + return_data.size + 128 > (32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 159
                _68 = mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]
                if mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 1 < 0 or (32 * arg1) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (32 * arg1) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 129
                mem[(32 * arg1) + ceil32(return_data.size) + 128] = mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]
                require _55 + (32 * _68) + 32 <= return_data.size
                mem[(32 * arg1) + ceil32(return_data.size) + 160 len 32 * _68] = mem[(32 * arg1) + _55 + 160 len 32 * _68]
                idx = 0
                while idx < arg1:
                    if sub_1313088e > !idx:
                        revert with 0, 17
                    if 1 > !(sub_1313088e + idx):
                        revert with 0, 17
                    if 1 >= sub_9e4df439.length:
                        revert with 0, 50
                    if idx >= mem[(32 * arg1) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    _1372 = mem[(32 * idx) + (32 * arg1) + ceil32(return_data.size) + 160]
                    mem[mem[64]] = 0x5939839b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_1313088e + idx + 1
                    mem[mem[64] + 36] = _1372
                    require ext_code.size(address(sub_9e4df439.field_256))
                    call address(sub_9e4df439.field_256).0x5939839b with:
                         gas gas_remaining wei
                        args sub_1313088e + idx + 1, _1372
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ownerOf[uint256(stor19.field_0) + idx + 1]:
                        revert with 0, 'ALREADY_MINTED'
                    if not msg.sender:
                        revert with 0, 'Not burnable'
                    if totalSupply == -1:
                        revert with 0, 17
                    totalSupply++
                    if not msg.sender:
                        if not totalSupply:
                            revert with 0, 17
                        totalSupply--
                    else:
                        if msg.sender:
                            tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]].field_0 = sub_1313088e + idx + 1
                            stor9[uint256(stor19.field_0) + idx + 1] = balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)]++
                    ownerOf[uint256(stor19.field_0) + idx + 1] = msg.sender
                    emit Transfer(0, msg.sender, sub_1313088e + idx + 1);
                    mem[0] = msg.sender
                    mem[32] = 4
                    if stor20[address(msg.sender)].field_0 != uint128(block.timestamp):
                        if not stor20[address(msg.sender)].field_0:
                            mem[0] = msg.sender
                            mem[32] = 20
                            stor20[address(msg.sender)].field_0 = uint128(block.timestamp)
                            stor20[address(msg.sender)].field_128 = 0
                        else:
                            if uint128(block.timestamp) < stor20[address(msg.sender)].field_0:
                                revert with 0, 17
                            if uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) and 3 * 10^6 > -1 / uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0):
                                revert with 0, 17
                            if 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) and balanceOf[address(msg.sender)] > -1 / 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0):
                                revert with 0, 17
                            if uint128(stor20[address(msg.sender)].field_0) >> 128 > !(3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600):
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                                revert with 0, 17
                            if (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) <= 20 * 10^6 * balanceOf[address(msg.sender)]:
                                if (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) < 0:
                                    revert with 0, 'Insufficient energy'
                                mem[0] = msg.sender
                                mem[32] = 20
                                stor20[address(msg.sender)].field_0 = uint128(block.timestamp) or (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) << 128
                            else:
                                if balanceOf[address(msg.sender)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                                    revert with 0, 17
                                if 20 * 10^6 * balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'Insufficient energy'
                                mem[0] = msg.sender
                                mem[32] = 20
                                stor20[address(msg.sender)].field_0 = uint128(block.timestamp) or 20 * 10^6 * balanceOf[address(msg.sender)] << 128
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                mem[128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
                if 0 >= sub_9e4df439.length:
                    revert with 0, 50
                mem[0] = 13
                mem[(32 * arg1) + 128] = 0x9284409000000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1) + 132] = sub_1313088e
                mem[(32 * arg1) + 164] = arg1
                require ext_code.size(address(sub_9e4df439.field_0))
                call address(sub_9e4df439.field_0).0x92844090 with:
                     gas gas_remaining wei
                    args sub_1313088e, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg1) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * arg1) + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _62 = mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32)
                require mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) <= test266151307()
                require (32 * arg1) + return_data.size + 128 > (32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 159
                _76 = mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]
                if mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 1 < 0 or (32 * arg1) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (32 * arg1) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 129
                mem[(32 * arg1) + ceil32(return_data.size) + 128] = mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]
                require _62 + (32 * _76) + 32 <= return_data.size
                mem[(32 * arg1) + ceil32(return_data.size) + 160 len 32 * _76] = mem[(32 * arg1) + _62 + 160 len 32 * _76]
                idx = 0
                while idx < arg1:
                    if sub_1313088e > !idx:
                        revert with 0, 17
                    if 1 > !(sub_1313088e + idx):
                        revert with 0, 17
                    if 1 >= sub_9e4df439.length:
                        revert with 0, 50
                    if idx >= mem[(32 * arg1) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    _1374 = mem[(32 * idx) + (32 * arg1) + ceil32(return_data.size) + 160]
                    mem[mem[64]] = 0x5939839b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_1313088e + idx + 1
                    mem[mem[64] + 36] = _1374
                    require ext_code.size(address(sub_9e4df439.field_256))
                    call address(sub_9e4df439.field_256).0x5939839b with:
                         gas gas_remaining wei
                        args sub_1313088e + idx + 1, _1374
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ownerOf[uint256(stor19.field_0) + idx + 1]:
                        revert with 0, 'ALREADY_MINTED'
                    if not msg.sender:
                        revert with 0, 'Not burnable'
                    if totalSupply == -1:
                        revert with 0, 17
                    totalSupply++
                    if not msg.sender:
                        if not totalSupply:
                            revert with 0, 17
                        totalSupply--
                    else:
                        if msg.sender:
                            tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]].field_0 = sub_1313088e + idx + 1
                            stor9[uint256(stor19.field_0) + idx + 1] = balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)]++
                    ownerOf[uint256(stor19.field_0) + idx + 1] = msg.sender
                    emit Transfer(0, msg.sender, sub_1313088e + idx + 1);
                    mem[0] = msg.sender
                    mem[32] = 4
                    if stor20[address(msg.sender)].field_0 != uint128(block.timestamp):
                        if not stor20[address(msg.sender)].field_0:
                            mem[0] = msg.sender
                            mem[32] = 20
                            stor20[address(msg.sender)].field_0 = uint128(block.timestamp)
                            stor20[address(msg.sender)].field_128 = 0
                        else:
                            if uint128(block.timestamp) < stor20[address(msg.sender)].field_0:
                                revert with 0, 17
                            if uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) and 3 * 10^6 > -1 / uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0):
                                revert with 0, 17
                            if 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) and balanceOf[address(msg.sender)] > -1 / 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0):
                                revert with 0, 17
                            if uint128(stor20[address(msg.sender)].field_0) >> 128 > !(3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600):
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                                revert with 0, 17
                            if (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) <= 20 * 10^6 * balanceOf[address(msg.sender)]:
                                if (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) < 0:
                                    revert with 0, 'Insufficient energy'
                                mem[0] = msg.sender
                                mem[32] = 20
                                stor20[address(msg.sender)].field_0 = uint128(block.timestamp) or (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) << 128
                            else:
                                if balanceOf[address(msg.sender)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                                    revert with 0, 17
                                if 20 * 10^6 * balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'Insufficient energy'
                                mem[0] = msg.sender
                                mem[32] = 20
                                stor20[address(msg.sender)].field_0 = uint128(block.timestamp) or 20 * 10^6 * balanceOf[address(msg.sender)] << 128
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            if sub_1313088e > !arg1:
                revert with 0, 17
            sub_1313088e += arg1
        else:
            if arg1 > 2:
                if arg1 > -2:
                    revert with 0, 17
                if msg.sender != tx.origin:
                    revert with 0, 'Invalid sender'
                if sub_1313088e > !(arg1 + 1):
                    revert with 0, 17
                if sub_1313088e + arg1 + 1 > genesisSupply:
                    revert with 0, 'Insufficient supply'
                if arg1 + 1 > test266151307():
                    revert with 0, 65
                mem[96] = arg1 + 1
                if not arg1 + 1:
                    if 0 >= sub_9e4df439.length:
                        revert with 0, 50
                    mem[0] = 13
                    mem[(32 * arg1 + 1) + 128] = 0x9284409000000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg1 + 1) + 132] = sub_1313088e
                    mem[(32 * arg1 + 1) + 164] = arg1 + 1
                    require ext_code.size(address(sub_9e4df439.field_0))
                    call address(sub_9e4df439.field_0).0x92844090 with:
                         gas gas_remaining wei
                        args sub_1313088e, arg1 + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * arg1 + 1) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * arg1 + 1) + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _95 = mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32)
                    require mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) <= test266151307()
                    require (32 * arg1 + 1) + return_data.size + 128 > (32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 159
                    _105 = mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]
                    if mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 1 < 0 or (32 * arg1 + 1) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (32 * arg1 + 1) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 129
                    mem[(32 * arg1 + 1) + ceil32(return_data.size) + 128] = mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]
                    require _95 + (32 * _105) + 32 <= return_data.size
                    mem[(32 * arg1 + 1) + ceil32(return_data.size) + 160 len 32 * _105] = mem[(32 * arg1 + 1) + _95 + 160 len 32 * _105]
                    idx = 0
                    while idx < arg1 + 1:
                        if sub_1313088e > !idx:
                            revert with 0, 17
                        if 1 > !(sub_1313088e + idx):
                            revert with 0, 17
                        if 1 >= sub_9e4df439.length:
                            revert with 0, 50
                        if idx >= mem[(32 * arg1 + 1) + ceil32(return_data.size) + 128]:
                            revert with 0, 50
                        _1388 = mem[(32 * idx) + (32 * arg1 + 1) + ceil32(return_data.size) + 160]
                        mem[mem[64]] = 0x5939839b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = sub_1313088e + idx + 1
                        mem[mem[64] + 36] = _1388
                        require ext_code.size(address(sub_9e4df439.field_256))
                        call address(sub_9e4df439.field_256).0x5939839b with:
                             gas gas_remaining wei
                            args sub_1313088e + idx + 1, _1388
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ownerOf[uint256(stor19.field_0) + idx + 1]:
                            revert with 0, 'ALREADY_MINTED'
                        if not msg.sender:
                            revert with 0, 'Not burnable'
                        if totalSupply == -1:
                            revert with 0, 17
                        totalSupply++
                        if not msg.sender:
                            if not totalSupply:
                                revert with 0, 17
                            totalSupply--
                        else:
                            if msg.sender:
                                tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]].field_0 = sub_1313088e + idx + 1
                                stor9[uint256(stor19.field_0) + idx + 1] = balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)]++
                        ownerOf[uint256(stor19.field_0) + idx + 1] = msg.sender
                        emit Transfer(0, msg.sender, sub_1313088e + idx + 1);
                        mem[0] = msg.sender
                        mem[32] = 4
                        if stor20[address(msg.sender)].field_0 != uint128(block.timestamp):
                            if not stor20[address(msg.sender)].field_0:
                                mem[0] = msg.sender
                                mem[32] = 20
                                stor20[address(msg.sender)].field_0 = uint128(block.timestamp)
                                stor20[address(msg.sender)].field_128 = 0
                            else:
                                if uint128(block.timestamp) < stor20[address(msg.sender)].field_0:
                                    revert with 0, 17
                                if uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) and 3 * 10^6 > -1 / uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0):
                                    revert with 0, 17
                                if 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) and balanceOf[address(msg.sender)] > -1 / 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0):
                                    revert with 0, 17
                                if uint128(stor20[address(msg.sender)].field_0) >> 128 > !(3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600):
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                                    revert with 0, 17
                                if (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) <= 20 * 10^6 * balanceOf[address(msg.sender)]:
                                    if (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) < 0:
                                        revert with 0, 'Insufficient energy'
                                    mem[0] = msg.sender
                                    mem[32] = 20
                                    stor20[address(msg.sender)].field_0 = uint128(block.timestamp) or (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) << 128
                                else:
                                    if balanceOf[address(msg.sender)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                                        revert with 0, 17
                                    if 20 * 10^6 * balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'Insufficient energy'
                                    mem[0] = msg.sender
                                    mem[32] = 20
                                    stor20[address(msg.sender)].field_0 = uint128(block.timestamp) or 20 * 10^6 * balanceOf[address(msg.sender)] << 128
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    mem[128 len 32 * arg1 + 1] = call.data[calldata.size len 32 * arg1 + 1]
                    if 0 >= sub_9e4df439.length:
                        revert with 0, 50
                    mem[0] = 13
                    mem[(32 * arg1 + 1) + 128] = 0x9284409000000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg1 + 1) + 132] = sub_1313088e
                    mem[(32 * arg1 + 1) + 164] = arg1 + 1
                    require ext_code.size(address(sub_9e4df439.field_0))
                    call address(sub_9e4df439.field_0).0x92844090 with:
                         gas gas_remaining wei
                        args sub_1313088e, arg1 + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * arg1 + 1) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * arg1 + 1) + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _101 = mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32)
                    require mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) <= test266151307()
                    require (32 * arg1 + 1) + return_data.size + 128 > (32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 159
                    _108 = mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]
                    if mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 1 < 0 or (32 * arg1 + 1) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (32 * arg1 + 1) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 129
                    mem[(32 * arg1 + 1) + ceil32(return_data.size) + 128] = mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]
                    require _101 + (32 * _108) + 32 <= return_data.size
                    mem[(32 * arg1 + 1) + ceil32(return_data.size) + 160 len 32 * _108] = mem[(32 * arg1 + 1) + _101 + 160 len 32 * _108]
                    idx = 0
                    while idx < arg1 + 1:
                        if sub_1313088e > !idx:
                            revert with 0, 17
                        if 1 > !(sub_1313088e + idx):
                            revert with 0, 17
                        if 1 >= sub_9e4df439.length:
                            revert with 0, 50
                        if idx >= mem[(32 * arg1 + 1) + ceil32(return_data.size) + 128]:
                            revert with 0, 50
                        _1390 = mem[(32 * idx) + (32 * arg1 + 1) + ceil32(return_data.size) + 160]
                        mem[mem[64]] = 0x5939839b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = sub_1313088e + idx + 1
                        mem[mem[64] + 36] = _1390
                        require ext_code.size(address(sub_9e4df439.field_256))
                        call address(sub_9e4df439.field_256).0x5939839b with:
                             gas gas_remaining wei
                            args sub_1313088e + idx + 1, _1390
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ownerOf[uint256(stor19.field_0) + idx + 1]:
                            revert with 0, 'ALREADY_MINTED'
                        if not msg.sender:
                            revert with 0, 'Not burnable'
                        if totalSupply == -1:
                            revert with 0, 17
                        totalSupply++
                        if not msg.sender:
                            if not totalSupply:
                                revert with 0, 17
                            totalSupply--
                        else:
                            if msg.sender:
                                tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]].field_0 = sub_1313088e + idx + 1
                                stor9[uint256(stor19.field_0) + idx + 1] = balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)]++
                        ownerOf[uint256(stor19.field_0) + idx + 1] = msg.sender
                        emit Transfer(0, msg.sender, sub_1313088e + idx + 1);
                        mem[0] = msg.sender
                        mem[32] = 4
                        if stor20[address(msg.sender)].field_0 != uint128(block.timestamp):
                            if not stor20[address(msg.sender)].field_0:
                                mem[0] = msg.sender
                                mem[32] = 20
                                stor20[address(msg.sender)].field_0 = uint128(block.timestamp)
                                stor20[address(msg.sender)].field_128 = 0
                            else:
                                if uint128(block.timestamp) < stor20[address(msg.sender)].field_0:
                                    revert with 0, 17
                                if uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) and 3 * 10^6 > -1 / uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0):
                                    revert with 0, 17
                                if 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) and balanceOf[address(msg.sender)] > -1 / 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0):
                                    revert with 0, 17
                                if uint128(stor20[address(msg.sender)].field_0) >> 128 > !(3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600):
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                                    revert with 0, 17
                                if (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) <= 20 * 10^6 * balanceOf[address(msg.sender)]:
                                    if (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) < 0:
                                        revert with 0, 'Insufficient energy'
                                    mem[0] = msg.sender
                                    mem[32] = 20
                                    stor20[address(msg.sender)].field_0 = uint128(block.timestamp) or (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) << 128
                                else:
                                    if balanceOf[address(msg.sender)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                                        revert with 0, 17
                                    if 20 * 10^6 * balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'Insufficient energy'
                                    mem[0] = msg.sender
                                    mem[32] = 20
                                    stor20[address(msg.sender)].field_0 = uint128(block.timestamp) or 20 * 10^6 * balanceOf[address(msg.sender)] << 128
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                if sub_1313088e > !(arg1 + 1):
                    revert with 0, 17
                sub_1313088e = sub_1313088e + arg1 + 1
            else:
                if 3 <= balanceOf[msg.sender]:
                    if arg1 > -2:
                        revert with 0, 17
                    if msg.sender != tx.origin:
                        revert with 0, 'Invalid sender'
                    if sub_1313088e > !(arg1 + 1):
                        revert with 0, 17
                    if sub_1313088e + arg1 + 1 > genesisSupply:
                        revert with 0, 'Insufficient supply'
                    if arg1 + 1 > test266151307():
                        revert with 0, 65
                    mem[96] = arg1 + 1
                    if not arg1 + 1:
                        if 0 >= sub_9e4df439.length:
                            revert with 0, 50
                        mem[0] = 13
                        mem[(32 * arg1 + 1) + 128] = 0x9284409000000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg1 + 1) + 132] = sub_1313088e
                        mem[(32 * arg1 + 1) + 164] = arg1 + 1
                        require ext_code.size(address(sub_9e4df439.field_0))
                        call address(sub_9e4df439.field_0).0x92844090 with:
                             gas gas_remaining wei
                            args sub_1313088e, arg1 + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * arg1 + 1) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * arg1 + 1) + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        _100 = mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32)
                        require mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) <= test266151307()
                        require (32 * arg1 + 1) + return_data.size + 128 > (32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 159
                        _107 = mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]
                        if mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 1 < 0 or (32 * arg1 + 1) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 129 > test266151307():
                            revert with 0, 65
                        mem[64] = (32 * arg1 + 1) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 129
                        mem[(32 * arg1 + 1) + ceil32(return_data.size) + 128] = mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]
                        require _100 + (32 * _107) + 32 <= return_data.size
                        mem[(32 * arg1 + 1) + ceil32(return_data.size) + 160 len 32 * _107] = mem[(32 * arg1 + 1) + _100 + 160 len 32 * _107]
                        idx = 0
                        while idx < arg1 + 1:
                            if sub_1313088e > !idx:
                                revert with 0, 17
                            if 1 > !(sub_1313088e + idx):
                                revert with 0, 17
                            if 1 >= sub_9e4df439.length:
                                revert with 0, 50
                            if idx >= mem[(32 * arg1 + 1) + ceil32(return_data.size) + 128]:
                                revert with 0, 50
                            _1384 = mem[(32 * idx) + (32 * arg1 + 1) + ceil32(return_data.size) + 160]
                            mem[mem[64]] = 0x5939839b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = sub_1313088e + idx + 1
                            mem[mem[64] + 36] = _1384
                            require ext_code.size(address(sub_9e4df439.field_256))
                            call address(sub_9e4df439.field_256).0x5939839b with:
                                 gas gas_remaining wei
                                args sub_1313088e + idx + 1, _1384
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ownerOf[uint256(stor19.field_0) + idx + 1]:
                                revert with 0, 'ALREADY_MINTED'
                            if not msg.sender:
                                revert with 0, 'Not burnable'
                            if totalSupply == -1:
                                revert with 0, 17
                            totalSupply++
                            if not msg.sender:
                                if not totalSupply:
                                    revert with 0, 17
                                totalSupply--
                            else:
                                if msg.sender:
                                    tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]].field_0 = sub_1313088e + idx + 1
                                    stor9[uint256(stor19.field_0) + idx + 1] = balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)]++
                            ownerOf[uint256(stor19.field_0) + idx + 1] = msg.sender
                            emit Transfer(0, msg.sender, sub_1313088e + idx + 1);
                            mem[0] = msg.sender
                            mem[32] = 4
                            if stor20[address(msg.sender)].field_0 != uint128(block.timestamp):
                                if not stor20[address(msg.sender)].field_0:
                                    mem[0] = msg.sender
                                    mem[32] = 20
                                    stor20[address(msg.sender)].field_0 = uint128(block.timestamp)
                                    stor20[address(msg.sender)].field_128 = 0
                                else:
                                    if uint128(block.timestamp) < stor20[address(msg.sender)].field_0:
                                        revert with 0, 17
                                    if uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) and 3 * 10^6 > -1 / uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0):
                                        revert with 0, 17
                                    if 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) and balanceOf[address(msg.sender)] > -1 / 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0):
                                        revert with 0, 17
                                    if uint128(stor20[address(msg.sender)].field_0) >> 128 > !(3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600):
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                                        revert with 0, 17
                                    if (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) <= 20 * 10^6 * balanceOf[address(msg.sender)]:
                                        if (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) < 0:
                                            revert with 0, 'Insufficient energy'
                                        mem[0] = msg.sender
                                        mem[32] = 20
                                        stor20[address(msg.sender)].field_0 = uint128(block.timestamp) or (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) << 128
                                    else:
                                        if balanceOf[address(msg.sender)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                                            revert with 0, 17
                                        if 20 * 10^6 * balanceOf[address(msg.sender)] < 0:
                                            revert with 0, 'Insufficient energy'
                                        mem[0] = msg.sender
                                        mem[32] = 20
                                        stor20[address(msg.sender)].field_0 = uint128(block.timestamp) or 20 * 10^6 * balanceOf[address(msg.sender)] << 128
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[128 len 32 * arg1 + 1] = call.data[calldata.size len 32 * arg1 + 1]
                        if 0 >= sub_9e4df439.length:
                            revert with 0, 50
                        mem[0] = 13
                        mem[(32 * arg1 + 1) + 128] = 0x9284409000000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg1 + 1) + 132] = sub_1313088e
                        mem[(32 * arg1 + 1) + 164] = arg1 + 1
                        require ext_code.size(address(sub_9e4df439.field_0))
                        call address(sub_9e4df439.field_0).0x92844090 with:
                             gas gas_remaining wei
                            args sub_1313088e, arg1 + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * arg1 + 1) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * arg1 + 1) + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        _104 = mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32)
                        require mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) <= test266151307()
                        require (32 * arg1 + 1) + return_data.size + 128 > (32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 159
                        _111 = mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]
                        if mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 1 < 0 or (32 * arg1 + 1) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 129 > test266151307():
                            revert with 0, 65
                        mem[64] = (32 * arg1 + 1) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 129
                        mem[(32 * arg1 + 1) + ceil32(return_data.size) + 128] = mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]
                        require _104 + (32 * _111) + 32 <= return_data.size
                        mem[(32 * arg1 + 1) + ceil32(return_data.size) + 160 len 32 * _111] = mem[(32 * arg1 + 1) + _104 + 160 len 32 * _111]
                        idx = 0
                        while idx < arg1 + 1:
                            if sub_1313088e > !idx:
                                revert with 0, 17
                            if 1 > !(sub_1313088e + idx):
                                revert with 0, 17
                            if 1 >= sub_9e4df439.length:
                                revert with 0, 50
                            if idx >= mem[(32 * arg1 + 1) + ceil32(return_data.size) + 128]:
                                revert with 0, 50
                            _1386 = mem[(32 * idx) + (32 * arg1 + 1) + ceil32(return_data.size) + 160]
                            mem[mem[64]] = 0x5939839b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = sub_1313088e + idx + 1
                            mem[mem[64] + 36] = _1386
                            require ext_code.size(address(sub_9e4df439.field_256))
                            call address(sub_9e4df439.field_256).0x5939839b with:
                                 gas gas_remaining wei
                                args sub_1313088e + idx + 1, _1386
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ownerOf[uint256(stor19.field_0) + idx + 1]:
                                revert with 0, 'ALREADY_MINTED'
                            if not msg.sender:
                                revert with 0, 'Not burnable'
                            if totalSupply == -1:
                                revert with 0, 17
                            totalSupply++
                            if not msg.sender:
                                if not totalSupply:
                                    revert with 0, 17
                                totalSupply--
                            else:
                                if msg.sender:
                                    tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]].field_0 = sub_1313088e + idx + 1
                                    stor9[uint256(stor19.field_0) + idx + 1] = balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)]++
                            ownerOf[uint256(stor19.field_0) + idx + 1] = msg.sender
                            emit Transfer(0, msg.sender, sub_1313088e + idx + 1);
                            mem[0] = msg.sender
                            mem[32] = 4
                            if stor20[address(msg.sender)].field_0 != uint128(block.timestamp):
                                if not stor20[address(msg.sender)].field_0:
                                    mem[0] = msg.sender
                                    mem[32] = 20
                                    stor20[address(msg.sender)].field_0 = uint128(block.timestamp)
                                    stor20[address(msg.sender)].field_128 = 0
                                else:
                                    if uint128(block.timestamp) < stor20[address(msg.sender)].field_0:
                                        revert with 0, 17
                                    if uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) and 3 * 10^6 > -1 / uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0):
                                        revert with 0, 17
                                    if 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) and balanceOf[address(msg.sender)] > -1 / 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0):
                                        revert with 0, 17
                                    if uint128(stor20[address(msg.sender)].field_0) >> 128 > !(3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600):
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                                        revert with 0, 17
                                    if (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) <= 20 * 10^6 * balanceOf[address(msg.sender)]:
                                        if (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) < 0:
                                            revert with 0, 'Insufficient energy'
                                        mem[0] = msg.sender
                                        mem[32] = 20
                                        stor20[address(msg.sender)].field_0 = uint128(block.timestamp) or (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) << 128
                                    else:
                                        if balanceOf[address(msg.sender)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                                            revert with 0, 17
                                        if 20 * 10^6 * balanceOf[address(msg.sender)] < 0:
                                            revert with 0, 'Insufficient energy'
                                        mem[0] = msg.sender
                                        mem[32] = 20
                                        stor20[address(msg.sender)].field_0 = uint128(block.timestamp) or 20 * 10^6 * balanceOf[address(msg.sender)] << 128
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    if sub_1313088e > !(arg1 + 1):
                        revert with 0, 17
                    sub_1313088e = sub_1313088e + arg1 + 1
                else:
                    if not stor15[msg.sender]:
                        if msg.sender != tx.origin:
                            revert with 0, 'Invalid sender'
                        if sub_1313088e > !arg1:
                            revert with 0, 17
                        if sub_1313088e + arg1 > genesisSupply:
                            revert with 0, 'Insufficient supply'
                        if arg1 > test266151307():
                            revert with 0, 65
                        mem[96] = arg1
                        if not arg1:
                            if 0 >= sub_9e4df439.length:
                                revert with 0, 50
                            mem[0] = 13
                            mem[(32 * arg1) + 128] = 0x9284409000000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg1) + 132] = sub_1313088e
                            mem[(32 * arg1) + 164] = arg1
                            require ext_code.size(address(sub_9e4df439.field_0))
                            call address(sub_9e4df439.field_0).0x92844090 with:
                                 gas gas_remaining wei
                                args sub_1313088e, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * arg1) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * arg1) + ceil32(return_data.size) + 128
                            require return_data.size >= 32
                            _77 = mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32)
                            require mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) <= test266151307()
                            require (32 * arg1) + return_data.size + 128 > (32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 159
                            _92 = mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]
                            if mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 1 < 0 or (32 * arg1) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 129 > test266151307():
                                revert with 0, 65
                            mem[64] = (32 * arg1) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 129
                            mem[(32 * arg1) + ceil32(return_data.size) + 128] = mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]
                            require _77 + (32 * _92) + 32 <= return_data.size
                            mem[(32 * arg1) + ceil32(return_data.size) + 160 len 32 * _92] = mem[(32 * arg1) + _77 + 160 len 32 * _92]
                            idx = 0
                            while idx < arg1:
                                if sub_1313088e > !idx:
                                    revert with 0, 17
                                if 1 > !(sub_1313088e + idx):
                                    revert with 0, 17
                                if 1 >= sub_9e4df439.length:
                                    revert with 0, 50
                                if idx >= mem[(32 * arg1) + ceil32(return_data.size) + 128]:
                                    revert with 0, 50
                                _1376 = mem[(32 * idx) + (32 * arg1) + ceil32(return_data.size) + 160]
                                mem[mem[64]] = 0x5939839b00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = sub_1313088e + idx + 1
                                mem[mem[64] + 36] = _1376
                                require ext_code.size(address(sub_9e4df439.field_256))
                                call address(sub_9e4df439.field_256).0x5939839b with:
                                     gas gas_remaining wei
                                    args sub_1313088e + idx + 1, _1376
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ownerOf[uint256(stor19.field_0) + idx + 1]:
                                    revert with 0, 'ALREADY_MINTED'
                                if not msg.sender:
                                    revert with 0, 'Not burnable'
                                if totalSupply == -1:
                                    revert with 0, 17
                                totalSupply++
                                if not msg.sender:
                                    if not totalSupply:
                                        revert with 0, 17
                                    totalSupply--
                                else:
                                    if msg.sender:
                                        tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]].field_0 = sub_1313088e + idx + 1
                                        stor9[uint256(stor19.field_0) + idx + 1] = balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)]++
                                ownerOf[uint256(stor19.field_0) + idx + 1] = msg.sender
                                emit Transfer(0, msg.sender, sub_1313088e + idx + 1);
                                mem[0] = msg.sender
                                mem[32] = 4
                                if stor20[address(msg.sender)].field_0 != uint128(block.timestamp):
                                    if not stor20[address(msg.sender)].field_0:
                                        mem[0] = msg.sender
                                        mem[32] = 20
                                        stor20[address(msg.sender)].field_0 = uint128(block.timestamp)
                                        stor20[address(msg.sender)].field_128 = 0
                                    else:
                                        if uint128(block.timestamp) < stor20[address(msg.sender)].field_0:
                                            revert with 0, 17
                                        if uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) and 3 * 10^6 > -1 / uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0):
                                            revert with 0, 17
                                        if 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) and balanceOf[address(msg.sender)] > -1 / 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0):
                                            revert with 0, 17
                                        if uint128(stor20[address(msg.sender)].field_0) >> 128 > !(3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600):
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                                            revert with 0, 17
                                        if (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) <= 20 * 10^6 * balanceOf[address(msg.sender)]:
                                            if (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) < 0:
                                                revert with 0, 'Insufficient energy'
                                            mem[0] = msg.sender
                                            mem[32] = 20
                                            stor20[address(msg.sender)].field_0 = uint128(block.timestamp) or (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) << 128
                                        else:
                                            if balanceOf[address(msg.sender)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                                                revert with 0, 17
                                            if 20 * 10^6 * balanceOf[address(msg.sender)] < 0:
                                                revert with 0, 'Insufficient energy'
                                            mem[0] = msg.sender
                                            mem[32] = 20
                                            stor20[address(msg.sender)].field_0 = uint128(block.timestamp) or 20 * 10^6 * balanceOf[address(msg.sender)] << 128
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            mem[128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
                            if 0 >= sub_9e4df439.length:
                                revert with 0, 50
                            mem[0] = 13
                            mem[(32 * arg1) + 128] = 0x9284409000000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg1) + 132] = sub_1313088e
                            mem[(32 * arg1) + 164] = arg1
                            require ext_code.size(address(sub_9e4df439.field_0))
                            call address(sub_9e4df439.field_0).0x92844090 with:
                                 gas gas_remaining wei
                                args sub_1313088e, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * arg1) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * arg1) + ceil32(return_data.size) + 128
                            require return_data.size >= 32
                            _85 = mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32)
                            require mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) <= test266151307()
                            require (32 * arg1) + return_data.size + 128 > (32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 159
                            _98 = mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]
                            if mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 1 < 0 or (32 * arg1) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 129 > test266151307():
                                revert with 0, 65
                            mem[64] = (32 * arg1) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 129
                            mem[(32 * arg1) + ceil32(return_data.size) + 128] = mem[(32 * arg1) + mem[(32 * arg1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]
                            require _85 + (32 * _98) + 32 <= return_data.size
                            mem[(32 * arg1) + ceil32(return_data.size) + 160 len 32 * _98] = mem[(32 * arg1) + _85 + 160 len 32 * _98]
                            idx = 0
                            while idx < arg1:
                                if sub_1313088e > !idx:
                                    revert with 0, 17
                                if 1 > !(sub_1313088e + idx):
                                    revert with 0, 17
                                if 1 >= sub_9e4df439.length:
                                    revert with 0, 50
                                if idx >= mem[(32 * arg1) + ceil32(return_data.size) + 128]:
                                    revert with 0, 50
                                _1378 = mem[(32 * idx) + (32 * arg1) + ceil32(return_data.size) + 160]
                                mem[mem[64]] = 0x5939839b00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = sub_1313088e + idx + 1
                                mem[mem[64] + 36] = _1378
                                require ext_code.size(address(sub_9e4df439.field_256))
                                call address(sub_9e4df439.field_256).0x5939839b with:
                                     gas gas_remaining wei
                                    args sub_1313088e + idx + 1, _1378
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ownerOf[uint256(stor19.field_0) + idx + 1]:
                                    revert with 0, 'ALREADY_MINTED'
                                if not msg.sender:
                                    revert with 0, 'Not burnable'
                                if totalSupply == -1:
                                    revert with 0, 17
                                totalSupply++
                                if not msg.sender:
                                    if not totalSupply:
                                        revert with 0, 17
                                    totalSupply--
                                else:
                                    if msg.sender:
                                        tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]].field_0 = sub_1313088e + idx + 1
                                        stor9[uint256(stor19.field_0) + idx + 1] = balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)]++
                                ownerOf[uint256(stor19.field_0) + idx + 1] = msg.sender
                                emit Transfer(0, msg.sender, sub_1313088e + idx + 1);
                                mem[0] = msg.sender
                                mem[32] = 4
                                if stor20[address(msg.sender)].field_0 != uint128(block.timestamp):
                                    if not stor20[address(msg.sender)].field_0:
                                        mem[0] = msg.sender
                                        mem[32] = 20
                                        stor20[address(msg.sender)].field_0 = uint128(block.timestamp)
                                        stor20[address(msg.sender)].field_128 = 0
                                    else:
                                        if uint128(block.timestamp) < stor20[address(msg.sender)].field_0:
                                            revert with 0, 17
                                        if uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) and 3 * 10^6 > -1 / uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0):
                                            revert with 0, 17
                                        if 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) and balanceOf[address(msg.sender)] > -1 / 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0):
                                            revert with 0, 17
                                        if uint128(stor20[address(msg.sender)].field_0) >> 128 > !(3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600):
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                                            revert with 0, 17
                                        if (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) <= 20 * 10^6 * balanceOf[address(msg.sender)]:
                                            if (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) < 0:
                                                revert with 0, 'Insufficient energy'
                                            mem[0] = msg.sender
                                            mem[32] = 20
                                            stor20[address(msg.sender)].field_0 = uint128(block.timestamp) or (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) << 128
                                        else:
                                            if balanceOf[address(msg.sender)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                                                revert with 0, 17
                                            if 20 * 10^6 * balanceOf[address(msg.sender)] < 0:
                                                revert with 0, 'Insufficient energy'
                                            mem[0] = msg.sender
                                            mem[32] = 20
                                            stor20[address(msg.sender)].field_0 = uint128(block.timestamp) or 20 * 10^6 * balanceOf[address(msg.sender)] << 128
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        if sub_1313088e > !arg1:
                            revert with 0, 17
                        sub_1313088e += arg1
                    else:
                        stor15[msg.sender] = 0
                        if arg1 > -2:
                            revert with 0, 17
                        if msg.sender != tx.origin:
                            revert with 0, 'Invalid sender'
                        if sub_1313088e > !(arg1 + 1):
                            revert with 0, 17
                        if sub_1313088e + arg1 + 1 > genesisSupply:
                            revert with 0, 'Insufficient supply'
                        if arg1 + 1 > test266151307():
                            revert with 0, 65
                        mem[96] = arg1 + 1
                        if not arg1 + 1:
                            if 0 >= sub_9e4df439.length:
                                revert with 0, 50
                            mem[0] = 13
                            mem[(32 * arg1 + 1) + 128] = 0x9284409000000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg1 + 1) + 132] = sub_1313088e
                            mem[(32 * arg1 + 1) + 164] = arg1 + 1
                            require ext_code.size(address(sub_9e4df439.field_0))
                            call address(sub_9e4df439.field_0).0x92844090 with:
                                 gas gas_remaining wei
                                args sub_1313088e, arg1 + 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * arg1 + 1) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * arg1 + 1) + ceil32(return_data.size) + 128
                            require return_data.size >= 32
                            _103 = mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32)
                            require mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) <= test266151307()
                            require (32 * arg1 + 1) + return_data.size + 128 > (32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 159
                            _110 = mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]
                            if mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 1 < 0 or (32 * arg1 + 1) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 129 > test266151307():
                                revert with 0, 65
                            mem[64] = (32 * arg1 + 1) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 129
                            mem[(32 * arg1 + 1) + ceil32(return_data.size) + 128] = mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]
                            require _103 + (32 * _110) + 32 <= return_data.size
                            mem[(32 * arg1 + 1) + ceil32(return_data.size) + 160 len 32 * _110] = mem[(32 * arg1 + 1) + _103 + 160 len 32 * _110]
                            idx = 0
                            while idx < arg1 + 1:
                                if sub_1313088e > !idx:
                                    revert with 0, 17
                                if 1 > !(sub_1313088e + idx):
                                    revert with 0, 17
                                if 1 >= sub_9e4df439.length:
                                    revert with 0, 50
                                if idx >= mem[(32 * arg1 + 1) + ceil32(return_data.size) + 128]:
                                    revert with 0, 50
                                _1380 = mem[(32 * idx) + (32 * arg1 + 1) + ceil32(return_data.size) + 160]
                                mem[mem[64]] = 0x5939839b00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = sub_1313088e + idx + 1
                                mem[mem[64] + 36] = _1380
                                require ext_code.size(address(sub_9e4df439.field_256))
                                call address(sub_9e4df439.field_256).0x5939839b with:
                                     gas gas_remaining wei
                                    args sub_1313088e + idx + 1, _1380
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ownerOf[uint256(stor19.field_0) + idx + 1]:
                                    revert with 0, 'ALREADY_MINTED'
                                if not msg.sender:
                                    revert with 0, 'Not burnable'
                                if totalSupply == -1:
                                    revert with 0, 17
                                totalSupply++
                                if not msg.sender:
                                    if not totalSupply:
                                        revert with 0, 17
                                    totalSupply--
                                else:
                                    if msg.sender:
                                        tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]].field_0 = sub_1313088e + idx + 1
                                        stor9[uint256(stor19.field_0) + idx + 1] = balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)]++
                                ownerOf[uint256(stor19.field_0) + idx + 1] = msg.sender
                                emit Transfer(0, msg.sender, sub_1313088e + idx + 1);
                                mem[0] = msg.sender
                                mem[32] = 4
                                if stor20[address(msg.sender)].field_0 != uint128(block.timestamp):
                                    if not stor20[address(msg.sender)].field_0:
                                        mem[0] = msg.sender
                                        mem[32] = 20
                                        stor20[address(msg.sender)].field_0 = uint128(block.timestamp)
                                        stor20[address(msg.sender)].field_128 = 0
                                    else:
                                        if uint128(block.timestamp) < stor20[address(msg.sender)].field_0:
                                            revert with 0, 17
                                        if uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) and 3 * 10^6 > -1 / uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0):
                                            revert with 0, 17
                                        if 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) and balanceOf[address(msg.sender)] > -1 / 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0):
                                            revert with 0, 17
                                        if uint128(stor20[address(msg.sender)].field_0) >> 128 > !(3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600):
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                                            revert with 0, 17
                                        if (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) <= 20 * 10^6 * balanceOf[address(msg.sender)]:
                                            if (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) < 0:
                                                revert with 0, 'Insufficient energy'
                                            mem[0] = msg.sender
                                            mem[32] = 20
                                            stor20[address(msg.sender)].field_0 = uint128(block.timestamp) or (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) << 128
                                        else:
                                            if balanceOf[address(msg.sender)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                                                revert with 0, 17
                                            if 20 * 10^6 * balanceOf[address(msg.sender)] < 0:
                                                revert with 0, 'Insufficient energy'
                                            mem[0] = msg.sender
                                            mem[32] = 20
                                            stor20[address(msg.sender)].field_0 = uint128(block.timestamp) or 20 * 10^6 * balanceOf[address(msg.sender)] << 128
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            mem[128 len 32 * arg1 + 1] = call.data[calldata.size len 32 * arg1 + 1]
                            if 0 >= sub_9e4df439.length:
                                revert with 0, 50
                            mem[0] = 13
                            mem[(32 * arg1 + 1) + 128] = 0x9284409000000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg1 + 1) + 132] = sub_1313088e
                            mem[(32 * arg1 + 1) + 164] = arg1 + 1
                            require ext_code.size(address(sub_9e4df439.field_0))
                            call address(sub_9e4df439.field_0).0x92844090 with:
                                 gas gas_remaining wei
                                args sub_1313088e, arg1 + 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * arg1 + 1) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * arg1 + 1) + ceil32(return_data.size) + 128
                            require return_data.size >= 32
                            _106 = mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32)
                            require mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) <= test266151307()
                            require (32 * arg1 + 1) + return_data.size + 128 > (32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 159
                            _114 = mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]
                            if mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 1 < 0 or (32 * arg1 + 1) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 129 > test266151307():
                                revert with 0, 65
                            mem[64] = (32 * arg1 + 1) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]) + 129
                            mem[(32 * arg1 + 1) + ceil32(return_data.size) + 128] = mem[(32 * arg1 + 1) + mem[(32 * arg1 + 1) + 128 len 4], Mask(224, 0, stor19.field_32) + 128]
                            require _106 + (32 * _114) + 32 <= return_data.size
                            mem[(32 * arg1 + 1) + ceil32(return_data.size) + 160 len 32 * _114] = mem[(32 * arg1 + 1) + _106 + 160 len 32 * _114]
                            idx = 0
                            while idx < arg1 + 1:
                                if sub_1313088e > !idx:
                                    revert with 0, 17
                                if 1 > !(sub_1313088e + idx):
                                    revert with 0, 17
                                if 1 >= sub_9e4df439.length:
                                    revert with 0, 50
                                if idx >= mem[(32 * arg1 + 1) + ceil32(return_data.size) + 128]:
                                    revert with 0, 50
                                _1382 = mem[(32 * idx) + (32 * arg1 + 1) + ceil32(return_data.size) + 160]
                                mem[mem[64]] = 0x5939839b00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = sub_1313088e + idx + 1
                                mem[mem[64] + 36] = _1382
                                require ext_code.size(address(sub_9e4df439.field_256))
                                call address(sub_9e4df439.field_256).0x5939839b with:
                                     gas gas_remaining wei
                                    args sub_1313088e + idx + 1, _1382
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ownerOf[uint256(stor19.field_0) + idx + 1]:
                                    revert with 0, 'ALREADY_MINTED'
                                if not msg.sender:
                                    revert with 0, 'Not burnable'
                                if totalSupply == -1:
                                    revert with 0, 17
                                totalSupply++
                                if not msg.sender:
                                    if not totalSupply:
                                        revert with 0, 17
                                    totalSupply--
                                else:
                                    if msg.sender:
                                        tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]].field_0 = sub_1313088e + idx + 1
                                        stor9[uint256(stor19.field_0) + idx + 1] = balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)]++
                                ownerOf[uint256(stor19.field_0) + idx + 1] = msg.sender
                                emit Transfer(0, msg.sender, sub_1313088e + idx + 1);
                                mem[0] = msg.sender
                                mem[32] = 4
                                if stor20[address(msg.sender)].field_0 != uint128(block.timestamp):
                                    if not stor20[address(msg.sender)].field_0:
                                        mem[0] = msg.sender
                                        mem[32] = 20
                                        stor20[address(msg.sender)].field_0 = uint128(block.timestamp)
                                        stor20[address(msg.sender)].field_128 = 0
                                    else:
                                        if uint128(block.timestamp) < stor20[address(msg.sender)].field_0:
                                            revert with 0, 17
                                        if uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) and 3 * 10^6 > -1 / uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0):
                                            revert with 0, 17
                                        if 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) and balanceOf[address(msg.sender)] > -1 / 3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0):
                                            revert with 0, 17
                                        if uint128(stor20[address(msg.sender)].field_0) >> 128 > !(3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600):
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                                            revert with 0, 17
                                        if (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) <= 20 * 10^6 * balanceOf[address(msg.sender)]:
                                            if (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) < 0:
                                                revert with 0, 'Insufficient energy'
                                            mem[0] = msg.sender
                                            mem[32] = 20
                                            stor20[address(msg.sender)].field_0 = uint128(block.timestamp) or (uint128(stor20[address(msg.sender)].field_0) >> 128) + (3 * 10^6 * uint128(uint128(block.timestamp) - stor20[address(msg.sender)].field_0) * balanceOf[address(msg.sender)] / 24 * 3600) << 128
                                        else:
                                            if balanceOf[address(msg.sender)] > 0xd6bf94d5e57a42bc3d32907604691b4c8ca08cd2e1b9c3db8c8330a188:
                                                revert with 0, 17
                                            if 20 * 10^6 * balanceOf[address(msg.sender)] < 0:
                                                revert with 0, 'Insufficient energy'
                                            mem[0] = msg.sender
                                            mem[32] = 20
                                            stor20[address(msg.sender)].field_0 = uint128(block.timestamp) or 20 * 10^6 * balanceOf[address(msg.sender)] << 128
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        if sub_1313088e > !(arg1 + 1):
                            revert with 0, 17
                        sub_1313088e = sub_1313088e + arg1 + 1
}

function sub_12b36486(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 4
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
    mem[96] = balanceOf[address(arg1)]
    mem[64] = (32 * balanceOf[address(arg1)]) + 128
    if not balanceOf[address(arg1)]:
        if 1 >= sub_9e4df439.length:
            revert with 0, 50
        mem[0] = 13
        idx = 0
        while uint16(idx) < balanceOf[address(arg1)]:
            if uint16(idx) >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            mem[0] = uint16(idx)
            mem[32] = sha3(address(arg1), 8)
            mem[mem[64]] = 0x2e34059900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = tokenOfOwnerByIndex[address(arg1)][idx << 240].field_0
            require ext_code.size(address(sub_9e4df439.field_256))
            staticcall address(sub_9e4df439.field_256).info(uint256 arg1) with:
                    gas gas_remaining wei
                   args tokenOfOwnerByIndex[address(arg1)][idx << 240].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _148 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _150 = mem[_148]
            require mem[_148] <= test266151307()
            require _148 + mem[_148] + 31 < _148 + return_data.size
            _169 = mem[_148 + mem[_148]]
            if mem[_148 + mem[_148]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_148 + mem[_148]])) + 1 < 0 or _148 + ceil32(return_data.size) + ceil32(ceil32(mem[_148 + mem[_148]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _148 + ceil32(return_data.size) + ceil32(ceil32(mem[_148 + mem[_148]])) + 1
            mem[_148 + ceil32(return_data.size)] = _169
            require _150 + _169 + 32 <= return_data.size
            s = 0
            while s < _169:
                mem[s + _148 + ceil32(return_data.size) + 32] = mem[s + _148 + _150 + 32]
                s = s + 32
                continue 
            if ceil32(_169) <= _169:
                _267 = mem[_148 + 32]
                require mem[_148 + 32] == mem[_148 + 63 len 1]
                _272 = mem[_148 + 64]
                require mem[_148 + 64] == mem[_148 + 94 len 2]
                _294 = mem[_148 + 96]
                require mem[_148 + 96] == bool(mem[_148 + 96])
                _315 = mem[_148 + 128]
                require mem[_148 + 128] <= test266151307()
                require _148 + return_data.size > _148 + mem[_148 + 128] + 31
                _323 = mem[_148 + mem[_148 + 128]]
                if mem[_148 + mem[_148 + 128]] > test266151307():
                    revert with 0, 65
                _341 = mem[64]
                if mem[64] + ceil32(32 * mem[_148 + mem[_148 + 128]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_148 + mem[_148 + 128]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_148 + mem[_148 + 128]]) + 1
                mem[_341] = _323
                require _315 + (32 * _323) + 32 <= return_data.size
                t = _148 + _315 + 32
                u = _341 + 32
                s = 0
                while s < _323:
                    require mem[t] == mem[t + 30 len 2]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                _442 = mem[_148 + 160]
                require mem[_148 + 160] <= test266151307()
                require _148 + mem[_148 + 160] + 31 < _148 + return_data.size
                _463 = mem[_148 + mem[_148 + 160]]
                if mem[_148 + mem[_148 + 160]] > test266151307():
                    revert with 0, 65
                _480 = mem[64]
                if mem[64] + ceil32(32 * mem[_148 + mem[_148 + 160]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_148 + mem[_148 + 160]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_148 + mem[_148 + 160]]) + 1
                mem[_480] = _463
                require _442 + (32 * _463) + 32 <= return_data.size
                s = 0
                t = _148 + _442 + 32
                u = _480 + 32
                while s < _463:
                    require mem[t] == mem[t + 28 len 4]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                _616 = mem[64]
                mem[64] = mem[64] + 192
                mem[_616] = _148 + ceil32(return_data.size)
                mem[_616 + 32] = uint8(_267)
                mem[_616 + 64] = uint16(_272)
                mem[_616 + 96] = bool(_294)
                mem[_616 + 128] = _341
                mem[_616 + 160] = _480
                if uint16(_463) >= mem[96]:
                    revert with 0, 50
                mem[(32 * uint16(_463)) + 128] = _616
                if uint16(_463) == 65535:
                    revert with 0, 17
                s = uint16(_463) + 1
                continue 
            mem[_169 + _148 + ceil32(return_data.size) + 32] = 0
            _268 = mem[_148 + 32]
            require mem[_148 + 32] == mem[_148 + 63 len 1]
            _273 = mem[_148 + 64]
            require mem[_148 + 64] == mem[_148 + 94 len 2]
            _295 = mem[_148 + 96]
            require mem[_148 + 96] == bool(mem[_148 + 96])
            _316 = mem[_148 + 128]
            require mem[_148 + 128] <= test266151307()
            require _148 + return_data.size > _148 + mem[_148 + 128] + 31
            _324 = mem[_148 + mem[_148 + 128]]
            if mem[_148 + mem[_148 + 128]] > test266151307():
                revert with 0, 65
            _342 = mem[64]
            if mem[64] + ceil32(32 * mem[_148 + mem[_148 + 128]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_148 + mem[_148 + 128]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[_148 + mem[_148 + 128]]) + 1
            mem[_342] = _324
            require _316 + (32 * _324) + 32 <= return_data.size
            t = _148 + _316 + 32
            u = _342 + 32
            s = 0
            while s < _324:
                require mem[t] == mem[t + 30 len 2]
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            _444 = mem[_148 + 160]
            require mem[_148 + 160] <= test266151307()
            require _148 + mem[_148 + 160] + 31 < _148 + return_data.size
            _464 = mem[_148 + mem[_148 + 160]]
            if mem[_148 + mem[_148 + 160]] > test266151307():
                revert with 0, 65
            _481 = mem[64]
            if mem[64] + ceil32(32 * mem[_148 + mem[_148 + 160]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_148 + mem[_148 + 160]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[_148 + mem[_148 + 160]]) + 1
            mem[_481] = _464
            require _444 + (32 * _464) + 32 <= return_data.size
            s = 0
            t = _148 + _444 + 32
            u = _481 + 32
            while s < _464:
                require mem[t] == mem[t + 28 len 4]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _618 = mem[64]
            mem[64] = mem[64] + 192
            mem[_618] = _148 + ceil32(return_data.size)
            mem[_618 + 32] = uint8(_268)
            mem[_618 + 64] = uint16(_273)
            mem[_618 + 96] = bool(_295)
            mem[_618 + 128] = _342
            mem[_618 + 160] = _481
            if uint16(_464) >= mem[96]:
                revert with 0, 50
            mem[(32 * uint16(_464)) + 128] = _618
            if uint16(_464) == 65535:
                revert with 0, 17
            s = uint16(_464) + 1
            continue 
        _133 = mem[64]
        mem[mem[64]] = 32
        _136 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _136:
            mem[u] = t + -_133 - 64
            _261 = mem[s]
            _262 = mem[mem[s]]
            mem[t] = 192
            _266 = mem[_262]
            mem[t + 192] = mem[_262]
            v = 0
            while v < _266:
                mem[v + t + 224] = mem[v + _262 + 32]
                v = v + 32
                continue 
            if ceil32(_266) <= _266:
                mem[t + 32] = mem[_261 + 63 len 1]
                mem[t + 64] = mem[_261 + 94 len 2]
                mem[t + 96] = bool(mem[_261 + 96])
                _456 = mem[_261 + 128]
                mem[t + 128] = ceil32(_266) + 224
                _457 = mem[_456]
                mem[ceil32(_266) + t + 224] = mem[_456]
                v = 0
                w = ceil32(_266) + t + 256
                x = _456 + 32
                while v < _457:
                    mem[w] = mem[x + 30 len 2]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                _602 = mem[_261 + 160]
                mem[t + 160] = ceil32(_266) + (32 * _457) + 256
                _612 = mem[_602]
                mem[ceil32(_266) + t + (32 * _457) + 256] = mem[_602]
                v = 0
                w = _602 + 32
                x = ceil32(_266) + t + (32 * _457) + 288
                while v < _612:
                    mem[x] = mem[w + 28 len 4]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = ceil32(_266) + t + (32 * _457) + (32 * _612) + 288
                u = u + 32
                continue 
            mem[_266 + t + 224] = 0
            mem[t + 32] = mem[_261 + 63 len 1]
            mem[t + 64] = mem[_261 + 94 len 2]
            mem[t + 96] = bool(mem[_261 + 96])
            _461 = mem[_261 + 128]
            mem[t + 128] = ceil32(_266) + 224
            _462 = mem[_461]
            mem[ceil32(_266) + t + 224] = mem[_461]
            v = 0
            w = ceil32(_266) + t + 256
            x = _461 + 32
            while v < _462:
                mem[w] = mem[x + 30 len 2]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _604 = mem[_261 + 160]
            mem[t + 160] = ceil32(_266) + (32 * _462) + 256
            _613 = mem[_604]
            mem[ceil32(_266) + t + (32 * _462) + 256] = mem[_604]
            v = 0
            w = _604 + 32
            x = ceil32(_266) + t + (32 * _462) + 288
            while v < _613:
                mem[x] = mem[w + 28 len 4]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = ceil32(_266) + t + (32 * _462) + (32 * _613) + 288
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * balanceOf[address(arg1)]) + 320
    mem[(32 * balanceOf[address(arg1)]) + 128] = 96
    mem[(32 * balanceOf[address(arg1)]) + 160] = 0
    mem[(32 * balanceOf[address(arg1)]) + 192] = 0
    mem[(32 * balanceOf[address(arg1)]) + 224] = 0
    mem[(32 * balanceOf[address(arg1)]) + 256] = 96
    mem[(32 * balanceOf[address(arg1)]) + 288] = 96
    mem[var16002] = var16001
    if not var16003 - 1:
        if 1 >= sub_9e4df439.length:
            revert with 0, 50
        mem[0] = 13
        idx = 0
        while uint16(idx) < balanceOf[address(arg1)]:
            if uint16(idx) >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            mem[0] = uint16(idx)
            mem[32] = sha3(address(arg1), 8)
            mem[mem[64]] = 0x2e34059900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = tokenOfOwnerByIndex[address(arg1)][idx << 240].field_0
            require ext_code.size(address(sub_9e4df439.field_256))
            staticcall address(sub_9e4df439.field_256).info(uint256 arg1) with:
                    gas gas_remaining wei
                   args tokenOfOwnerByIndex[address(arg1)][idx << 240].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _479 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _487 = mem[_479]
            require mem[_479] <= test266151307()
            require _479 + mem[_479] + 31 < _479 + return_data.size
            _507 = mem[_479 + mem[_479]]
            if mem[_479 + mem[_479]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_479 + mem[_479]])) + 1 < 0 or _479 + ceil32(return_data.size) + ceil32(ceil32(mem[_479 + mem[_479]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _479 + ceil32(return_data.size) + ceil32(ceil32(mem[_479 + mem[_479]])) + 1
            mem[_479 + ceil32(return_data.size)] = _507
            require _487 + _507 + 32 <= return_data.size
            s = 0
            while s < _507:
                mem[s + _479 + ceil32(return_data.size) + 32] = mem[s + _479 + _487 + 32]
                s = s + 32
                continue 
            if ceil32(_507) <= _507:
                _623 = mem[_479 + 32]
                require mem[_479 + 32] == mem[_479 + 63 len 1]
                _627 = mem[_479 + 64]
                require mem[_479 + 64] == mem[_479 + 94 len 2]
                _653 = mem[_479 + 96]
                require mem[_479 + 96] == bool(mem[_479 + 96])
                _674 = mem[_479 + 128]
                require mem[_479 + 128] <= test266151307()
                require _479 + return_data.size > _479 + mem[_479 + 128] + 31
                _681 = mem[_479 + mem[_479 + 128]]
                if mem[_479 + mem[_479 + 128]] > test266151307():
                    revert with 0, 65
                _696 = mem[64]
                if mem[64] + ceil32(32 * mem[_479 + mem[_479 + 128]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_479 + mem[_479 + 128]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_479 + mem[_479 + 128]]) + 1
                mem[_696] = _681
                require _674 + (32 * _681) + 32 <= return_data.size
                t = _479 + _674 + 32
                u = _696 + 32
                s = 0
                while s < _681:
                    require mem[t] == mem[t + 30 len 2]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                _799 = mem[_479 + 160]
                require mem[_479 + 160] <= test266151307()
                require _479 + mem[_479 + 160] + 31 < _479 + return_data.size
                _822 = mem[_479 + mem[_479 + 160]]
                if mem[_479 + mem[_479 + 160]] > test266151307():
                    revert with 0, 65
                _837 = mem[64]
                if mem[64] + ceil32(32 * mem[_479 + mem[_479 + 160]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_479 + mem[_479 + 160]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_479 + mem[_479 + 160]]) + 1
                mem[_837] = _822
                require _799 + (32 * _822) + 32 <= return_data.size
                s = 0
                t = _479 + _799 + 32
                u = _837 + 32
                while s < _822:
                    require mem[t] == mem[t + 28 len 4]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                _973 = mem[64]
                mem[64] = mem[64] + 192
                mem[_973] = _479 + ceil32(return_data.size)
                mem[_973 + 32] = uint8(_623)
                mem[_973 + 64] = uint16(_627)
                mem[_973 + 96] = bool(_653)
                mem[_973 + 128] = _696
                mem[_973 + 160] = _837
                if uint16(_822) >= mem[96]:
                    revert with 0, 50
                mem[(32 * uint16(_822)) + 128] = _973
                if uint16(_822) == 65535:
                    revert with 0, 17
                s = uint16(_822) + 1
                continue 
            mem[_507 + _479 + ceil32(return_data.size) + 32] = 0
            _624 = mem[_479 + 32]
            require mem[_479 + 32] == mem[_479 + 63 len 1]
            _628 = mem[_479 + 64]
            require mem[_479 + 64] == mem[_479 + 94 len 2]
            _654 = mem[_479 + 96]
            require mem[_479 + 96] == bool(mem[_479 + 96])
            _675 = mem[_479 + 128]
            require mem[_479 + 128] <= test266151307()
            require _479 + return_data.size > _479 + mem[_479 + 128] + 31
            _682 = mem[_479 + mem[_479 + 128]]
            if mem[_479 + mem[_479 + 128]] > test266151307():
                revert with 0, 65
            _697 = mem[64]
            if mem[64] + ceil32(32 * mem[_479 + mem[_479 + 128]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_479 + mem[_479 + 128]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[_479 + mem[_479 + 128]]) + 1
            mem[_697] = _682
            require _675 + (32 * _682) + 32 <= return_data.size
            t = _479 + _675 + 32
            u = _697 + 32
            s = 0
            while s < _682:
                require mem[t] == mem[t + 30 len 2]
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            _801 = mem[_479 + 160]
            require mem[_479 + 160] <= test266151307()
            require _479 + mem[_479 + 160] + 31 < _479 + return_data.size
            _823 = mem[_479 + mem[_479 + 160]]
            if mem[_479 + mem[_479 + 160]] > test266151307():
                revert with 0, 65
            _838 = mem[64]
            if mem[64] + ceil32(32 * mem[_479 + mem[_479 + 160]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_479 + mem[_479 + 160]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[_479 + mem[_479 + 160]]) + 1
            mem[_838] = _823
            require _801 + (32 * _823) + 32 <= return_data.size
            s = 0
            t = _479 + _801 + 32
            u = _838 + 32
            while s < _823:
                require mem[t] == mem[t + 28 len 4]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _975 = mem[64]
            mem[64] = mem[64] + 192
            mem[_975] = _479 + ceil32(return_data.size)
            mem[_975 + 32] = uint8(_624)
            mem[_975 + 64] = uint16(_628)
            mem[_975 + 96] = bool(_654)
            mem[_975 + 128] = _697
            mem[_975 + 160] = _838
            if uint16(_823) >= mem[96]:
                revert with 0, 50
            mem[(32 * uint16(_823)) + 128] = _975
            if uint16(_823) == 65535:
                revert with 0, 17
            s = uint16(_823) + 1
            continue 
        _447 = mem[64]
        mem[mem[64]] = 32
        _449 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _449:
            mem[u] = t + -_447 - 64
            _609 = mem[s]
            _610 = mem[mem[s]]
            mem[t] = 192
            _615 = mem[_610]
            mem[t + 192] = mem[_610]
            v = 0
            while v < _615:
                mem[v + t + 224] = mem[v + _610 + 32]
                v = v + 32
                continue 
            if ceil32(_615) <= _615:
                mem[t + 32] = mem[_609 + 63 len 1]
                mem[t + 64] = mem[_609 + 94 len 2]
                mem[t + 96] = bool(mem[_609 + 96])
                _815 = mem[_609 + 128]
                mem[t + 128] = ceil32(_615) + 224
                _816 = mem[_815]
                mem[ceil32(_615) + t + 224] = mem[_815]
                v = 0
                w = ceil32(_615) + t + 256
                x = _815 + 32
                while v < _816:
                    mem[w] = mem[x + 30 len 2]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                _963 = mem[_609 + 160]
                mem[t + 160] = ceil32(_615) + (32 * _816) + 256
                _971 = mem[_963]
                mem[ceil32(_615) + t + (32 * _816) + 256] = mem[_963]
                v = 0
                w = _963 + 32
                x = ceil32(_615) + t + (32 * _816) + 288
                while v < _971:
                    mem[x] = mem[w + 28 len 4]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = ceil32(_615) + t + (32 * _816) + (32 * _971) + 288
                u = u + 32
                continue 
            mem[_615 + t + 224] = 0
            mem[t + 32] = mem[_609 + 63 len 1]
            mem[t + 64] = mem[_609 + 94 len 2]
            mem[t + 96] = bool(mem[_609 + 96])
            _820 = mem[_609 + 128]
            mem[t + 128] = ceil32(_615) + 224
            _821 = mem[_820]
            mem[ceil32(_615) + t + 224] = mem[_820]
            v = 0
            w = ceil32(_615) + t + 256
            x = _820 + 32
            while v < _821:
                mem[w] = mem[x + 30 len 2]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _965 = mem[_609 + 160]
            mem[t + 160] = ceil32(_615) + (32 * _821) + 256
            _972 = mem[_965]
            mem[ceil32(_615) + t + (32 * _821) + 256] = mem[_965]
            v = 0
            w = _965 + 32
            x = ceil32(_615) + t + (32 * _821) + 288
            while v < _972:
                mem[x] = mem[w + 28 len 4]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = ceil32(_615) + t + (32 * _821) + (32 * _972) + 288
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * balanceOf[address(arg1)]) + 512
    mem[(32 * balanceOf[address(arg1)]) + 320] = 96
    mem[(32 * balanceOf[address(arg1)]) + 352] = 0
    mem[(32 * balanceOf[address(arg1)]) + 384] = 0
    mem[(32 * balanceOf[address(arg1)]) + 416] = 0
    mem[(32 * balanceOf[address(arg1)]) + 448] = 96
    mem[(32 * balanceOf[address(arg1)]) + 480] = 96
    mem[var20002] = var20001
    if not var20003 - 1:
        if 1 >= sub_9e4df439.length:
            revert with 0, 50
        mem[0] = 13
        idx = 0
        while uint16(idx) < balanceOf[address(arg1)]:
            if uint16(idx) >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            mem[0] = uint16(idx)
            mem[32] = sha3(address(arg1), 8)
            mem[mem[64]] = 0x2e34059900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = tokenOfOwnerByIndex[address(arg1)][idx << 240].field_0
            require ext_code.size(address(sub_9e4df439.field_256))
            staticcall address(sub_9e4df439.field_256).info(uint256 arg1) with:
                    gas gas_remaining wei
                   args tokenOfOwnerByIndex[address(arg1)][idx << 240].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _834 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _842 = mem[_834]
            require mem[_834] <= test266151307()
            require _834 + mem[_834] + 31 < _834 + return_data.size
            _864 = mem[_834 + mem[_834]]
            if mem[_834 + mem[_834]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_834 + mem[_834]])) + 1 < 0 or _834 + ceil32(return_data.size) + ceil32(ceil32(mem[_834 + mem[_834]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _834 + ceil32(return_data.size) + ceil32(ceil32(mem[_834 + mem[_834]])) + 1
            mem[_834 + ceil32(return_data.size)] = _864
            require _842 + _864 + 32 <= return_data.size
            s = 0
            while s < _864:
                mem[s + _834 + ceil32(return_data.size) + 32] = mem[s + _834 + _842 + 32]
                s = s + 32
                continue 
            if ceil32(_864) <= _864:
                _978 = mem[_834 + 32]
                require mem[_834 + 32] == mem[_834 + 63 len 1]
                _984 = mem[_834 + 64]
                require mem[_834 + 64] == mem[_834 + 94 len 2]
                _1010 = mem[_834 + 96]
                require mem[_834 + 96] == bool(mem[_834 + 96])
                _1031 = mem[_834 + 128]
                require mem[_834 + 128] <= test266151307()
                require _834 + return_data.size > _834 + mem[_834 + 128] + 31
                _1038 = mem[_834 + mem[_834 + 128]]
                if mem[_834 + mem[_834 + 128]] > test266151307():
                    revert with 0, 65
                _1053 = mem[64]
                if mem[64] + ceil32(32 * mem[_834 + mem[_834 + 128]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_834 + mem[_834 + 128]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_834 + mem[_834 + 128]]) + 1
                mem[_1053] = _1038
                require _1031 + (32 * _1038) + 32 <= return_data.size
                t = _834 + _1031 + 32
                u = _1053 + 32
                s = 0
                while s < _1038:
                    require mem[t] == mem[t + 30 len 2]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                _1154 = mem[_834 + 160]
                require mem[_834 + 160] <= test266151307()
                require _834 + mem[_834 + 160] + 31 < _834 + return_data.size
                _1179 = mem[_834 + mem[_834 + 160]]
                if mem[_834 + mem[_834 + 160]] > test266151307():
                    revert with 0, 65
                _1194 = mem[64]
                if mem[64] + ceil32(32 * mem[_834 + mem[_834 + 160]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_834 + mem[_834 + 160]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_834 + mem[_834 + 160]]) + 1
                mem[_1194] = _1179
                require _1154 + (32 * _1179) + 32 <= return_data.size
                s = 0
                t = _834 + _1154 + 32
                u = _1194 + 32
                while s < _1179:
                    require mem[t] == mem[t + 28 len 4]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                _1330 = mem[64]
                mem[64] = mem[64] + 192
                mem[_1330] = _834 + ceil32(return_data.size)
                mem[_1330 + 32] = uint8(_978)
                mem[_1330 + 64] = uint16(_984)
                mem[_1330 + 96] = bool(_1010)
                mem[_1330 + 128] = _1053
                mem[_1330 + 160] = _1194
                if uint16(_1179) >= mem[96]:
                    revert with 0, 50
                mem[(32 * uint16(_1179)) + 128] = _1330
                if uint16(_1179) == 65535:
                    revert with 0, 17
                s = uint16(_1179) + 1
                continue 
            mem[_864 + _834 + ceil32(return_data.size) + 32] = 0
            _979 = mem[_834 + 32]
            require mem[_834 + 32] == mem[_834 + 63 len 1]
            _985 = mem[_834 + 64]
            require mem[_834 + 64] == mem[_834 + 94 len 2]
            _1011 = mem[_834 + 96]
            require mem[_834 + 96] == bool(mem[_834 + 96])
            _1032 = mem[_834 + 128]
            require mem[_834 + 128] <= test266151307()
            require _834 + return_data.size > _834 + mem[_834 + 128] + 31
            _1039 = mem[_834 + mem[_834 + 128]]
            if mem[_834 + mem[_834 + 128]] > test266151307():
                revert with 0, 65
            _1054 = mem[64]
            if mem[64] + ceil32(32 * mem[_834 + mem[_834 + 128]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_834 + mem[_834 + 128]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[_834 + mem[_834 + 128]]) + 1
            mem[_1054] = _1039
            require _1032 + (32 * _1039) + 32 <= return_data.size
            t = _834 + _1032 + 32
            u = _1054 + 32
            s = 0
            while s < _1039:
                require mem[t] == mem[t + 30 len 2]
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            _1156 = mem[_834 + 160]
            require mem[_834 + 160] <= test266151307()
            require _834 + mem[_834 + 160] + 31 < _834 + return_data.size
            _1180 = mem[_834 + mem[_834 + 160]]
            if mem[_834 + mem[_834 + 160]] > test266151307():
                revert with 0, 65
            _1195 = mem[64]
            if mem[64] + ceil32(32 * mem[_834 + mem[_834 + 160]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_834 + mem[_834 + 160]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[_834 + mem[_834 + 160]]) + 1
            mem[_1195] = _1180
            require _1156 + (32 * _1180) + 32 <= return_data.size
            s = 0
            t = _834 + _1156 + 32
            u = _1195 + 32
            while s < _1180:
                require mem[t] == mem[t + 28 len 4]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _1332 = mem[64]
            mem[64] = mem[64] + 192
            mem[_1332] = _834 + ceil32(return_data.size)
            mem[_1332 + 32] = uint8(_979)
            mem[_1332 + 64] = uint16(_985)
            mem[_1332 + 96] = bool(_1011)
            mem[_1332 + 128] = _1054
            mem[_1332 + 160] = _1195
            if uint16(_1180) >= mem[96]:
                revert with 0, 50
            mem[(32 * uint16(_1180)) + 128] = _1332
            if uint16(_1180) == 65535:
                revert with 0, 17
            s = uint16(_1180) + 1
            continue 
        _804 = mem[64]
        mem[mem[64]] = 32
        _806 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _806:
            mem[u] = t + -_804 - 64
            _960 = mem[s]
            _961 = mem[mem[s]]
            mem[t] = 192
            _970 = mem[_961]
            mem[t + 192] = mem[_961]
            v = 0
            while v < _970:
                mem[v + t + 224] = mem[v + _961 + 32]
                v = v + 32
                continue 
            if ceil32(_970) <= _970:
                mem[t + 32] = mem[_960 + 63 len 1]
                mem[t + 64] = mem[_960 + 94 len 2]
                mem[t + 96] = bool(mem[_960 + 96])
                _1172 = mem[_960 + 128]
                mem[t + 128] = ceil32(_970) + 224
                _1173 = mem[_1172]
                mem[ceil32(_970) + t + 224] = mem[_1172]
                v = 0
                w = ceil32(_970) + t + 256
                x = _1172 + 32
                while v < _1173:
                    mem[w] = mem[x + 30 len 2]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                _1320 = mem[_960 + 160]
                mem[t + 160] = ceil32(_970) + (32 * _1173) + 256
                _1328 = mem[_1320]
                mem[ceil32(_970) + t + (32 * _1173) + 256] = mem[_1320]
                v = 0
                w = _1320 + 32
                x = ceil32(_970) + t + (32 * _1173) + 288
                while v < _1328:
                    mem[x] = mem[w + 28 len 4]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = ceil32(_970) + t + (32 * _1173) + (32 * _1328) + 288
                u = u + 32
                continue 
            mem[_970 + t + 224] = 0
            mem[t + 32] = mem[_960 + 63 len 1]
            mem[t + 64] = mem[_960 + 94 len 2]
            mem[t + 96] = bool(mem[_960 + 96])
            _1177 = mem[_960 + 128]
            mem[t + 128] = ceil32(_970) + 224
            _1178 = mem[_1177]
            mem[ceil32(_970) + t + 224] = mem[_1177]
            v = 0
            w = ceil32(_970) + t + 256
            x = _1177 + 32
            while v < _1178:
                mem[w] = mem[x + 30 len 2]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _1322 = mem[_960 + 160]
            mem[t + 160] = ceil32(_970) + (32 * _1178) + 256
            _1329 = mem[_1322]
            mem[ceil32(_970) + t + (32 * _1178) + 256] = mem[_1322]
            v = 0
            w = _1322 + 32
            x = ceil32(_970) + t + (32 * _1178) + 288
            while v < _1329:
                mem[x] = mem[w + 28 len 4]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = ceil32(_970) + t + (32 * _1178) + (32 * _1329) + 288
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * balanceOf[address(arg1)]) + 704
    mem[(32 * balanceOf[address(arg1)]) + 512] = 96
    mem[(32 * balanceOf[address(arg1)]) + 544] = 0
    mem[(32 * balanceOf[address(arg1)]) + 576] = 0
    mem[(32 * balanceOf[address(arg1)]) + 608] = 0
    mem[(32 * balanceOf[address(arg1)]) + 640] = 96
    mem[(32 * balanceOf[address(arg1)]) + 672] = 96
    mem[var24002] = var24001
    if not var24003 - 1:
        if 1 >= sub_9e4df439.length:
            revert with 0, 50
        mem[0] = 13
        idx = 0
        while uint16(idx) < balanceOf[address(arg1)]:
            if uint16(idx) >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            mem[0] = uint16(idx)
            mem[32] = sha3(address(arg1), 8)
            mem[mem[64]] = 0x2e34059900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = tokenOfOwnerByIndex[address(arg1)][idx << 240].field_0
            require ext_code.size(address(sub_9e4df439.field_256))
            staticcall address(sub_9e4df439.field_256).info(uint256 arg1) with:
                    gas gas_remaining wei
                   args tokenOfOwnerByIndex[address(arg1)][idx << 240].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1191 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _1199 = mem[_1191]
            require mem[_1191] <= test266151307()
            require _1191 + mem[_1191] + 31 < _1191 + return_data.size
            _1221 = mem[_1191 + mem[_1191]]
            if mem[_1191 + mem[_1191]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_1191 + mem[_1191]])) + 1 < 0 or _1191 + ceil32(return_data.size) + ceil32(ceil32(mem[_1191 + mem[_1191]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _1191 + ceil32(return_data.size) + ceil32(ceil32(mem[_1191 + mem[_1191]])) + 1
            mem[_1191 + ceil32(return_data.size)] = _1221
            require _1199 + _1221 + 32 <= return_data.size
            s = 0
            while s < _1221:
                mem[s + _1191 + ceil32(return_data.size) + 32] = mem[s + _1191 + _1199 + 32]
                s = s + 32
                continue 
            if ceil32(_1221) <= _1221:
                _1335 = mem[_1191 + 32]
                require mem[_1191 + 32] == mem[_1191 + 63 len 1]
                _1341 = mem[_1191 + 64]
                require mem[_1191 + 64] == mem[_1191 + 94 len 2]
                _1367 = mem[_1191 + 96]
                require mem[_1191 + 96] == bool(mem[_1191 + 96])
                _1388 = mem[_1191 + 128]
                require mem[_1191 + 128] <= test266151307()
                require _1191 + return_data.size > _1191 + mem[_1191 + 128] + 31
                _1395 = mem[_1191 + mem[_1191 + 128]]
                if mem[_1191 + mem[_1191 + 128]] > test266151307():
                    revert with 0, 65
                _1410 = mem[64]
                if mem[64] + ceil32(32 * mem[_1191 + mem[_1191 + 128]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1191 + mem[_1191 + 128]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_1191 + mem[_1191 + 128]]) + 1
                mem[_1410] = _1395
                require _1388 + (32 * _1395) + 32 <= return_data.size
                t = _1191 + _1388 + 32
                u = _1410 + 32
                s = 0
                while s < _1395:
                    require mem[t] == mem[t + 30 len 2]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                _1511 = mem[_1191 + 160]
                require mem[_1191 + 160] <= test266151307()
                require _1191 + mem[_1191 + 160] + 31 < _1191 + return_data.size
                _1536 = mem[_1191 + mem[_1191 + 160]]
                if mem[_1191 + mem[_1191 + 160]] > test266151307():
                    revert with 0, 65
                _1551 = mem[64]
                if mem[64] + ceil32(32 * mem[_1191 + mem[_1191 + 160]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1191 + mem[_1191 + 160]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_1191 + mem[_1191 + 160]]) + 1
                mem[_1551] = _1536
                require _1511 + (32 * _1536) + 32 <= return_data.size
                s = 0
                t = _1191 + _1511 + 32
                u = _1551 + 32
                while s < _1536:
                    require mem[t] == mem[t + 28 len 4]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                _1687 = mem[64]
                mem[64] = mem[64] + 192
                mem[_1687] = _1191 + ceil32(return_data.size)
                mem[_1687 + 32] = uint8(_1335)
                mem[_1687 + 64] = uint16(_1341)
                mem[_1687 + 96] = bool(_1367)
                mem[_1687 + 128] = _1410
                mem[_1687 + 160] = _1551
                if uint16(_1536) >= mem[96]:
                    revert with 0, 50
                mem[(32 * uint16(_1536)) + 128] = _1687
                if uint16(_1536) == 65535:
                    revert with 0, 17
                s = uint16(_1536) + 1
                continue 
            mem[_1221 + _1191 + ceil32(return_data.size) + 32] = 0
            _1336 = mem[_1191 + 32]
            require mem[_1191 + 32] == mem[_1191 + 63 len 1]
            _1342 = mem[_1191 + 64]
            require mem[_1191 + 64] == mem[_1191 + 94 len 2]
            _1368 = mem[_1191 + 96]
            require mem[_1191 + 96] == bool(mem[_1191 + 96])
            _1389 = mem[_1191 + 128]
            require mem[_1191 + 128] <= test266151307()
            require _1191 + return_data.size > _1191 + mem[_1191 + 128] + 31
            _1396 = mem[_1191 + mem[_1191 + 128]]
            if mem[_1191 + mem[_1191 + 128]] > test266151307():
                revert with 0, 65
            _1411 = mem[64]
            if mem[64] + ceil32(32 * mem[_1191 + mem[_1191 + 128]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1191 + mem[_1191 + 128]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[_1191 + mem[_1191 + 128]]) + 1
            mem[_1411] = _1396
            require _1389 + (32 * _1396) + 32 <= return_data.size
            t = _1191 + _1389 + 32
            u = _1411 + 32
            s = 0
            while s < _1396:
                require mem[t] == mem[t + 30 len 2]
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            _1513 = mem[_1191 + 160]
            require mem[_1191 + 160] <= test266151307()
            require _1191 + mem[_1191 + 160] + 31 < _1191 + return_data.size
            _1537 = mem[_1191 + mem[_1191 + 160]]
            if mem[_1191 + mem[_1191 + 160]] > test266151307():
                revert with 0, 65
            _1552 = mem[64]
            if mem[64] + ceil32(32 * mem[_1191 + mem[_1191 + 160]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1191 + mem[_1191 + 160]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[_1191 + mem[_1191 + 160]]) + 1
            mem[_1552] = _1537
            require _1513 + (32 * _1537) + 32 <= return_data.size
            s = 0
            t = _1191 + _1513 + 32
            u = _1552 + 32
            while s < _1537:
                require mem[t] == mem[t + 28 len 4]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _1689 = mem[64]
            mem[64] = mem[64] + 192
            mem[_1689] = _1191 + ceil32(return_data.size)
            mem[_1689 + 32] = uint8(_1336)
            mem[_1689 + 64] = uint16(_1342)
            mem[_1689 + 96] = bool(_1368)
            mem[_1689 + 128] = _1411
            mem[_1689 + 160] = _1552
            if uint16(_1537) >= mem[96]:
                revert with 0, 50
            mem[(32 * uint16(_1537)) + 128] = _1689
            if uint16(_1537) == 65535:
                revert with 0, 17
            s = uint16(_1537) + 1
            continue 
        _1161 = mem[64]
        mem[mem[64]] = 32
        _1163 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _1163:
            mem[u] = t + -_1161 - 64
            _1317 = mem[s]
            _1318 = mem[mem[s]]
            mem[t] = 192
            _1327 = mem[_1318]
            mem[t + 192] = mem[_1318]
            v = 0
            while v < _1327:
                mem[v + t + 224] = mem[v + _1318 + 32]
                v = v + 32
                continue 
            if ceil32(_1327) <= _1327:
                mem[t + 32] = mem[_1317 + 63 len 1]
                mem[t + 64] = mem[_1317 + 94 len 2]
                mem[t + 96] = bool(mem[_1317 + 96])
                _1529 = mem[_1317 + 128]
                mem[t + 128] = ceil32(_1327) + 224
                _1530 = mem[_1529]
                mem[ceil32(_1327) + t + 224] = mem[_1529]
                v = 0
                w = ceil32(_1327) + t + 256
                x = _1529 + 32
                while v < _1530:
                    mem[w] = mem[x + 30 len 2]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                _1677 = mem[_1317 + 160]
                mem[t + 160] = ceil32(_1327) + (32 * _1530) + 256
                _1685 = mem[_1677]
                mem[ceil32(_1327) + t + (32 * _1530) + 256] = mem[_1677]
                v = 0
                w = _1677 + 32
                x = ceil32(_1327) + t + (32 * _1530) + 288
                while v < _1685:
                    mem[x] = mem[w + 28 len 4]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = ceil32(_1327) + t + (32 * _1530) + (32 * _1685) + 288
                u = u + 32
                continue 
            mem[_1327 + t + 224] = 0
            mem[t + 32] = mem[_1317 + 63 len 1]
            mem[t + 64] = mem[_1317 + 94 len 2]
            mem[t + 96] = bool(mem[_1317 + 96])
            _1534 = mem[_1317 + 128]
            mem[t + 128] = ceil32(_1327) + 224
            _1535 = mem[_1534]
            mem[ceil32(_1327) + t + 224] = mem[_1534]
            v = 0
            w = ceil32(_1327) + t + 256
            x = _1534 + 32
            while v < _1535:
                mem[w] = mem[x + 30 len 2]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _1679 = mem[_1317 + 160]
            mem[t + 160] = ceil32(_1327) + (32 * _1535) + 256
            _1686 = mem[_1679]
            mem[ceil32(_1327) + t + (32 * _1535) + 256] = mem[_1679]
            v = 0
            w = _1679 + 32
            x = ceil32(_1327) + t + (32 * _1535) + 288
            while v < _1686:
                mem[x] = mem[w + 28 len 4]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = ceil32(_1327) + t + (32 * _1535) + (32 * _1686) + 288
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * balanceOf[address(arg1)]) + 896
    mem[(32 * balanceOf[address(arg1)]) + 704] = 96
    mem[(32 * balanceOf[address(arg1)]) + 736] = 0
    mem[(32 * balanceOf[address(arg1)]) + 768] = 0
    mem[(32 * balanceOf[address(arg1)]) + 800] = 0
    mem[(32 * balanceOf[address(arg1)]) + 832] = 96
    mem[(32 * balanceOf[address(arg1)]) + 864] = 96
    mem[var28002] = var28001
    if not var28003 - 1:
        if 1 >= sub_9e4df439.length:
            revert with 0, 50
        mem[0] = 13
        idx = 0
        while uint16(idx) < balanceOf[address(arg1)]:
            if uint16(idx) >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            mem[0] = uint16(idx)
            mem[32] = sha3(address(arg1), 8)
            mem[mem[64]] = 0x2e34059900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = tokenOfOwnerByIndex[address(arg1)][idx << 240].field_0
            require ext_code.size(address(sub_9e4df439.field_256))
            staticcall address(sub_9e4df439.field_256).info(uint256 arg1) with:
                    gas gas_remaining wei
                   args tokenOfOwnerByIndex[address(arg1)][idx << 240].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1548 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _1556 = mem[_1548]
            require mem[_1548] <= test266151307()
            require _1548 + mem[_1548] + 31 < _1548 + return_data.size
            _1578 = mem[_1548 + mem[_1548]]
            if mem[_1548 + mem[_1548]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_1548 + mem[_1548]])) + 1 < 0 or _1548 + ceil32(return_data.size) + ceil32(ceil32(mem[_1548 + mem[_1548]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _1548 + ceil32(return_data.size) + ceil32(ceil32(mem[_1548 + mem[_1548]])) + 1
            mem[_1548 + ceil32(return_data.size)] = _1578
            require _1556 + _1578 + 32 <= return_data.size
            s = 0
            while s < _1578:
                mem[s + _1548 + ceil32(return_data.size) + 32] = mem[s + _1548 + _1556 + 32]
                s = s + 32
                continue 
            if ceil32(_1578) <= _1578:
                _1692 = mem[_1548 + 32]
                require mem[_1548 + 32] == mem[_1548 + 63 len 1]
                _1698 = mem[_1548 + 64]
                require mem[_1548 + 64] == mem[_1548 + 94 len 2]
                _1724 = mem[_1548 + 96]
                require mem[_1548 + 96] == bool(mem[_1548 + 96])
                _1745 = mem[_1548 + 128]
                require mem[_1548 + 128] <= test266151307()
                require _1548 + return_data.size > _1548 + mem[_1548 + 128] + 31
                _1752 = mem[_1548 + mem[_1548 + 128]]
                if mem[_1548 + mem[_1548 + 128]] > test266151307():
                    revert with 0, 65
                _1767 = mem[64]
                if mem[64] + ceil32(32 * mem[_1548 + mem[_1548 + 128]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1548 + mem[_1548 + 128]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_1548 + mem[_1548 + 128]]) + 1
                mem[_1767] = _1752
                require _1745 + (32 * _1752) + 32 <= return_data.size
                t = _1548 + _1745 + 32
                u = _1767 + 32
                s = 0
                while s < _1752:
                    require mem[t] == mem[t + 30 len 2]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                _1868 = mem[_1548 + 160]
                require mem[_1548 + 160] <= test266151307()
                require _1548 + mem[_1548 + 160] + 31 < _1548 + return_data.size
                _1893 = mem[_1548 + mem[_1548 + 160]]
                if mem[_1548 + mem[_1548 + 160]] > test266151307():
                    revert with 0, 65
                _1908 = mem[64]
                if mem[64] + ceil32(32 * mem[_1548 + mem[_1548 + 160]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1548 + mem[_1548 + 160]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_1548 + mem[_1548 + 160]]) + 1
                mem[_1908] = _1893
                require _1868 + (32 * _1893) + 32 <= return_data.size
                s = 0
                t = _1548 + _1868 + 32
                u = _1908 + 32
                while s < _1893:
                    require mem[t] == mem[t + 28 len 4]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                _2044 = mem[64]
                mem[64] = mem[64] + 192
                mem[_2044] = _1548 + ceil32(return_data.size)
                mem[_2044 + 32] = uint8(_1692)
                mem[_2044 + 64] = uint16(_1698)
                mem[_2044 + 96] = bool(_1724)
                mem[_2044 + 128] = _1767
                mem[_2044 + 160] = _1908
                if uint16(_1893) >= mem[96]:
                    revert with 0, 50
                mem[(32 * uint16(_1893)) + 128] = _2044
                if uint16(_1893) == 65535:
                    revert with 0, 17
                s = uint16(_1893) + 1
                continue 
            mem[_1578 + _1548 + ceil32(return_data.size) + 32] = 0
            _1693 = mem[_1548 + 32]
            require mem[_1548 + 32] == mem[_1548 + 63 len 1]
            _1699 = mem[_1548 + 64]
            require mem[_1548 + 64] == mem[_1548 + 94 len 2]
            _1725 = mem[_1548 + 96]
            require mem[_1548 + 96] == bool(mem[_1548 + 96])
            _1746 = mem[_1548 + 128]
            require mem[_1548 + 128] <= test266151307()
            require _1548 + return_data.size > _1548 + mem[_1548 + 128] + 31
            _1753 = mem[_1548 + mem[_1548 + 128]]
            if mem[_1548 + mem[_1548 + 128]] > test266151307():
                revert with 0, 65
            _1768 = mem[64]
            if mem[64] + ceil32(32 * mem[_1548 + mem[_1548 + 128]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1548 + mem[_1548 + 128]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[_1548 + mem[_1548 + 128]]) + 1
            mem[_1768] = _1753
            require _1746 + (32 * _1753) + 32 <= return_data.size
            t = _1548 + _1746 + 32
            u = _1768 + 32
            s = 0
            while s < _1753:
                require mem[t] == mem[t + 30 len 2]
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            _1870 = mem[_1548 + 160]
            require mem[_1548 + 160] <= test266151307()
            require _1548 + mem[_1548 + 160] + 31 < _1548 + return_data.size
            _1894 = mem[_1548 + mem[_1548 + 160]]
            if mem[_1548 + mem[_1548 + 160]] > test266151307():
                revert with 0, 65
            _1909 = mem[64]
            if mem[64] + ceil32(32 * mem[_1548 + mem[_1548 + 160]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1548 + mem[_1548 + 160]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[_1548 + mem[_1548 + 160]]) + 1
            mem[_1909] = _1894
            require _1870 + (32 * _1894) + 32 <= return_data.size
            s = 0
            t = _1548 + _1870 + 32
            u = _1909 + 32
            while s < _1894:
                require mem[t] == mem[t + 28 len 4]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _2046 = mem[64]
            mem[64] = mem[64] + 192
            mem[_2046] = _1548 + ceil32(return_data.size)
            mem[_2046 + 32] = uint8(_1693)
            mem[_2046 + 64] = uint16(_1699)
            mem[_2046 + 96] = bool(_1725)
            mem[_2046 + 128] = _1768
            mem[_2046 + 160] = _1909
            if uint16(_1894) >= mem[96]:
                revert with 0, 50
            mem[(32 * uint16(_1894)) + 128] = _2046
            if uint16(_1894) == 65535:
                revert with 0, 17
            s = uint16(_1894) + 1
            continue 
        _1518 = mem[64]
        mem[mem[64]] = 32
        _1520 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _1520:
            mem[u] = t + -_1518 - 64
            _1674 = mem[s]
            _1675 = mem[mem[s]]
            mem[t] = 192
            _1684 = mem[_1675]
            mem[t + 192] = mem[_1675]
            v = 0
            while v < _1684:
                mem[v + t + 224] = mem[v + _1675 + 32]
                v = v + 32
                continue 
            if ceil32(_1684) <= _1684:
                mem[t + 32] = mem[_1674 + 63 len 1]
                mem[t + 64] = mem[_1674 + 94 len 2]
                mem[t + 96] = bool(mem[_1674 + 96])
                _1886 = mem[_1674 + 128]
                mem[t + 128] = ceil32(_1684) + 224
                _1887 = mem[_1886]
                mem[ceil32(_1684) + t + 224] = mem[_1886]
                v = 0
                w = ceil32(_1684) + t + 256
                x = _1886 + 32
                while v < _1887:
                    mem[w] = mem[x + 30 len 2]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                _2034 = mem[_1674 + 160]
                mem[t + 160] = ceil32(_1684) + (32 * _1887) + 256
                _2042 = mem[_2034]
                mem[ceil32(_1684) + t + (32 * _1887) + 256] = mem[_2034]
                v = 0
                w = _2034 + 32
                x = ceil32(_1684) + t + (32 * _1887) + 288
                while v < _2042:
                    mem[x] = mem[w + 28 len 4]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = ceil32(_1684) + t + (32 * _1887) + (32 * _2042) + 288
                u = u + 32
                continue 
            mem[_1684 + t + 224] = 0
            mem[t + 32] = mem[_1674 + 63 len 1]
            mem[t + 64] = mem[_1674 + 94 len 2]
            mem[t + 96] = bool(mem[_1674 + 96])
            _1891 = mem[_1674 + 128]
            mem[t + 128] = ceil32(_1684) + 224
            _1892 = mem[_1891]
            mem[ceil32(_1684) + t + 224] = mem[_1891]
            v = 0
            w = ceil32(_1684) + t + 256
            x = _1891 + 32
            while v < _1892:
                mem[w] = mem[x + 30 len 2]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _2036 = mem[_1674 + 160]
            mem[t + 160] = ceil32(_1684) + (32 * _1892) + 256
            _2043 = mem[_2036]
            mem[ceil32(_1684) + t + (32 * _1892) + 256] = mem[_2036]
            v = 0
            w = _2036 + 32
            x = ceil32(_1684) + t + (32 * _1892) + 288
            while v < _2043:
                mem[x] = mem[w + 28 len 4]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = ceil32(_1684) + t + (32 * _1892) + (32 * _2043) + 288
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * balanceOf[address(arg1)]) + 1088
    mem[(32 * balanceOf[address(arg1)]) + 896] = 96
    mem[(32 * balanceOf[address(arg1)]) + 928] = 0
    mem[(32 * balanceOf[address(arg1)]) + 960] = 0
    mem[(32 * balanceOf[address(arg1)]) + 992] = 0
    mem[(32 * balanceOf[address(arg1)]) + 1024] = 96
    mem[(32 * balanceOf[address(arg1)]) + 1056] = 96
    mem[var32002] = var32001
    if not var32003 - 1:
        if 1 >= sub_9e4df439.length:
            revert with 0, 50
        mem[0] = 13
        idx = 0
        while uint16(idx) < balanceOf[address(arg1)]:
            if uint16(idx) >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            mem[0] = uint16(idx)
            mem[32] = sha3(address(arg1), 8)
            mem[mem[64]] = 0x2e34059900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = tokenOfOwnerByIndex[address(arg1)][idx << 240].field_0
            require ext_code.size(address(sub_9e4df439.field_256))
            staticcall address(sub_9e4df439.field_256).info(uint256 arg1) with:
                    gas gas_remaining wei
                   args tokenOfOwnerByIndex[address(arg1)][idx << 240].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1905 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _1913 = mem[_1905]
            require mem[_1905] <= test266151307()
            require _1905 + mem[_1905] + 31 < _1905 + return_data.size
            _1935 = mem[_1905 + mem[_1905]]
            if mem[_1905 + mem[_1905]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_1905 + mem[_1905]])) + 1 < 0 or _1905 + ceil32(return_data.size) + ceil32(ceil32(mem[_1905 + mem[_1905]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _1905 + ceil32(return_data.size) + ceil32(ceil32(mem[_1905 + mem[_1905]])) + 1
            mem[_1905 + ceil32(return_data.size)] = _1935
            require _1913 + _1935 + 32 <= return_data.size
            s = 0
            while s < _1935:
                mem[s + _1905 + ceil32(return_data.size) + 32] = mem[s + _1905 + _1913 + 32]
                s = s + 32
                continue 
            if ceil32(_1935) <= _1935:
                _2049 = mem[_1905 + 32]
                require mem[_1905 + 32] == mem[_1905 + 63 len 1]
                _2055 = mem[_1905 + 64]
                require mem[_1905 + 64] == mem[_1905 + 94 len 2]
                _2081 = mem[_1905 + 96]
                require mem[_1905 + 96] == bool(mem[_1905 + 96])
                _2102 = mem[_1905 + 128]
                require mem[_1905 + 128] <= test266151307()
                require _1905 + return_data.size > _1905 + mem[_1905 + 128] + 31
                _2109 = mem[_1905 + mem[_1905 + 128]]
                if mem[_1905 + mem[_1905 + 128]] > test266151307():
                    revert with 0, 65
                _2124 = mem[64]
                if mem[64] + ceil32(32 * mem[_1905 + mem[_1905 + 128]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1905 + mem[_1905 + 128]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_1905 + mem[_1905 + 128]]) + 1
                mem[_2124] = _2109
                require _2102 + (32 * _2109) + 32 <= return_data.size
                t = _1905 + _2102 + 32
                u = _2124 + 32
                s = 0
                while s < _2109:
                    require mem[t] == mem[t + 30 len 2]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                _2225 = mem[_1905 + 160]
                require mem[_1905 + 160] <= test266151307()
                require _1905 + mem[_1905 + 160] + 31 < _1905 + return_data.size
                _2250 = mem[_1905 + mem[_1905 + 160]]
                if mem[_1905 + mem[_1905 + 160]] > test266151307():
                    revert with 0, 65
                _2265 = mem[64]
                if mem[64] + ceil32(32 * mem[_1905 + mem[_1905 + 160]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1905 + mem[_1905 + 160]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_1905 + mem[_1905 + 160]]) + 1
                mem[_2265] = _2250
                require _2225 + (32 * _2250) + 32 <= return_data.size
                s = 0
                t = _1905 + _2225 + 32
                u = _2265 + 32
                while s < _2250:
                    require mem[t] == mem[t + 28 len 4]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                _2401 = mem[64]
                mem[64] = mem[64] + 192
                mem[_2401] = _1905 + ceil32(return_data.size)
                mem[_2401 + 32] = uint8(_2049)
                mem[_2401 + 64] = uint16(_2055)
                mem[_2401 + 96] = bool(_2081)
                mem[_2401 + 128] = _2124
                mem[_2401 + 160] = _2265
                if uint16(_2250) >= mem[96]:
                    revert with 0, 50
                mem[(32 * uint16(_2250)) + 128] = _2401
                if uint16(_2250) == 65535:
                    revert with 0, 17
                s = uint16(_2250) + 1
                continue 
            mem[_1935 + _1905 + ceil32(return_data.size) + 32] = 0
            _2050 = mem[_1905 + 32]
            require mem[_1905 + 32] == mem[_1905 + 63 len 1]
            _2056 = mem[_1905 + 64]
            require mem[_1905 + 64] == mem[_1905 + 94 len 2]
            _2082 = mem[_1905 + 96]
            require mem[_1905 + 96] == bool(mem[_1905 + 96])
            _2103 = mem[_1905 + 128]
            require mem[_1905 + 128] <= test266151307()
            require _1905 + return_data.size > _1905 + mem[_1905 + 128] + 31
            _2110 = mem[_1905 + mem[_1905 + 128]]
            if mem[_1905 + mem[_1905 + 128]] > test266151307():
                revert with 0, 65
            _2125 = mem[64]
            if mem[64] + ceil32(32 * mem[_1905 + mem[_1905 + 128]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1905 + mem[_1905 + 128]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[_1905 + mem[_1905 + 128]]) + 1
            mem[_2125] = _2110
            require _2103 + (32 * _2110) + 32 <= return_data.size
            t = _1905 + _2103 + 32
            u = _2125 + 32
            s = 0
            while s < _2110:
                require mem[t] == mem[t + 30 len 2]
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            _2227 = mem[_1905 + 160]
            require mem[_1905 + 160] <= test266151307()
            require _1905 + mem[_1905 + 160] + 31 < _1905 + return_data.size
            _2251 = mem[_1905 + mem[_1905 + 160]]
            if mem[_1905 + mem[_1905 + 160]] > test266151307():
                revert with 0, 65
            _2266 = mem[64]
            if mem[64] + ceil32(32 * mem[_1905 + mem[_1905 + 160]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1905 + mem[_1905 + 160]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[_1905 + mem[_1905 + 160]]) + 1
            mem[_2266] = _2251
            require _2227 + (32 * _2251) + 32 <= return_data.size
            s = 0
            t = _1905 + _2227 + 32
            u = _2266 + 32
            while s < _2251:
                require mem[t] == mem[t + 28 len 4]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _2403 = mem[64]
            mem[64] = mem[64] + 192
            mem[_2403] = _1905 + ceil32(return_data.size)
            mem[_2403 + 32] = uint8(_2050)
            mem[_2403 + 64] = uint16(_2056)
            mem[_2403 + 96] = bool(_2082)
            mem[_2403 + 128] = _2125
            mem[_2403 + 160] = _2266
            if uint16(_2251) >= mem[96]:
                revert with 0, 50
            mem[(32 * uint16(_2251)) + 128] = _2403
            if uint16(_2251) == 65535:
                revert with 0, 17
            s = uint16(_2251) + 1
            continue 
        _1875 = mem[64]
        mem[mem[64]] = 32
        _1877 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _1877:
            mem[u] = t + -_1875 - 64
            _2031 = mem[s]
            _2032 = mem[mem[s]]
            mem[t] = 192
            _2041 = mem[_2032]
            mem[t + 192] = mem[_2032]
            v = 0
            while v < _2041:
                mem[v + t + 224] = mem[v + _2032 + 32]
                v = v + 32
                continue 
            if ceil32(_2041) <= _2041:
                mem[t + 32] = mem[_2031 + 63 len 1]
                mem[t + 64] = mem[_2031 + 94 len 2]
                mem[t + 96] = bool(mem[_2031 + 96])
                _2243 = mem[_2031 + 128]
                mem[t + 128] = ceil32(_2041) + 224
                _2244 = mem[_2243]
                mem[ceil32(_2041) + t + 224] = mem[_2243]
                v = 0
                w = ceil32(_2041) + t + 256
                x = _2243 + 32
                while v < _2244:
                    mem[w] = mem[x + 30 len 2]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                _2391 = mem[_2031 + 160]
                mem[t + 160] = ceil32(_2041) + (32 * _2244) + 256
                _2399 = mem[_2391]
                mem[ceil32(_2041) + t + (32 * _2244) + 256] = mem[_2391]
                v = 0
                w = _2391 + 32
                x = ceil32(_2041) + t + (32 * _2244) + 288
                while v < _2399:
                    mem[x] = mem[w + 28 len 4]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = ceil32(_2041) + t + (32 * _2244) + (32 * _2399) + 288
                u = u + 32
                continue 
            mem[_2041 + t + 224] = 0
            mem[t + 32] = mem[_2031 + 63 len 1]
            mem[t + 64] = mem[_2031 + 94 len 2]
            mem[t + 96] = bool(mem[_2031 + 96])
            _2248 = mem[_2031 + 128]
            mem[t + 128] = ceil32(_2041) + 224
            _2249 = mem[_2248]
            mem[ceil32(_2041) + t + 224] = mem[_2248]
            v = 0
            w = ceil32(_2041) + t + 256
            x = _2248 + 32
            while v < _2249:
                mem[w] = mem[x + 30 len 2]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _2393 = mem[_2031 + 160]
            mem[t + 160] = ceil32(_2041) + (32 * _2249) + 256
            _2400 = mem[_2393]
            mem[ceil32(_2041) + t + (32 * _2249) + 256] = mem[_2393]
            v = 0
            w = _2393 + 32
            x = ceil32(_2041) + t + (32 * _2249) + 288
            while v < _2400:
                mem[x] = mem[w + 28 len 4]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = ceil32(_2041) + t + (32 * _2249) + (32 * _2400) + 288
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * balanceOf[address(arg1)]) + 1280
    mem[(32 * balanceOf[address(arg1)]) + 1088] = 96
    mem[(32 * balanceOf[address(arg1)]) + 1120] = 0
    mem[(32 * balanceOf[address(arg1)]) + 1152] = 0
    mem[(32 * balanceOf[address(arg1)]) + 1184] = 0
    mem[(32 * balanceOf[address(arg1)]) + 1216] = 96
    mem[(32 * balanceOf[address(arg1)]) + 1248] = 96
    mem[var36002] = var36001
    if not var36003 - 1:
        if 1 >= sub_9e4df439.length:
            revert with 0, 50
        mem[0] = 13
        idx = 0
        while uint16(idx) < balanceOf[address(arg1)]:
            if uint16(idx) >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            mem[0] = uint16(idx)
            mem[32] = sha3(address(arg1), 8)
            mem[mem[64]] = 0x2e34059900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = tokenOfOwnerByIndex[address(arg1)][idx << 240].field_0
            require ext_code.size(address(sub_9e4df439.field_256))
            staticcall address(sub_9e4df439.field_256).info(uint256 arg1) with:
                    gas gas_remaining wei
                   args tokenOfOwnerByIndex[address(arg1)][idx << 240].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2262 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _2270 = mem[_2262]
            require mem[_2262] <= test266151307()
            require _2262 + mem[_2262] + 31 < _2262 + return_data.size
            _2292 = mem[_2262 + mem[_2262]]
            if mem[_2262 + mem[_2262]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_2262 + mem[_2262]])) + 1 < 0 or _2262 + ceil32(return_data.size) + ceil32(ceil32(mem[_2262 + mem[_2262]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _2262 + ceil32(return_data.size) + ceil32(ceil32(mem[_2262 + mem[_2262]])) + 1
            mem[_2262 + ceil32(return_data.size)] = _2292
            require _2270 + _2292 + 32 <= return_data.size
            s = 0
            while s < _2292:
                mem[s + _2262 + ceil32(return_data.size) + 32] = mem[s + _2262 + _2270 + 32]
                s = s + 32
                continue 
            if ceil32(_2292) <= _2292:
                _2406 = mem[_2262 + 32]
                require mem[_2262 + 32] == mem[_2262 + 63 len 1]
                _2412 = mem[_2262 + 64]
                require mem[_2262 + 64] == mem[_2262 + 94 len 2]
                _2438 = mem[_2262 + 96]
                require mem[_2262 + 96] == bool(mem[_2262 + 96])
                _2459 = mem[_2262 + 128]
                require mem[_2262 + 128] <= test266151307()
                require _2262 + return_data.size > _2262 + mem[_2262 + 128] + 31
                _2466 = mem[_2262 + mem[_2262 + 128]]
                if mem[_2262 + mem[_2262 + 128]] > test266151307():
                    revert with 0, 65
                _2481 = mem[64]
                if mem[64] + ceil32(32 * mem[_2262 + mem[_2262 + 128]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_2262 + mem[_2262 + 128]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_2262 + mem[_2262 + 128]]) + 1
                mem[_2481] = _2466
                require _2459 + (32 * _2466) + 32 <= return_data.size
                t = _2262 + _2459 + 32
                u = _2481 + 32
                s = 0
                while s < _2466:
                    require mem[t] == mem[t + 30 len 2]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                _2582 = mem[_2262 + 160]
                require mem[_2262 + 160] <= test266151307()
                require _2262 + mem[_2262 + 160] + 31 < _2262 + return_data.size
                _2607 = mem[_2262 + mem[_2262 + 160]]
                if mem[_2262 + mem[_2262 + 160]] > test266151307():
                    revert with 0, 65
                _2622 = mem[64]
                if mem[64] + ceil32(32 * mem[_2262 + mem[_2262 + 160]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_2262 + mem[_2262 + 160]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_2262 + mem[_2262 + 160]]) + 1
                mem[_2622] = _2607
                require _2582 + (32 * _2607) + 32 <= return_data.size
                s = 0
                t = _2262 + _2582 + 32
                u = _2622 + 32
                while s < _2607:
                    require mem[t] == mem[t + 28 len 4]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                _2758 = mem[64]
                mem[64] = mem[64] + 192
                mem[_2758] = _2262 + ceil32(return_data.size)
                mem[_2758 + 32] = uint8(_2406)
                mem[_2758 + 64] = uint16(_2412)
                mem[_2758 + 96] = bool(_2438)
                mem[_2758 + 128] = _2481
                mem[_2758 + 160] = _2622
                if uint16(_2607) >= mem[96]:
                    revert with 0, 50
                mem[(32 * uint16(_2607)) + 128] = _2758
                if uint16(_2607) == 65535:
                    revert with 0, 17
                s = uint16(_2607) + 1
                continue 
            mem[_2292 + _2262 + ceil32(return_data.size) + 32] = 0
            _2407 = mem[_2262 + 32]
            require mem[_2262 + 32] == mem[_2262 + 63 len 1]
            _2413 = mem[_2262 + 64]
            require mem[_2262 + 64] == mem[_2262 + 94 len 2]
            _2439 = mem[_2262 + 96]
            require mem[_2262 + 96] == bool(mem[_2262 + 96])
            _2460 = mem[_2262 + 128]
            require mem[_2262 + 128] <= test266151307()
            require _2262 + return_data.size > _2262 + mem[_2262 + 128] + 31
            _2467 = mem[_2262 + mem[_2262 + 128]]
            if mem[_2262 + mem[_2262 + 128]] > test266151307():
                revert with 0, 65
            _2482 = mem[64]
            if mem[64] + ceil32(32 * mem[_2262 + mem[_2262 + 128]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_2262 + mem[_2262 + 128]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[_2262 + mem[_2262 + 128]]) + 1
            mem[_2482] = _2467
            require _2460 + (32 * _2467) + 32 <= return_data.size
            t = _2262 + _2460 + 32
            u = _2482 + 32
            s = 0
            while s < _2467:
                require mem[t] == mem[t + 30 len 2]
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            _2584 = mem[_2262 + 160]
            require mem[_2262 + 160] <= test266151307()
            require _2262 + mem[_2262 + 160] + 31 < _2262 + return_data.size
            _2608 = mem[_2262 + mem[_2262 + 160]]
            if mem[_2262 + mem[_2262 + 160]] > test266151307():
                revert with 0, 65
            _2623 = mem[64]
            if mem[64] + ceil32(32 * mem[_2262 + mem[_2262 + 160]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_2262 + mem[_2262 + 160]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[_2262 + mem[_2262 + 160]]) + 1
            mem[_2623] = _2608
            require _2584 + (32 * _2608) + 32 <= return_data.size
            s = 0
            t = _2262 + _2584 + 32
            u = _2623 + 32
            while s < _2608:
                require mem[t] == mem[t + 28 len 4]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _2760 = mem[64]
            mem[64] = mem[64] + 192
            mem[_2760] = _2262 + ceil32(return_data.size)
            mem[_2760 + 32] = uint8(_2407)
            mem[_2760 + 64] = uint16(_2413)
            mem[_2760 + 96] = bool(_2439)
            mem[_2760 + 128] = _2482
            mem[_2760 + 160] = _2623
            if uint16(_2608) >= mem[96]:
                revert with 0, 50
            mem[(32 * uint16(_2608)) + 128] = _2760
            if uint16(_2608) == 65535:
                revert with 0, 17
            s = uint16(_2608) + 1
            continue 
        _2232 = mem[64]
        mem[mem[64]] = 32
        _2234 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _2234:
            mem[u] = t + -_2232 - 64
            _2388 = mem[s]
            _2389 = mem[mem[s]]
            mem[t] = 192
            _2398 = mem[_2389]
            mem[t + 192] = mem[_2389]
            v = 0
            while v < _2398:
                mem[v + t + 224] = mem[v + _2389 + 32]
                v = v + 32
                continue 
            if ceil32(_2398) <= _2398:
                mem[t + 32] = mem[_2388 + 63 len 1]
                mem[t + 64] = mem[_2388 + 94 len 2]
                mem[t + 96] = bool(mem[_2388 + 96])
                _2600 = mem[_2388 + 128]
                mem[t + 128] = ceil32(_2398) + 224
                _2601 = mem[_2600]
                mem[ceil32(_2398) + t + 224] = mem[_2600]
                v = 0
                w = ceil32(_2398) + t + 256
                x = _2600 + 32
                while v < _2601:
                    mem[w] = mem[x + 30 len 2]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                _2748 = mem[_2388 + 160]
                mem[t + 160] = ceil32(_2398) + (32 * _2601) + 256
                _2756 = mem[_2748]
                mem[ceil32(_2398) + t + (32 * _2601) + 256] = mem[_2748]
                v = 0
                w = _2748 + 32
                x = ceil32(_2398) + t + (32 * _2601) + 288
                while v < _2756:
                    mem[x] = mem[w + 28 len 4]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = ceil32(_2398) + t + (32 * _2601) + (32 * _2756) + 288
                u = u + 32
                continue 
            mem[_2398 + t + 224] = 0
            mem[t + 32] = mem[_2388 + 63 len 1]
            mem[t + 64] = mem[_2388 + 94 len 2]
            mem[t + 96] = bool(mem[_2388 + 96])
            _2605 = mem[_2388 + 128]
            mem[t + 128] = ceil32(_2398) + 224
            _2606 = mem[_2605]
            mem[ceil32(_2398) + t + 224] = mem[_2605]
            v = 0
            w = ceil32(_2398) + t + 256
            x = _2605 + 32
            while v < _2606:
                mem[w] = mem[x + 30 len 2]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _2750 = mem[_2388 + 160]
            mem[t + 160] = ceil32(_2398) + (32 * _2606) + 256
            _2757 = mem[_2750]
            mem[ceil32(_2398) + t + (32 * _2606) + 256] = mem[_2750]
            v = 0
            w = _2750 + 32
            x = ceil32(_2398) + t + (32 * _2606) + 288
            while v < _2757:
                mem[x] = mem[w + 28 len 4]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = ceil32(_2398) + t + (32 * _2606) + (32 * _2757) + 288
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * balanceOf[address(arg1)]) + 1472
    mem[(32 * balanceOf[address(arg1)]) + 1280] = 96
    mem[(32 * balanceOf[address(arg1)]) + 1312] = 0
    mem[(32 * balanceOf[address(arg1)]) + 1344] = 0
    mem[(32 * balanceOf[address(arg1)]) + 1376] = 0
    mem[(32 * balanceOf[address(arg1)]) + 1408] = 96
    mem[(32 * balanceOf[address(arg1)]) + 1440] = 96
    mem[var40002] = var40001
    if not var40003 - 1:
        if 1 >= sub_9e4df439.length:
            revert with 0, 50
        mem[0] = 13
        idx = 0
        while uint16(idx) < balanceOf[address(arg1)]:
            if uint16(idx) >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            mem[0] = uint16(idx)
            mem[32] = sha3(address(arg1), 8)
            mem[mem[64]] = 0x2e34059900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = tokenOfOwnerByIndex[address(arg1)][idx << 240].field_0
            require ext_code.size(address(sub_9e4df439.field_256))
            staticcall address(sub_9e4df439.field_256).info(uint256 arg1) with:
                    gas gas_remaining wei
                   args tokenOfOwnerByIndex[address(arg1)][idx << 240].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2619 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _2627 = mem[_2619]
            require mem[_2619] <= test266151307()
            require _2619 + mem[_2619] + 31 < _2619 + return_data.size
            _2649 = mem[_2619 + mem[_2619]]
            if mem[_2619 + mem[_2619]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_2619 + mem[_2619]])) + 1 < 0 or _2619 + ceil32(return_data.size) + ceil32(ceil32(mem[_2619 + mem[_2619]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _2619 + ceil32(return_data.size) + ceil32(ceil32(mem[_2619 + mem[_2619]])) + 1
            mem[_2619 + ceil32(return_data.size)] = _2649
            require _2627 + _2649 + 32 <= return_data.size
            s = 0
            while s < _2649:
                mem[s + _2619 + ceil32(return_data.size) + 32] = mem[s + _2619 + _2627 + 32]
                s = s + 32
                continue 
            if ceil32(_2649) <= _2649:
                _2763 = mem[_2619 + 32]
                require mem[_2619 + 32] == mem[_2619 + 63 len 1]
                _2769 = mem[_2619 + 64]
                require mem[_2619 + 64] == mem[_2619 + 94 len 2]
                _2795 = mem[_2619 + 96]
                require mem[_2619 + 96] == bool(mem[_2619 + 96])
                _2816 = mem[_2619 + 128]
                require mem[_2619 + 128] <= test266151307()
                require _2619 + return_data.size > _2619 + mem[_2619 + 128] + 31
                _2823 = mem[_2619 + mem[_2619 + 128]]
                if mem[_2619 + mem[_2619 + 128]] > test266151307():
                    revert with 0, 65
                _2838 = mem[64]
                if mem[64] + ceil32(32 * mem[_2619 + mem[_2619 + 128]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_2619 + mem[_2619 + 128]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_2619 + mem[_2619 + 128]]) + 1
                mem[_2838] = _2823
                require _2816 + (32 * _2823) + 32 <= return_data.size
                t = _2619 + _2816 + 32
                u = _2838 + 32
                s = 0
                while s < _2823:
                    require mem[t] == mem[t + 30 len 2]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                _2939 = mem[_2619 + 160]
                require mem[_2619 + 160] <= test266151307()
                require _2619 + mem[_2619 + 160] + 31 < _2619 + return_data.size
                _2964 = mem[_2619 + mem[_2619 + 160]]
                if mem[_2619 + mem[_2619 + 160]] > test266151307():
                    revert with 0, 65
                _2979 = mem[64]
                if mem[64] + ceil32(32 * mem[_2619 + mem[_2619 + 160]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_2619 + mem[_2619 + 160]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_2619 + mem[_2619 + 160]]) + 1
                mem[_2979] = _2964
                require _2939 + (32 * _2964) + 32 <= return_data.size
                s = 0
                t = _2619 + _2939 + 32
                u = _2979 + 32
                while s < _2964:
                    require mem[t] == mem[t + 28 len 4]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                _3115 = mem[64]
                mem[64] = mem[64] + 192
                mem[_3115] = _2619 + ceil32(return_data.size)
                mem[_3115 + 32] = uint8(_2763)
                mem[_3115 + 64] = uint16(_2769)
                mem[_3115 + 96] = bool(_2795)
                mem[_3115 + 128] = _2838
                mem[_3115 + 160] = _2979
                if uint16(_2964) >= mem[96]:
                    revert with 0, 50
                mem[(32 * uint16(_2964)) + 128] = _3115
                if uint16(_2964) == 65535:
                    revert with 0, 17
                s = uint16(_2964) + 1
                continue 
            mem[_2649 + _2619 + ceil32(return_data.size) + 32] = 0
            _2764 = mem[_2619 + 32]
            require mem[_2619 + 32] == mem[_2619 + 63 len 1]
            _2770 = mem[_2619 + 64]
            require mem[_2619 + 64] == mem[_2619 + 94 len 2]
            _2796 = mem[_2619 + 96]
            require mem[_2619 + 96] == bool(mem[_2619 + 96])
            _2817 = mem[_2619 + 128]
            require mem[_2619 + 128] <= test266151307()
            require _2619 + return_data.size > _2619 + mem[_2619 + 128] + 31
            _2824 = mem[_2619 + mem[_2619 + 128]]
            if mem[_2619 + mem[_2619 + 128]] > test266151307():
                revert with 0, 65
            _2839 = mem[64]
            if mem[64] + ceil32(32 * mem[_2619 + mem[_2619 + 128]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_2619 + mem[_2619 + 128]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[_2619 + mem[_2619 + 128]]) + 1
            mem[_2839] = _2824
            require _2817 + (32 * _2824) + 32 <= return_data.size
            t = _2619 + _2817 + 32
            u = _2839 + 32
            s = 0
            while s < _2824:
                require mem[t] == mem[t + 30 len 2]
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            _2941 = mem[_2619 + 160]
            require mem[_2619 + 160] <= test266151307()
            require _2619 + mem[_2619 + 160] + 31 < _2619 + return_data.size
            _2965 = mem[_2619 + mem[_2619 + 160]]
            if mem[_2619 + mem[_2619 + 160]] > test266151307():
                revert with 0, 65
            _2980 = mem[64]
            if mem[64] + ceil32(32 * mem[_2619 + mem[_2619 + 160]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_2619 + mem[_2619 + 160]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[_2619 + mem[_2619 + 160]]) + 1
            mem[_2980] = _2965
            require _2941 + (32 * _2965) + 32 <= return_data.size
            s = 0
            t = _2619 + _2941 + 32
            u = _2980 + 32
            while s < _2965:
                require mem[t] == mem[t + 28 len 4]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _3117 = mem[64]
            mem[64] = mem[64] + 192
            mem[_3117] = _2619 + ceil32(return_data.size)
            mem[_3117 + 32] = uint8(_2764)
            mem[_3117 + 64] = uint16(_2770)
            mem[_3117 + 96] = bool(_2796)
            mem[_3117 + 128] = _2839
            mem[_3117 + 160] = _2980
            if uint16(_2965) >= mem[96]:
                revert with 0, 50
            mem[(32 * uint16(_2965)) + 128] = _3117
            if uint16(_2965) == 65535:
                revert with 0, 17
            s = uint16(_2965) + 1
            continue 
        _2589 = mem[64]
        mem[mem[64]] = 32
        _2591 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _2591:
            mem[u] = t + -_2589 - 64
            _2745 = mem[s]
            _2746 = mem[mem[s]]
            mem[t] = 192
            _2755 = mem[_2746]
            mem[t + 192] = mem[_2746]
            v = 0
            while v < _2755:
                mem[v + t + 224] = mem[v + _2746 + 32]
                v = v + 32
                continue 
            if ceil32(_2755) <= _2755:
                mem[t + 32] = mem[_2745 + 63 len 1]
                mem[t + 64] = mem[_2745 + 94 len 2]
                mem[t + 96] = bool(mem[_2745 + 96])
                _2957 = mem[_2745 + 128]
                mem[t + 128] = ceil32(_2755) + 224
                _2958 = mem[_2957]
                mem[ceil32(_2755) + t + 224] = mem[_2957]
                v = 0
                w = ceil32(_2755) + t + 256
                x = _2957 + 32
                while v < _2958:
                    mem[w] = mem[x + 30 len 2]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                _3105 = mem[_2745 + 160]
                mem[t + 160] = ceil32(_2755) + (32 * _2958) + 256
                _3113 = mem[_3105]
                mem[ceil32(_2755) + t + (32 * _2958) + 256] = mem[_3105]
                v = 0
                w = _3105 + 32
                x = ceil32(_2755) + t + (32 * _2958) + 288
                while v < _3113:
                    mem[x] = mem[w + 28 len 4]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = ceil32(_2755) + t + (32 * _2958) + (32 * _3113) + 288
                u = u + 32
                continue 
            mem[_2755 + t + 224] = 0
            mem[t + 32] = mem[_2745 + 63 len 1]
            mem[t + 64] = mem[_2745 + 94 len 2]
            mem[t + 96] = bool(mem[_2745 + 96])
            _2962 = mem[_2745 + 128]
            mem[t + 128] = ceil32(_2755) + 224
            _2963 = mem[_2962]
            mem[ceil32(_2755) + t + 224] = mem[_2962]
            v = 0
            w = ceil32(_2755) + t + 256
            x = _2962 + 32
            while v < _2963:
                mem[w] = mem[x + 30 len 2]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _3107 = mem[_2745 + 160]
            mem[t + 160] = ceil32(_2755) + (32 * _2963) + 256
            _3114 = mem[_3107]
            mem[ceil32(_2755) + t + (32 * _2963) + 256] = mem[_3107]
            v = 0
            w = _3107 + 32
            x = ceil32(_2755) + t + (32 * _2963) + 288
            while v < _3114:
                mem[x] = mem[w + 28 len 4]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = ceil32(_2755) + t + (32 * _2963) + (32 * _3114) + 288
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * balanceOf[address(arg1)]) + 1664
    mem[(32 * balanceOf[address(arg1)]) + 1472] = 96
    mem[(32 * balanceOf[address(arg1)]) + 1504] = 0
    mem[(32 * balanceOf[address(arg1)]) + 1536] = 0
    mem[(32 * balanceOf[address(arg1)]) + 1568] = 0
    mem[(32 * balanceOf[address(arg1)]) + 1600] = 96
    mem[(32 * balanceOf[address(arg1)]) + 1632] = 96
    mem[var44002] = var44001
    if var44003 - 1:
        mem[(32 * balanceOf[address(arg1)]) + 1824] = 96
        mem[var48002] = var48001
        if var48003 - 1:
            # nil
        else:
            if 1 >= sub_9e4df439.length:
                revert with 0, 50
            if uint16(var117001) >= balanceOf[address(arg1)]:
                # nil
            else:
                if uint16(var117001) >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                mem[0] = uint16(var117001)
                mem[32] = sha3(address(arg1), 8)
                mem[(32 * balanceOf[address(arg1)]) + 1856] = 0x2e34059900000000000000000000000000000000000000000000000000000000
                mem[(32 * balanceOf[address(arg1)]) + 1860] = tokenOfOwnerByIndex[address(arg1)][var117001 << 240].field_0
                require ext_code.size(address(sub_9e4df439.field_256))
                staticcall address(sub_9e4df439.field_256).info(uint256 arg1) with:
                        gas gas_remaining wei
                       args tokenOfOwnerByIndex[address(arg1)][var117001 << 240].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * balanceOf[address(arg1)]) + 1856 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 1856
                require return_data.size >= 192
                require mem[(32 * balanceOf[address(arg1)]) + 1856 len 4], tokenOfOwnerByIndex[address(arg1)][var117001 << 240].field_32 <= test266151307()
                require (32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1856 len 4], tokenOfOwnerByIndex[address(arg1)][var117001 << 240].field_32 + 1887 < (32 * balanceOf[address(arg1)]) + return_data.size + 1856
                if mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1856 len 4], tokenOfOwnerByIndex[address(arg1)][var117001 << 240].field_32 + 1856] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1856 len 4], tokenOfOwnerByIndex[address(arg1)][var117001 << 240].field_32 + 1856])) + 1 < 0 or (32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + ceil32(ceil32(mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1856 len 4], tokenOfOwnerByIndex[address(arg1)][var117001 << 240].field_32 + 1856])) + 1857 > test266151307():
                    revert with 0, 65
                require mem[(32 * balanceOf[address(arg1)]) + 1856 len 4], tokenOfOwnerByIndex[address(arg1)][var117001 << 240].field_32 + mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1856 len 4], tokenOfOwnerByIndex[address(arg1)][var117001 << 240].field_32 + 1856] + 32 <= return_data.size
                # nil
    else:
        if 1 >= sub_9e4df439.length:
            revert with 0, 50
        mem[0] = 13
        if uint16(var113001) >= balanceOf[address(arg1)]:
            mem[(32 * balanceOf[address(arg1)]) + 1664] = 32
            mem[(32 * balanceOf[address(arg1)]) + 1696] = balanceOf[address(arg1)]
            if var69001 >= balanceOf[address(arg1)]:
                return memory
                  from (32 * balanceOf[address(arg1)]) + 1664
                   len var69003 + -(32 * balanceOf[address(arg1)]) - 1664
            mem[var69005] = var69003 + -(32 * balanceOf[address(arg1)]) - 1728
            _3103 = mem[mem[var69002]]
            mem[var69003] = 192
            # nil
        else:
            if uint16(var113001) >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            mem[0] = uint16(var113001)
            mem[(32 * balanceOf[address(arg1)]) + 1664] = 0x2e34059900000000000000000000000000000000000000000000000000000000
            mem[(32 * balanceOf[address(arg1)]) + 1668] = tokenOfOwnerByIndex[address(arg1)][var113001 << 240].field_0
            require ext_code.size(address(sub_9e4df439.field_256))
            staticcall address(sub_9e4df439.field_256).info(uint256 arg1) with:
                    gas gas_remaining wei
                   args tokenOfOwnerByIndex[address(arg1)][var113001 << 240].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * balanceOf[address(arg1)]) + 1664 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 1664
            require return_data.size >= 192
            _2984 = mem[(32 * balanceOf[address(arg1)]) + 1664 len 4], tokenOfOwnerByIndex[address(arg1)][var113001 << 240].field_32
            require mem[(32 * balanceOf[address(arg1)]) + 1664 len 4], tokenOfOwnerByIndex[address(arg1)][var113001 << 240].field_32 <= test266151307()
            require (32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1664 len 4], tokenOfOwnerByIndex[address(arg1)][var113001 << 240].field_32 + 1695 < (32 * balanceOf[address(arg1)]) + return_data.size + 1664
            _3006 = mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1664 len 4], tokenOfOwnerByIndex[address(arg1)][var113001 << 240].field_32 + 1664]
            if mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1664 len 4], tokenOfOwnerByIndex[address(arg1)][var113001 << 240].field_32 + 1664] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1664 len 4], tokenOfOwnerByIndex[address(arg1)][var113001 << 240].field_32 + 1664])) + 1 < 0 or (32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + ceil32(ceil32(mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1664 len 4], tokenOfOwnerByIndex[address(arg1)][var113001 << 240].field_32 + 1664])) + 1665 > test266151307():
                revert with 0, 65
            mem[64] = (32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + ceil32(ceil32(mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1664 len 4], tokenOfOwnerByIndex[address(arg1)][var113001 << 240].field_32 + 1664])) + 1665
            mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 1664] = mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1664 len 4], tokenOfOwnerByIndex[address(arg1)][var113001 << 240].field_32 + 1664]
            require _2984 + _3006 + 32 <= return_data.size
            mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 1696 len ceil32(_3006)] = mem[(32 * balanceOf[address(arg1)]) + _2984 + 1696 len ceil32(_3006)]
            if ceil32(_3006) <= _3006:
                require tokenOfOwnerByIndex[address(arg1)][var113001 << 240].field_0, mem[(32 * balanceOf[address(arg1)]) + 1700 len 28] == mem[(32 * balanceOf[address(arg1)]) + 1727 len 1]
                require mem[(32 * balanceOf[address(arg1)]) + 1728] == mem[(32 * balanceOf[address(arg1)]) + 1758 len 2]
                require mem[(32 * balanceOf[address(arg1)]) + 1760] == bool(mem[(32 * balanceOf[address(arg1)]) + 1760])
                _3173 = mem[(32 * balanceOf[address(arg1)]) + 1792]
                require mem[(32 * balanceOf[address(arg1)]) + 1792] <= test266151307()
                require (32 * balanceOf[address(arg1)]) + return_data.size + 1664 > (32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1792] + 1695
                _3180 = mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1792] + 1664]
                if mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1792] + 1664] > test266151307():
                    revert with 0, 65
                _3195 = mem[64]
                if mem[64] + ceil32(32 * mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1792] + 1664]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1792] + 1664]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1792] + 1664]) + 1
                mem[_3195] = mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1792] + 1664]
                require _3173 + (32 * _3180) + 32 <= return_data.size
                s = (32 * balanceOf[address(arg1)]) + _3173 + 1696
                t = _3195 + 32
                idx = 0
                while idx < _3180:
                    require mem[s] == mem[s + 30 len 2]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                require mem[(32 * balanceOf[address(arg1)]) + 1824] <= test266151307()
                require (32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1824] + 1695 < (32 * balanceOf[address(arg1)]) + return_data.size + 1664
                if mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1824] + 1664] > test266151307():
                    revert with 0, 65
                if mem[64] + ceil32(32 * mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1824] + 1664]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1824] + 1664]) + 1 > test266151307():
                    revert with 0, 65
                require mem[(32 * balanceOf[address(arg1)]) + 1824] + (32 * mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1824] + 1664]) + 32 <= return_data.size
                # nil
            else:
                mem[_3006 + (32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 1696] = 0
                require tokenOfOwnerByIndex[address(arg1)][var113001 << 240].field_0, mem[(32 * balanceOf[address(arg1)]) + 1700 len 28] == mem[(32 * balanceOf[address(arg1)]) + 1727 len 1]
                require mem[(32 * balanceOf[address(arg1)]) + 1728] == mem[(32 * balanceOf[address(arg1)]) + 1758 len 2]
                require mem[(32 * balanceOf[address(arg1)]) + 1760] == bool(mem[(32 * balanceOf[address(arg1)]) + 1760])
                _3174 = mem[(32 * balanceOf[address(arg1)]) + 1792]
                require mem[(32 * balanceOf[address(arg1)]) + 1792] <= test266151307()
                require (32 * balanceOf[address(arg1)]) + return_data.size + 1664 > (32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1792] + 1695
                _3181 = mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1792] + 1664]
                if mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1792] + 1664] > test266151307():
                    revert with 0, 65
                _3196 = mem[64]
                if mem[64] + ceil32(32 * mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1792] + 1664]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1792] + 1664]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1792] + 1664]) + 1
                mem[_3196] = mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1792] + 1664]
                require _3174 + (32 * _3181) + 32 <= return_data.size
                s = (32 * balanceOf[address(arg1)]) + _3174 + 1696
                t = _3196 + 32
                idx = 0
                while idx < _3181:
                    require mem[s] == mem[s + 30 len 2]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                require mem[(32 * balanceOf[address(arg1)]) + 1824] <= test266151307()
                require (32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1824] + 1695 < (32 * balanceOf[address(arg1)]) + return_data.size + 1664
                if mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1824] + 1664] > test266151307():
                    revert with 0, 65
                if mem[64] + ceil32(32 * mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1824] + 1664]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1824] + 1664]) + 1 > test266151307():
                    revert with 0, 65
                require mem[(32 * balanceOf[address(arg1)]) + 1824] + (32 * mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 1824] + 1664]) + 32 <= return_data.size
                # nil
}



}
