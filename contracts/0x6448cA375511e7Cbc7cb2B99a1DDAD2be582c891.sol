contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const name = 'Crabada', 0

const symbol = 'Crabada', 0


mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
mapping of uint8 stor7;
uint8 stor8;
uint8 stor8; offset 8
uint8 stor8; offset 16
uint16 stor8; offset 8
array of uint256 stor9;
array of struct dNA;
address sub_d9ccd94aAddress;
address feeCalculatorAddress;
uint256 sub_17982da0;
uint256 sub_21e2a94b;
uint8 sub_50b4f967;
array of struct stor16;
uint8 sub_3c5b9ac5;
uint8 sub_ef7b3cde; offset 8
uint8 sub_c0cc6418; offset 16
array of uint256 stor89717814153306320011181716697424560163256864414616650038987186496166826726057;
array of uint256 stor89717814153306320011181716697424560163256864414616650038987186496166826726058;
array of struct stor89717814153306320011181716697424560163256864414616650038987186496166826726059;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function operators(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function sub_17982da0(?) payable {
    return sub_17982da0
}

function sub_21e2a94b(?) payable {
    return sub_21e2a94b
}

function sub_3c5b9ac5(?) payable {
    return bool(sub_3c5b9ac5)
}

function sub_50b4f967(?) payable {
    return bool(sub_50b4f967)
}

function getDNA(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= dNA.length:
        revert with 0, 50
    return dNA[arg1].field_512
}

function paused() payable {
    return bool(uint8(stor8.field_0))
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function feeCalculator() payable {
    return feeCalculatorAddress
}

function sub_c0cc6418(?) payable {
    return sub_c0cc6418
}

function getParentsInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= dNA.length:
        revert with 0, 50
    if dNA[arg1].field_0 >= dNA.length:
        revert with 0, 50
    if dNA[arg1].field_256 >= dNA.length:
        revert with 0, 50
    return dNA[arg1].field_0, dNA[arg1].field_256, dNA[dNA[arg1].field_0].field_512, dNA[dNA[arg1].field_256].field_512
}

function sub_d9ccd94a(?) payable {
    return sub_d9ccd94aAddress
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function sub_ef7b3cde(?) payable {
    return sub_ef7b3cde
}

function crabadaInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < dNA.length
    return dNA[arg1].field_0, dNA[arg1].field_256, dNA[arg1].field_512, dNA[arg1].field_768, dNA[arg1].field_832
}

function _fallback() payable {
    revert
}

function totalSupply() payable {
    if not dNA.length:
        return dNA.length
    if dNA.length < 1:
        revert with 0, 17
    return (dNA.length - 1)
}

function sub_6d31af2a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 6
    return stor16[arg1].field_0, stor16[arg1].field_0, stor16[arg1].field_16
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_533376e2(?) payable {
    require calldata.size - 4 >= 32
    if not stor7[msg.sender]:
        revert with 0, 'NOT OPERATOR'
    sub_17982da0 = arg1
    emit 0xd4e36c19: arg1
}

function sub_e7c6046c(?) payable {
    require calldata.size - 4 >= 32
    if not stor7[msg.sender]:
        revert with 0, 'NOT OPERATOR'
    sub_21e2a94b = arg1
    emit 0x147676ed: arg1
}

function sub_519c5496(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if not stor7[msg.sender]:
        revert with 0, 'NOT OPERATOR'
    sub_50b4f967 = uint8(bool(arg1))
    emit 0xae5f86fc: bool(arg1)
}

function sub_7ff711b9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if not stor7[msg.sender]:
        revert with 0, 'NOT OPERATOR'
    sub_3c5b9ac5 = uint8(bool(arg1))
    emit 0xa19b02f5: bool(arg1)
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor8.field_0):
        revert with 0, 'Pausable: paused'
    uint8(stor8.field_0) = 1
    emit Paused(msg.sender);
}

