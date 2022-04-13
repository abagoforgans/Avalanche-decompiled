contract main {




// =====================  Runtime code  =====================


#
#  - mint(uint256 arg1)
#  - getMyNFTs(address arg1)
#
const CANNOT_TRANSFER_TO_ZERO_ADDRESS = '', 0

const NOT_CURRENT_OWNER = '', 0


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of uint8 stor6;
address stor7;
array of struct stor8;
array of struct stor9;
mapping of struct stor10;
address owner;
uint256 stor12;
uint8 stor13;
uint8 whitelist; offset 8
uint256 stor13; offset 8
mapping of uint8 stor14;
mapping of uint256 whitelistMint;
address stor16;
uint256 stor17;
address stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
array of uint256 stor23;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, '', 0
    return approved[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, '', 0
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, '', 0
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function whitelist() {
    return bool(whitelist)
}

function whitelistMint(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return whitelistMint[arg1]
}

function whitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor14[arg1])
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function remaining() {
    if stor20 < stor12:
        revert with 0, 17
    return (stor20 - stor12)
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '', 0
    stor21 = arg1
}

function setMintLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '', 0
    stor22 = arg1
}

function setDistributor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '', 0
    stor7 = arg1
}

function enableSales(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '', 0
    uint8(stor13.field_0) = uint8(arg1)
}

function loadNFTs(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '', 0
    if stor20 > !arg1:
        revert with 0, 17
    stor20 += arg1
}

function updateCaptive(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '', 0
    stor6[arg1] = uint8(arg2)
}

function enableWhitelist(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '', 0
    Mask(248, 0, stor13.field_8) = Mask(248, 0, arg1)
}