function setFeeCalculator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor7[msg.sender]:
        revert with 0, 'NOT OPERATOR'
    feeCalculatorAddress = arg1
    emit SetFeeCalculator(arg1);
}

function sub_35f2e6f2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor7[msg.sender]:
        revert with 0, 'NOT OPERATOR'
    sub_d9ccd94aAddress = address(arg1)
    emit 0x34f3698e: address(arg1)
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor8.field_0):
        revert with 0, 'Pausable: not paused'
    uint8(stor8.field_0) = 0
    emit Unpaused(msg.sender);
}

function setOperator(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = uint8(arg2)
    emit SetOperator(address(arg1), arg2);
}

function sub_dbc1b327(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    if not stor7[msg.sender]:
        revert with 0, 'NOT OPERATOR'
    sub_ef7b3cde = uint8(arg1)
    sub_c0cc6418 = uint8(arg2)
    emit 0xf0193190: arg1 << 248, uint8(arg2)
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_fb24a251(?) payable {
    require calldata.size - 4 >= 128
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    require arg4 == bool(arg4)
    if not stor7[msg.sender]:
        revert with 0, 'NOT OPERATOR'
    if arg1 >= 6:
        revert with 0, 'INVALID POS'
    stor16[arg1].field_0 = uint8(arg2)
    stor16[arg1].field_8 = uint8(arg3)
    if arg4:
        stor16[arg1].field_16 = 1
    else:
        stor16[arg1].field_16 = 0
    emit 0xfbc4ca00: arg1, arg2 << 248, arg3 << 248, bool(arg4)
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor7[msg.sender]:
        revert with 0, 'NOT OPERATOR'
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor10.length]:
        revert with 0, 'ERC721: token already minted'
    if uint8(stor8.field_0):
        revert with 0, 'Pausable: paused'
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor10.length] = arg1
    emit Transfer(0, arg1, dNA.length);
    dNA.length++
    dNA[dNA.length].field_0 = 0
    storC65A[stor10.length] = 0
    storC65A[stor10.length] = arg2
    storC65A[stor10.length].field_0 = uint64(block.timestamp)
    storC65A[stor10.length].field_64 = 0
    storC65A[stor10.length].field_256 = 0
    emit 0x9eb5d751: arg2, dNA.length
}