function addMarket(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '', 0
    stor5[address(arg1)] = uint8(arg2)
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    stor4[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '', 0
    if not arg1:
        revert with 0, '', 0
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function startDistribution() {
    if owner != msg.sender:
        revert with 0, '', 0
    require ext_code.size(stor7)
    call stor7.0xd83623dd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claim() {
    if balanceOf[msg.sender]:
        require ext_code.size(stor7)
        call stor7.claim(address rg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function updateDistributor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '', 0
    require ext_code.size(stor7)
    call stor7.migrate(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor7 = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if ownerOf[arg2] != msg.sender:
        if not stor4[stor1[arg2]][msg.sender]:
            revert with 0, '', 0
    if not ownerOf[arg2]:
        revert with 0, '', 0
    if ownerOf[arg2] == arg1:
        revert with 0, '', 0
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][msg.sender]:
                revert with 0, '', 0
    if not ownerOf[arg3]:
        revert with 0, '', 0
    revert with 0, 'Use safeTransferFrom'
}

function recoverLeftovers() {
    if owner != msg.sender:
        revert with 0, '', 0
    if eth.balance(this.address) and stor17 > -1 / eth.balance(this.address):
        revert with 0, 17
    call stor16 with:
       value eth.balance(this.address) * stor17 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor19 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function updateCaptives(uint256[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '', 0
    idx = 0
    while idx < arg1.length:
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 6
        stor6[cd[((32 * idx) + arg1 + 36)]] = uint8(arg2)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function myDistribution(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor7)
    staticcall stor7.getUnpaidRewards(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    staticcall stor7.getPaidRewards(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0]
}

function loadWhitelist(address[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '', 0
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 14
        stor14[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function updateURI(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '', 0
    if not ownerOf[arg1]:
        revert with 0, '', 0
    if bool(stor10[arg1].field_0):
        if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor10[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor10[arg1].field_0 = 0
            idx = 0
            while (uint255(stor10[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor10[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            stor10[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor10[arg1].field_0 = 0
            idx = 0
            while stor10[arg1].field_1 % 128 + 31 / 32 > idx:
                stor10[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '', 0
    if bool(stor23.length):
        if bool(stor23.length) == uint255(stor23.length) * 0.5 < 32:
            revert with 0, 34
        if not arg1.length:
            stor23.length = 0
            idx = 0
            while (uint255(stor23.length) * 0.5) + 31 / 32 > idx:
                stor23[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor23.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                stor23[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while (uint255(stor23.length) * 0.5) + 31 / 32 > idx:
                stor23[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor23.length) == stor23.length.field_1 % 128 < 32:
            revert with 0, 34
        if not arg1.length:
            stor23.length = 0
            idx = 0
            while stor23.length.field_1 % 128 + 31 / 32 > idx:
                stor23[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor23.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                stor23[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while stor23.length.field_1 % 128 + 31 / 32 > idx:
                stor23[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][msg.sender]:
                revert with 0, '', 0
    if not ownerOf[arg3]:
        revert with 0, '', 0
    if ownerOf[arg3] != arg1:
        revert with 0, '', 0
    if not arg2:
        revert with 0, '', 0
    if not stor5[address(arg2)]:
        if not stor5[address(arg1)]:
            if not stor6[arg3]:
                revert with 0, 'Whales are captives of The Market'
    approved[arg3] = 0
    if ownerOf[arg3] != ownerOf[arg3]:
        revert with 0, '', 0
    if balanceOf[stor1[arg3]] < 1:
        revert with 0, 17
    balanceOf[stor1[arg3]]--
    ownerOf[arg3] = 0
    if ownerOf[arg3]:
        revert with 0, '', 0
    ownerOf[arg3] = arg2
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    emit Transfer(ownerOf[arg3], arg2, arg3);
    if ext_code.hash(arg2):
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            require ext_code.size(arg2)
            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, '', 0
    require ext_code.size(stor7)
    call stor7.setShares(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), balanceOf[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor7)
    call stor7.setShares(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), balanceOf[address(arg2)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][msg.sender]:
                revert with 0, '', 0
    if not ownerOf[arg3]:
        revert with 0, '', 0
    if ownerOf[arg3] != arg1:
        revert with 0, '', 0
    if not arg2:
        revert with 0, '', 0
    if not stor5[address(arg2)]:
        if not stor5[address(arg1)]:
            if not stor6[arg3]:
                revert with 0, 'Whales are captives of The Market'
    approved[arg3] = 0
    if ownerOf[arg3] != ownerOf[arg3]:
        revert with 0, '', 0
    if balanceOf[stor1[arg3]] < 1:
        revert with 0, 17
    balanceOf[stor1[arg3]]--
    ownerOf[arg3] = 0
    if ownerOf[arg3]:
        revert with 0, '', 0
    ownerOf[arg3] = arg2
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    emit Transfer(ownerOf[arg3], arg2, arg3);
    if ext_code.hash(arg2):
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            require ext_code.size(arg2)
            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, '', 0
    require ext_code.size(stor7)
    call stor7.setShares(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), balanceOf[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor7)
    call stor7.setShares(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), balanceOf[address(arg2)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function name() {
    if bool(stor8.length):
        if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor8.length):
            if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor8.length):
                if 31 < uint255(stor8.length) * 0.5:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor8.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor8.length.field_8)
        else:
            if bool(stor8.length) == stor8.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor8.length.field_1 % 128:
                if 31 < stor8.length.field_1 % 128:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor8.length.field_8)
        mem[ceil32(uint255(stor8.length) * 0.5) + 192 len ceil32(uint255(stor8.length) * 0.5)] = mem[128 len ceil32(uint255(stor8.length) * 0.5)]
        if ceil32(uint255(stor8.length) * 0.5) > uint255(stor8.length) * 0.5:
            mem[(uint255(stor8.length) * 0.5) + ceil32(uint255(stor8.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)], mem[(2 * ceil32(uint255(stor8.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor8.length) * 0.5)]), 
    if bool(stor8.length) == stor8.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor8.length):
        if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor8.length):
            if 31 < uint255(stor8.length) * 0.5:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while (uint255(stor8.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor8.length.field_8)
    else:
        if bool(stor8.length) == stor8.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor8.length.field_1 % 128:
            if 31 < stor8.length.field_1 % 128:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor8.length.field_8)
    mem[ceil32(stor8.length.field_1 % 128) + 192 len ceil32(stor8.length.field_1 % 128)] = mem[128 len ceil32(stor8.length.field_1 % 128)]
    if ceil32(stor8.length.field_1 % 128) > stor8.length.field_1 % 128:
        mem[stor8.length.field_1 % 128 + ceil32(stor8.length.field_1 % 128) + 192] = 0
    return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1 % 128)], mem[(2 * ceil32(stor8.length.field_1 % 128)) + 192 len 2 * ceil32(stor8.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor9.length):
        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor9.length):
            if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor9.length):
                if 31 < uint255(stor9.length) * 0.5:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor9.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor9.length.field_8)
        else:
            if bool(stor9.length) == stor9.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor9.length.field_1 % 128:
                if 31 < stor9.length.field_1 % 128:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor9.length.field_8)
        mem[ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[128 len ceil32(uint255(stor9.length) * 0.5)]
        if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
            mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)], mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor9.length) * 0.5)]), 
    if bool(stor9.length) == stor9.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor9.length):
        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor9.length):
            if 31 < uint255(stor9.length) * 0.5:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while (uint255(stor9.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor9.length.field_8)
    else:
        if bool(stor9.length) == stor9.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor9.length.field_1 % 128:
            if 31 < stor9.length.field_1 % 128:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor9.length.field_8)
    mem[ceil32(stor9.length.field_1 % 128) + 192 len ceil32(stor9.length.field_1 % 128)] = mem[128 len ceil32(stor9.length.field_1 % 128)]
    if ceil32(stor9.length.field_1 % 128) > stor9.length.field_1 % 128:
        mem[stor9.length.field_1 % 128 + ceil32(stor9.length.field_1 % 128) + 192] = 0
    return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1 % 128)], mem[(2 * ceil32(stor9.length.field_1 % 128)) + 192 len 2 * ceil32(stor9.length.field_1 % 128)]), 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, '', 0
    if bool(stor10[arg1].field_0):
        if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor10[arg1].field_0):
            if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor10[arg1].field_0):
                if 31 < uint255(stor10[arg1].field_0) * 0.5:
                    mem[192] = stor10[arg1].field_0
                    idx = 192
                    s = 0
                    while (uint255(stor10[arg1].field_0) * 0.5) + 160 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10[arg1].field_0), data=mem[192 len ceil32(uint255(stor10[arg1].field_0) * 0.5)])
                mem[192] = 256 * Mask(248, 0, stor10[arg1].field_8)
        else:
            if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor10[arg1].field_1 % 128:
                if 31 < stor10[arg1].field_1 % 128:
                    mem[192] = stor10[arg1].field_0
                    idx = 192
                    s = 0
                    while stor10[arg1].field_1 % 128 + 160 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10[arg1].field_0), data=mem[192 len ceil32(uint255(stor10[arg1].field_0) * 0.5)])
                mem[192] = 256 * Mask(248, 0, stor10[arg1].field_8)
        mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 256 len ceil32(uint255(stor10[arg1].field_0) * 0.5)] = mem[192 len ceil32(uint255(stor10[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor10[arg1].field_0) * 0.5) > uint255(stor10[arg1].field_0) * 0.5:
            mem[(uint255(stor10[arg1].field_0) * 0.5) + ceil32(uint255(stor10[arg1].field_0) * 0.5) + 256] = 0
        return Array(len=2 * Mask(256, -1, stor10[arg1].field_0), data=mem[192 len ceil32(uint255(stor10[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor10[arg1].field_0) * 0.5)) + 256 len 2 * ceil32(uint255(stor10[arg1].field_0) * 0.5)]), 
    if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor10[arg1].field_0):
        if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor10[arg1].field_0):
            if 31 < uint255(stor10[arg1].field_0) * 0.5:
                mem[192] = stor10[arg1].field_0
                idx = 192
                s = 0
                while (uint255(stor10[arg1].field_0) * 0.5) + 160 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10[arg1].field_0 % 128, data=mem[192 len ceil32(stor10[arg1].field_1 % 128)])
            mem[192] = 256 * Mask(248, 0, stor10[arg1].field_8)
    else:
        if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor10[arg1].field_1 % 128:
            if 31 < stor10[arg1].field_1 % 128:
                mem[192] = stor10[arg1].field_0
                idx = 192
                s = 0
                while stor10[arg1].field_1 % 128 + 160 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10[arg1].field_0 % 128, data=mem[192 len ceil32(stor10[arg1].field_1 % 128)])
            mem[192] = 256 * Mask(248, 0, stor10[arg1].field_8)
    mem[ceil32(stor10[arg1].field_1 % 128) + 256 len ceil32(stor10[arg1].field_1 % 128)] = mem[192 len ceil32(stor10[arg1].field_1 % 128)]
    if ceil32(stor10[arg1].field_1 % 128) > stor10[arg1].field_1 % 128:
        mem[stor10[arg1].field_1 % 128 + ceil32(stor10[arg1].field_1 % 128) + 256] = 0
    return Array(len=stor10[arg1].field_0 % 128, data=mem[192 len ceil32(stor10[arg1].field_1 % 128)], mem[(2 * ceil32(stor10[arg1].field_1 % 128)) + 256 len 2 * ceil32(stor10[arg1].field_1 % 128)]), 
}