function sub_f3e5d752(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == uint8(arg2)
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'NOT OWNER'
    if not sub_3c5b9ac5:
        revert with 0, 'UNCHANGEABLE'
    if sub_ef7b3cde > uint8(arg2):
        revert with 0, 'INVALID CLASS'
    if uint8(arg2) > sub_c0cc6418:
        revert with 0, 'INVALID CLASS'
    require ext_code.size(feeCalculatorAddress)
    call feeCalculatorAddress.0x3a2d117b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= dNA.length:
        revert with 0, 50
    dNA[arg1].field_752 = uint8(arg2)
    emit 0x3df3afc4: uint8(arg2), arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'NOT OWNER'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if uint8(stor8.field_0):
        revert with 0, 'Pausable: paused'
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor2[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor2[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    if arg1 >= dNA.length:
        revert with 0, 50
    dNA[arg1].field_0 = 0
    dNA[arg1].field_256 = 0
    dNA[arg1].field_512 = 0
    dNA[arg1].field_768 = 0
}

function hatchOut(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'NOT OWNER'
    if uint8(stor8.field_0):
        revert with 0, 'Pausable: paused'
    if msg.sender != tx.origin:
        revert with 0, 'ONLY NON CONTRACT CALL'
    if arg1 >= dNA.length:
        revert with 0, 50
    if block.timestamp < dNA[arg1].field_768:
        revert with 0, 17
    if block.timestamp - dNA[arg1].field_768 < sub_17982da0:
        revert with 0, 'EARLY'
    if dNA[arg1].field_512:
        revert with 0, 'HATCHED'
    require ext_code.size(sub_d9ccd94aAddress)
    call sub_d9ccd94aAddress.0x6a6fe21d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    dNA[arg1].field_512 = ext_call.return_data[0]
    emit 0x9eb5d751: ext_call.return_data[0], arg1
    return ext_call.return_data[0]
}

function sub_1708a770(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'NOT OWNER'
    if uint8(arg2) >= 6:
        revert with 0, 'INVALID POS'
    if stor16[uint8(arg2)].field_16 != 1:
        revert with 0, 'UNCHANGEABLE'
    if stor16[uint8(arg2)].field_0 > uint8(arg3):
        revert with 0, 'INVALID VALUE'
    if uint8(arg3) > stor16[uint8(arg2)].field_8:
        revert with 0, 'INVALID VALUE'
    require ext_code.size(feeCalculatorAddress)
    call feeCalculatorAddress.0xe627a91b with:
         gas gas_remaining wei
        args msg.sender, arg2 << 248, uint8(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= dNA.length:
        revert with 0, 50
    if 23 < uint8(arg2):
        revert with 0, 17
    if uint8(-uint8(arg2) + 23) > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    dNA[arg1].field_512 = uint8(arg3)
    dNA[arg1].field_520 = 0
    emit 0xf2f450c0: arg2 << 248, uint8(arg3), arg1
}

function setBaseURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if not stor7[msg.sender]:
        revert with 0, 'NOT OPERATOR'
    if bool(stor9.length):
        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor9[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor9.length = 0
            idx = 0
            while (uint255(stor9.length) * 0.5) + 31 / 32 > idx:
                stor9[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor9[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor9.length = 0
            idx = 0
            while stor9.length.field_1 + 31 / 32 > idx:
                stor9[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function mintBatch(address arg1, uint256[] arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if not stor7[msg.sender]:
        revert with 0, 'NOT OPERATOR'
    idx = 0
    while idx < arg2.length:
        if not arg1:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor10.length]:
            revert with 0, 'ERC721: token already minted'
        if uint8(stor8.field_0):
            revert with 0, 'Pausable: paused'
        if balanceOf[address(arg1)] > -2:
            revert with 0, 17
        balanceOf[address(arg1)]++
        mem[0] = dNA.length
        mem[32] = 2
        ownerOf[stor10.length] = arg1
        emit Transfer(0, arg1, dNA.length);
        _32 = mem[64]
        mem[64] = mem[64] + 160
        mem[_32] = 0
        mem[_32 + 32] = 0
        mem[_32 + 64] = cd[((32 * idx) + arg2 + 36)]
        mem[_32 + 96] = uint64(block.timestamp)
        mem[_32 + 128] = 0
        dNA.length++
        mem[0] = 10
        dNA[dNA.length].field_0 = 0
        storC65A[stor10.length] = 0
        storC65A[stor10.length] = cd[((32 * idx) + arg2 + 36)]
        storC65A[stor10.length].field_0 = uint64(block.timestamp)
        storC65A[stor10.length].field_64 = 0
        storC65A[stor10.length].field_256 = 0
        mem[mem[64]] = cd[((32 * idx) + arg2 + 36)]
        emit 0x9eb5d751: cd[((32 * idx) + arg2 + 36)], dNA.length
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if uint8(stor8.field_0):
        revert with 0, 'Pausable: paused'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function sub_463fd1af(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not uint8(stor8.field_16):
        if uint8(stor8.field_8):
            revert with 0, 'Initializable: contract is already initialized'
        if not uint8(stor8.field_16):
            uint16(stor8.field_8) = 257
    if bool(stor9.length):
        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor9[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor9.length = 0
            idx = 0
            while (uint255(stor9.length) * 0.5) + 31 / 32 > idx:
                stor9[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor9[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor9.length = 0
            idx = 0
            while stor9.length.field_1 + 31 / 32 > idx:
                stor9[idx].field_0 = 0
                idx = idx + 1
                continue 
    feeCalculatorAddress = address(arg2)
    sub_21e2a94b = 5
    owner = address(arg3)
    emit OwnershipTransferred(owner, address(arg3));
    dNA.length++
    dNA[dNA.length].field_0 = 0
    storC65A[stor10.length] = 0
    storC65A[stor10.length] = 0
    storC65A[stor10.length].field_0 = 0
    storC65A[stor10.length].field_256 = 0
    storC65A[stor10.length].field_256 = 0
    stor7[address(arg3)] = 1
    if not uint8(stor8.field_16):
        uint8(stor8.field_16) = 0
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if uint8(stor8.field_0):
        revert with 0, 'Pausable: paused'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if uint8(stor8.field_0):
        revert with 0, 'Pausable: paused'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not arg4.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg4[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function breed(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor8.field_0):
        revert with 0, 'Pausable: paused'
    if msg.sender != tx.origin:
        revert with 0, 'ONLY NON CONTRACT CALL'
    if not sub_50b4f967:
        revert with 0, 'UNBREEDABLE'
    if not arg1:
        revert with 0, 'CAN'T BREED'
    if not arg2:
        revert with 0, 'CAN'T BREED'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'NOT DADDY OWNER'
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg2] != msg.sender:
        revert with 0, 'NOT MOMMY OWNER'
    if arg1 >= dNA.length:
        revert with 0, 50
    if arg2 >= dNA.length:
        revert with 0, 50
    if dNA[arg1].field_832 > sub_21e2a94b:
        revert with 0, 'BREEDING LIMIT'
    if dNA[arg2].field_832 > sub_21e2a94b:
        revert with 0, 'BREEDING LIMIT'
    if 1 > -dNA[arg1].field_832 + 255:
        revert with 0, 17
    dNA[arg1].field_832 = uint8(dNA[arg1].field_832 + 1)
    if 1 > -dNA[arg2].field_832 + 255:
        revert with 0, 17
    dNA[arg2].field_832 = uint8(dNA[arg2].field_832 + 1)
    if dNA[arg1].field_0:
        if dNA[arg1].field_0 == dNA[arg2].field_0:
            revert with 0, 'SIBLING1'
        if dNA[arg1].field_0 == dNA[arg2].field_256:
            revert with 0, 'SIBLING1'
    if dNA[arg1].field_256:
        if dNA[arg1].field_256 == dNA[arg2].field_256:
            revert with 0, 'SIBLING2'
        if dNA[arg1].field_256 == dNA[arg2].field_0:
            revert with 0, 'SIBLING2'
    if dNA[arg1].field_0 == arg2:
        revert with 0, 'CHILDREN1'
    if dNA[arg1].field_256 == arg2:
        revert with 0, 'CHILDREN1'
    if dNA[arg2].field_0 == arg1:
        revert with 0, 'CHILDREN2'
    if dNA[arg2].field_256 == arg1:
        revert with 0, 'CHILDREN2'
    require ext_code.size(feeCalculatorAddress)
    call feeCalculatorAddress.0x2815601b with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), dNA[arg1].field_512, dNA[arg2].field_512, dNA[arg1].field_832, dNA[arg2].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor10.length]:
        revert with 0, 'ERC721: token already minted'
    if uint8(stor8.field_0):
        revert with 0, 'Pausable: paused'
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor10.length] = msg.sender
    emit Transfer(0, msg.sender, dNA.length);
    dNA.length++
    dNA[dNA.length].field_0 = arg1
    storC65A[stor10.length] = arg2
    storC65A[stor10.length] = 0
    storC65A[stor10.length].field_0 = uint64(block.timestamp)
    storC65A[stor10.length].field_64 = 0
    storC65A[stor10.length].field_256 = 0
    require ext_code.size(sub_d9ccd94aAddress)
    call sub_d9ccd94aAddress.breed(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args dNA.length, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Breed(arg1, arg2, dNA.length);
    return dNA.length
}



}