function updateURIs(uint256[] arg1, string[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = 160
    mem[96] = 6
    mem[128] = 0x3031383030310000000000000000000000000000000000000000000000000000
    if owner != msg.sender:
        revert with 0, '', 0
    if arg2.length != arg1.length:
        revert with 0, 'Wrong array size'
    idx = 0
    while idx < arg1.length:
        if idx >= arg2.length:
            revert with 0, 50
        require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
        require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
        require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
        _28 = mem[64]
        mem[64] = mem[64] + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 32
        mem[_28] = cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
        mem[_28 + 32 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
        mem[_28 + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + 32] = 0
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 1
        _30 = mem[64]
        mem[64] = mem[64] + 64
        mem[_30] = 6
        mem[_30 + 32] = 0x3030333030320000000000000000000000000000000000000000000000000000
        if not ownerOf[cd[((32 * idx) + arg1 + 36)]]:
            _33 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 6
            idx = 0
            while idx < 6:
                mem[idx + _33 + 68] = mem[idx + _30 + 32]
                idx = idx + 32
                continue 
            mem[_33 + 74] = 0
            revert with memory
              from mem[64]
               len _33 + -mem[64] + 100
        mem[32] = 10
        if bool(stor10[cd[((32 * idx) + arg1 + 36)]].field_0):
            if bool(stor10[cd[((32 * idx) + arg1 + 36)]].field_0) == uint255(stor10[cd[((32 * idx) + arg1 + 36)]].field_0) * 0.5 < 32:
                revert with 0, 34
            mem[0] = sha3(cd[((32 * idx) + arg1 + 36)], 10)
            if not cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]:
                stor10[cd[((32 * idx) + arg1 + 36)]].field_0 = 0
                s = sha3(sha3(cd[((32 * idx) + arg1 + 36)], 10))
                while sha3(sha3(cd[((32 * idx) + arg1 + 36)], 10)) + ((uint255(stor10[cd[((32 * idx) + arg1 + 36)]].field_0) * 0.5) + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                stor10[cd[((32 * idx) + arg1 + 36)]].field_0 = (2 * cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 1
                s = sha3(sha3(cd[((32 * idx) + arg1 + 36)], 10))
                t = _28 + 32
                while _28 + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + 32 > t:
                    stor[s] = mem[t]
                    s = s + 1
                    t = t + 32
                    continue 
                s = sha3(sha3(cd[((32 * idx) + arg1 + 36)], 10)) + (Mask(251, 0, cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + 31) >> 5)
                while sha3(sha3(cd[((32 * idx) + arg1 + 36)], 10)) + ((uint255(stor10[cd[((32 * idx) + arg1 + 36)]].field_0) * 0.5) + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        else:
            if bool(stor10[cd[((32 * idx) + arg1 + 36)]].field_0) == stor10[cd[((32 * idx) + arg1 + 36)]].field_1 % 128 < 32:
                revert with 0, 34
            mem[0] = sha3(cd[((32 * idx) + arg1 + 36)], 10)
            if not cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]:
                stor10[cd[((32 * idx) + arg1 + 36)]].field_0 = 0
                s = sha3(sha3(cd[((32 * idx) + arg1 + 36)], 10))
                while sha3(sha3(cd[((32 * idx) + arg1 + 36)], 10)) + (stor10[cd[((32 * idx) + arg1 + 36)]].field_1 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                stor10[cd[((32 * idx) + arg1 + 36)]].field_0 = (2 * cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 1
                s = sha3(sha3(cd[((32 * idx) + arg1 + 36)], 10))
                t = _28 + 32
                while _28 + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + 32 > t:
                    stor[s] = mem[t]
                    s = s + 1
                    t = t + 32
                    continue 
                s = sha3(sha3(cd[((32 * idx) + arg1 + 36)], 10)) + (Mask(251, 0, cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + 31) >> 5)
                while sha3(sha3(cd[((32 * idx) + arg1 + 36)], 10)) + (stor10[cd[((32 * idx) + arg1 + 36)]].field_1 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
