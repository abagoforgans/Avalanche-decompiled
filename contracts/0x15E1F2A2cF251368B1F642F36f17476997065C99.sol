contract main {




// =====================  Runtime code  =====================


#
#  - sub_beb53d85(?)
#
address owner;
address stor3;
address stor4;
uint256 sub_5a91af01;
uint256 sub_9ffbf828;
mapping of uint8 stor7;
array of struct stor8;
array of struct stor9;
uint8 stor10; offset 32
uint32 stor10; offset 40
uint32 sub_c9f7d054;
uint32 gameState; offset 32
array of address stor11;
array of address stor12;
array of uint256 stor13;
array of address stor14;
array of address stor15;
array of uint256 stor16;
address sub_76c91139Address;
address sub_9e3c92e3Address;
uint256 sub_f9172b74;
mapping of uint8 stor20;
mapping of uint8 stor21;
uint8 sub_6e48385f;
uint256 sub_52b0d4f0;
uint256 stor24;
array of struct stor660301456019777184113296434797620819555017468543624515662331739614079884729;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278000;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020068;

function sub_02a6da83(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return bool(stor7[address(arg1)][arg2])
}

function sub_09cb0142(?) payable {
    return stor8.length
}

function sub_24cc4b1c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor20[address(arg1)])
}

function sub_52b0d4f0(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return sub_52b0d4f0
}

function sub_5a91af01(?) payable {
    return sub_5a91af01
}

function sub_6e48385f(?) payable {
    return bool(sub_6e48385f)
}

function sub_76c91139(?) payable {
    return sub_76c91139Address
}

function sub_8791f1b7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return bool(stor21[address(arg1)])
}

function owner() payable {
    return owner
}

function sub_9e3c92e3(?) payable {
    return sub_9e3c92e3Address
}

function sub_9ffbf828(?) payable {
    return sub_9ffbf828
}

function getGameState() payable {
    return gameState
}

function sub_c9f7d054(?) payable {
    return sub_c9f7d054
}

function sub_f9172b74(?) payable {
    return sub_f9172b74
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
  stop
}

function sub_3fbebf62(?) payable {
    require calldata.size - 4 >= 32
    if arg1 < stor16.length:
        return stor16[arg1]
    else:
        return 0
}

function sub_aaa288ba(?) payable {
    require calldata.size - 4 >= 32
    if arg1 < stor13.length:
        return stor13[arg1]
    else:
        return 0
}

function sub_119c4a67(?) payable {
    if stor24 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    return (10^18 * stor24)
}

function sub_203ca62e(?) payable {
    require calldata.size - 4 >= 32
    if arg1 < stor12.length:
        return address(stor12[arg1])
    else:
        return 0
}

function sub_af4e70f1(?) payable {
    require calldata.size - 4 >= 32
    if arg1 < stor15.length:
        return address(stor15[arg1])
    else:
        return 0
}

function sub_b85f5541(?) payable {
    require calldata.size - 4 >= 32
    if arg1 < stor11.length:
        return address(stor11[arg1])
    else:
        return 0
}

function sub_c06b72ba(?) payable {
    require calldata.size - 4 >= 32
    if arg1 < stor14.length:
        return address(stor14[arg1])
    else:
        return 0
}

function sub_ca4723e6(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor24 = arg1
}

function sub_cd464406(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor21[address(arg1)] = 1
}

function sub_0430f5ad(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6e48385f = uint8(bool(arg1))
}

function sub_5711bbbc(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8.length = 0
    idx = 0
    while 2 * stor8.length > idx:
        stor8[idx].field_0 = 0
        stor8[idx].field_256 = 0
        idx = idx + 2
        continue 
}

function sub_0b781123(?) payable {
    if stor24 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not sub_c9f7d054:
        revert with 0, 18
    if sub_5a91af01 / sub_c9f7d054 > !(10^18 * stor24):
        revert with 0, 17
    return ((sub_5a91af01 / sub_c9f7d054) + (10^18 * stor24))
}

function sub_6e5511ba(?) payable {
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_72f642fe(?) payable {
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_334176bd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint32(arg1) > stor9.length:
        return 0
    if uint32(arg1) >= stor9.length:
        revert with 0, 50
    return stor9[2 * uint32(arg1)].field_0
}

function sub_137c7d66(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint32(arg1) > stor9.length:
        return 0
    if uint32(arg1) >= stor9.length:
        revert with 0, 50
    return stor9[2 * uint32(arg1)].field_256
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

function sub_b028bd7a(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_52b0d4f0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_52b0d4f0 = 0
}

function sub_a8114a05(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        if stor9[idx].field_0 == address(arg1):
            if idx >= stor9.length:
                revert with 0, 50
            mem[0] = 9
            if stor9[idx].field_256 == arg2:
                return 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}

function sub_a3d37db8(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_e50ca7cb(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_65d7f3a6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args 0xe945ed0530da54c1af15c6b034be9ef3e6bbe7b1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 0:
        revert with 0, 'Invalid contract address'
    if stor7[address(arg1)][arg2]:
        revert with 0, 'NFT already added'
    stor7[address(arg1)][arg2] = 1
    stor8.length++
    stor8[stor8.length].field_0 = address(arg1)
    storF3F7[stor8.length] = arg2
}

function sub_84de4062(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if gameState:
        if gameState != 1:
            revert with 0, 'Game is being played please wait'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    sub_5a91af01 = 10^18 * arg1
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 10^18 * arg1:
        gameState = 0
    else:
        uint8(stor10.field_32) = 1
        stor10.field_40 % 16777216 = 0
}

function sub_8b335057(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if gameState:
        if gameState != 1:
            revert with 0, 'Game is being played please wait'
    sub_9ffbf828 = arg1
    if sub_c9f7d054 < 1:
        revert with 0, 17
    if sub_9ffbf828 and uint32(sub_c9f7d054 - 1) > -1 / sub_9ffbf828:
        revert with 0, 17
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_9ffbf828 * uint32(sub_c9f7d054 - 1):
        gameState = 0
    else:
        uint8(stor10.field_32) = 1
        stor10.field_40 % 16777216 = 0
}

function sub_048d4be9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if bool(stor20[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'No artist NFT credit found, prize not deposited'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args 0xe945ed0530da54c1af15c6b034be9ef3e6bbe7b1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 0:
        revert with 0, 'Invalid contract address'
    if stor7[address(arg1)][arg2]:
        revert with 0, 'NFT already added'
    stor7[address(arg1)][arg2] = 1
    stor20[msg.sender] = 0
    stor8.length++
    stor8[stor8.length].field_0 = address(arg1)
    storF3F7[stor8.length] = arg2
}

function sub_d84d381c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if gameState:
        if gameState != 1:
            revert with 0, 'Game is being played please wait'
    sub_c9f7d054 = uint32(arg1)
    if uint32(arg1) < 1:
        revert with 0, 17
    if sub_9ffbf828 and uint32(uint32(arg1) - 1) > -1 / sub_9ffbf828:
        revert with 0, 17
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_9ffbf828 * uint32(uint32(arg1) - 1):
        gameState = 0
    else:
        uint8(stor10.field_32) = 1
        stor10.field_40 % 16777216 = 0
}

function sub_bf9fcabd(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_5a91af01:
        gameState = 0
    else:
        if sub_c9f7d054 < 1:
            revert with 0, 17
        if sub_9ffbf828 and uint32(sub_c9f7d054 - 1) > -1 / sub_9ffbf828:
            revert with 0, 17
        require ext_code.size(stor4)
        staticcall stor4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < sub_9ffbf828 * uint32(sub_c9f7d054 - 1):
            gameState = 0
        else:
            uint8(stor10.field_32) = 1
            stor10.field_40 % 16777216 = 0
    stor11.length = 0
    idx = 0
    while stor11.length > idx:
        uint256(stor11[idx]) = 0
        idx = idx + 1
        continue 
}

function sub_cd1db2a1(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor4)
    call stor4.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= sub_5a91af01:
        if sub_c9f7d054 < 1:
            revert with 0, 17
        if sub_9ffbf828 and uint32(sub_c9f7d054 - 1) > -1 / sub_9ffbf828:
            revert with 0, 17
        require ext_code.size(stor4)
        staticcall stor4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= sub_9ffbf828 * uint32(sub_c9f7d054 - 1):
            if not gameState:
                uint8(stor10.field_32) = 1
                stor10.field_40 % 16777216 = 0
}

function sub_d9d330cf(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    require ext_code.size(stor3)
    call stor3.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 10^18 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= sub_5a91af01:
        if sub_c9f7d054 < 1:
            revert with 0, 17
        if sub_9ffbf828 and uint32(sub_c9f7d054 - 1) > -1 / sub_9ffbf828:
            revert with 0, 17
        require ext_code.size(stor4)
        staticcall stor4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= sub_9ffbf828 * uint32(sub_c9f7d054 - 1):
            if not gameState:
                uint8(stor10.field_32) = 1
                stor10.field_40 % 16777216 = 0
}

function sub_65c14b13(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor8.length:
        mem[0] = 8
        mem[mem[64] + 4] = address(arg1)
        require ext_code.size(stor8[idx].field_0)
        staticcall stor8[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _21 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_21] < 1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= stor8.length:
            revert with 0, 50
        mem[0] = 8
        mem[mem[64] + 4] = stor8[idx].field_256
        require ext_code.size(stor8[idx].field_0)
        staticcall stor8[idx].field_0.ownerOf(uint256 rg1) with:
                gas gas_remaining wei
               args stor8[idx].field_256
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _26 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_26] == mem[_26 + 12 len 20]
        if mem[_26 + 12 len 20] != address(arg1):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= stor8.length:
            revert with 0, 50
        return stor8[idx].field_256
    return 0
}

function sub_8e5eabe9(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor8.length:
        mem[0] = 8
        mem[mem[64] + 4] = address(arg1)
        require ext_code.size(stor8[idx].field_0)
        staticcall stor8[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _21 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_21]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= stor8.length:
            revert with 0, 50
        mem[0] = 8
        mem[mem[64] + 4] = stor8[idx].field_256
        require ext_code.size(stor8[idx].field_0)
        staticcall stor8[idx].field_0.ownerOf(uint256 rg1) with:
                gas gas_remaining wei
               args stor8[idx].field_256
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _26 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_26] == mem[_26 + 12 len 20]
        if address(arg1) != mem[_26 + 12 len 20]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= stor8.length:
            revert with 0, 50
        return stor8[idx].field_0
    return 0
}

function sub_0e07590e(?) payable {
    if sub_6e48385f:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Contract owner has paused artist functions for upcomming game parameter changes'
    if stor21[msg.sender]:
        revert with 0, 'Internal error number 420'
    if stor24 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not sub_c9f7d054:
        revert with 0, 18
    if sub_5a91af01 / sub_c9f7d054 > !(10^18 * stor24):
        revert with 0, 17
    require ext_code.size(stor3)
    call stor3.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), (sub_5a91af01 / sub_c9f7d054) + (10^18 * stor24)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor24 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if sub_52b0d4f0 > !(10^18 * stor24):
        revert with 0, 17
    sub_52b0d4f0 += 10^18 * stor24
    stor20[msg.sender] = 1
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= sub_5a91af01:
        if sub_c9f7d054 < 1:
            revert with 0, 17
        if sub_9ffbf828 and uint32(sub_c9f7d054 - 1) > -1 / sub_9ffbf828:
            revert with 0, 17
        require ext_code.size(stor4)
        staticcall stor4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= sub_9ffbf828 * uint32(sub_c9f7d054 - 1):
            if not gameState:
                uint8(stor10.field_32) = 1
                stor10.field_40 % 16777216 = 0
}

function getTokenURI(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[96] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    require ext_code.size(arg1)
    staticcall arg1.tokenURI(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        return ''
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _5 = mem[96 len 4], Mask(224, 32, arg2) >> 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127 < return_data.size + 96
    _8 = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _8
    require _5 + _8 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_8)] = mem[_5 + 128 len ceil32(_8)]
    if ceil32(_8) <= _8:
        _28 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _8
        mem[mem[64] + 64 len ceil32(_8)] = mem[ceil32(return_data.size) + 128 len ceil32(_8)]
        if ceil32(_8) <= _8:
            return Array(len=_8, data=mem[mem[64] + 64 len ceil32(_8)])
        mem[_8 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_8) + _28 + -mem[64] + 64
    mem[_8 + ceil32(return_data.size) + 128] = 0
    _29 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _8
    mem[mem[64] + 64 len ceil32(_8)] = mem[ceil32(return_data.size) + 128 len ceil32(_8)]
    if ceil32(_8) <= _8:
        return Array(len=_8, data=mem[mem[64] + 64 len ceil32(_8)])
    mem[_8 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_8) + _29 + -mem[64] + 64
}

function sub_feb8e1d6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if gameState:
        if gameState != 1:
            revert with 0, 'Game is being played please wait'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args 0xe945ed0530da54c1af15c6b034be9ef3e6bbe7b1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 0:
        revert with 0, 'Invalid contract address'
    if bool(stor7[address(arg1)][arg2]) != 1:
        revert with 0, 'NFT already removed'
    stor7[address(arg1)][arg2] = 0
    idx = 0
    while idx < stor8.length:
        mem[0] = 8
        if stor8[idx].field_0 == address(arg1):
            if idx >= stor8.length:
                revert with 0, 50
            mem[0] = 8
            if stor8[idx].field_256 == arg2:
                if stor8.length < 1:
                    revert with 0, 17
                if stor8.length - 1 >= stor8.length:
                    revert with 0, 50
                if idx >= stor8.length:
                    revert with 0, 50
                stor8[idx].field_0 = stor8[stor8.length - 1].field_0
                if stor8.length < 1:
                    revert with 0, 17
                if stor8.length - 1 >= stor8.length:
                    revert with 0, 50
                if idx >= stor8.length:
                    revert with 0, 50
                stor8[idx].field_256 = stor8[stor8.length - 1].field_256
                if stor8.length < 1:
                    revert with 0, 17
                if stor8.length - 1 >= stor8.length:
                    revert with 0, 50
                stor8[stor8.length - 1].field_0 = 0
                stor8[stor8.length - 1].field_256 = 0
                if not stor8.length:
                    revert with 0, 49
                mem[0] = 8
                stor8[stor8.length - 1].field_0 = 0
                stor8[stor8.length - 1].field_256 = 0
                stor8.length--
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function depositNft(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if 1 == gameState:
        if bool(stor7[address(arg1)][arg2]) != 1:
            revert with 0, 'Invalid NFT received'
        mem[100] = msg.sender
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[96] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                revert with 0, 'There are no playable OG Contra Band NFT Sutdio NFTs in your account'
            mem[ceil32(return_data.size) + 100] = arg2
            require ext_code.size(arg1)
            staticcall arg1.ownerOf(uint256 rg1) with:
                    gas gas_remaining wei
                   args arg2
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if ext_call.success:
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, 'There are no playable OG Contra Band NFT Sutdio NFTs in your account'
                mem[32] = sha3(address(arg1), 7)
                stor7[address(arg1)][arg2] = 0
                idx = 0
                while idx < stor8.length:
                    mem[0] = 8
                    if stor8[idx].field_0 == arg1:
                        if idx >= stor8.length:
                            revert with 0, 50
                        mem[0] = 8
                        if stor8[idx].field_256 == arg2:
                            if stor8.length < 1:
                                revert with 0, 17
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            if idx >= stor8.length:
                                revert with 0, 50
                            stor8[idx].field_0 = stor8[stor8.length - 1].field_0
                            if stor8.length < 1:
                                revert with 0, 17
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            if idx >= stor8.length:
                                revert with 0, 50
                            stor8[idx].field_256 = stor8[stor8.length - 1].field_256
                            if stor8.length < 1:
                                revert with 0, 17
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            stor8[stor8.length - 1].field_0 = 0
                            stor8[stor8.length - 1].field_256 = 0
                            if not stor8.length:
                                revert with 0, 49
                            mem[0] = 8
                            stor8[stor8.length - 1].field_0 = 0
                            stor8[stor8.length - 1].field_256 = 0
                            stor8.length--
                            _160 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_160] = arg1
                            mem[_160 + 32] = arg2
                            stor9.length++
                            mem[0] = 9
                            stor9[stor9.length].field_0 = arg1
                            stor6E15[stor9.length] = arg2
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                stor11.length++
                stor175B[stor11.length].field_0 = stor175B[stor11.length].field_160
                stor12.length++
                address(stor12[stor12.length]) = arg1
                stor13.length++
                stor13[stor13.length] = arg2
                stor14.length = 0
                idx = 0
                while stor14.length > idx:
                    uint256(stor14[idx]) = 0
                    idx = idx + 1
                    continue 
                stor15.length = 0
                idx = 0
                while stor15.length > idx:
                    uint256(stor15[idx]) = 0
                    idx = idx + 1
                    continue 
                stor16.length = 0
                mem[0] = 16
                idx = 0
                while stor16.length > idx:
                    stor16[idx] = 0
                    idx = idx + 1
                    continue 
                if 1 == gameState:
                    uint8(stor10.field_32) = 2
                    stor10.field_40 % 16777216 = 0
                else:
                    if sub_c9f7d054 == stor11.length:
                        uint8(stor10.field_32) = 3
                        stor10.field_40 % 16777216 = 0
                        _385 = mem[64]
                        mem[mem[64] + 32] = block.difficulty
                        mem[mem[64] + 64] = block.timestamp
                        mem[mem[64] + 96] = sub_f9172b74
                        _386 = mem[64]
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        _388 = sha3(mem[_386 + 32 len mem[_386]])
                        if not sub_c9f7d054:
                            revert with 0, 18
                        if sha3(mem[_386 + 32 len mem[_386]]) % sub_c9f7d054 >= stor11.length:
                            revert with 0, 50
                        mem[_385 + 132] = address(stor11[sha3(mem[_386 + 32 len mem[_386]]) % uint32(stor10.field_0)])
                        mem[_385 + 164] = sub_5a91af01
                        require ext_code.size(stor3)
                        call stor3.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor11[_388 % uint32(stor10.field_0)]), sub_5a91af01
                        mem[_385 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _385 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if _388 % sub_c9f7d054 >= stor11.length:
                            revert with 0, 50
                        emit 0x3547ef94: address(stor11[_388 % uint32(stor10.field_0)])
                        sub_9e3c92e3Address = sub_76c91139Address
                        mem[0] = 11
                        sub_76c91139Address = address(stor11[_388 % uint32(stor10.field_0)])
                        idx = 0
                        while idx < stor11.length:
                            if idx != _388 % sub_c9f7d054:
                                if idx >= stor11.length:
                                    revert with 0, 50
                                mem[0] = 11
                                mem[mem[64] + 4] = address(stor11[idx])
                                mem[mem[64] + 36] = sub_9ffbf828
                                require ext_code.size(stor4)
                                call stor4.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(stor11[idx]), sub_9ffbf828
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _465 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_465] == bool(mem[_465])
                                if idx >= stor11.length:
                                    revert with 0, 50
                                mem[0] = 11
                                emit 0x262dc2a7: address(stor11[idx])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        s = 0
                        while s < stor11.length:
                            stor14.length++
                            address(stor14[stor14.length]) = address(stor11[s])
                            if s >= stor12.length:
                                revert with 0, 50
                            stor15.length++
                            address(stor15[stor15.length]) = address(stor12[s])
                            if s >= stor13.length:
                                revert with 0, 50
                            stor16.length++
                            mem[0] = 16
                            stor16[stor16.length] = stor13[s]
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        stor11.length = 0
                        s = 0
                        while stor11.length > s:
                            uint256(stor11[s]) = 0
                            s = s + 1
                            continue 
                        stor12.length = 0
                        s = 0
                        while stor12.length > s:
                            uint256(stor12[s]) = 0
                            s = s + 1
                            continue 
                        stor13.length = 0
                        mem[0] = 13
                        idx = 0
                        while stor13.length > idx:
                            stor13[idx] = 0
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _599 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_599] < sub_5a91af01:
                            gameState = 0
                        else:
                            if sub_c9f7d054 < 1:
                                revert with 0, 17
                            if sub_9ffbf828 and uint32(sub_c9f7d054 - 1) > -1 / sub_9ffbf828:
                                revert with 0, 17
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _609 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_609] < sub_9ffbf828 * uint32(sub_c9f7d054 - 1):
                                gameState = 0
                            else:
                                uint8(stor10.field_32) = 1
                                stor10.field_40 % 16777216 = 0
                        if sub_f9172b74 == -1:
                            revert with 0, 17
                        sub_f9172b74++
                emit 0x12cbad2f: msg.sender
    else:
        if gameState != 2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Game cannot be played now, it may be waiting for prize money deposit, please check back later'
        if bool(stor7[address(arg1)][arg2]) != 1:
            revert with 0, 'Invalid NFT received'
        mem[100] = msg.sender
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[96] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                revert with 0, 'There are no playable OG Contra Band NFT Sutdio NFTs in your account'
            mem[ceil32(return_data.size) + 100] = arg2
            require ext_code.size(arg1)
            staticcall arg1.ownerOf(uint256 rg1) with:
                    gas gas_remaining wei
                   args arg2
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if ext_call.success:
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, 'There are no playable OG Contra Band NFT Sutdio NFTs in your account'
                mem[32] = sha3(address(arg1), 7)
                stor7[address(arg1)][arg2] = 0
                idx = 0
                while idx < stor8.length:
                    mem[0] = 8
                    if stor8[idx].field_0 == arg1:
                        if idx >= stor8.length:
                            revert with 0, 50
                        mem[0] = 8
                        if stor8[idx].field_256 == arg2:
                            if stor8.length < 1:
                                revert with 0, 17
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            if idx >= stor8.length:
                                revert with 0, 50
                            stor8[idx].field_0 = stor8[stor8.length - 1].field_0
                            if stor8.length < 1:
                                revert with 0, 17
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            if idx >= stor8.length:
                                revert with 0, 50
                            stor8[idx].field_256 = stor8[stor8.length - 1].field_256
                            if stor8.length < 1:
                                revert with 0, 17
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            stor8[stor8.length - 1].field_0 = 0
                            stor8[stor8.length - 1].field_256 = 0
                            if not stor8.length:
                                revert with 0, 49
                            mem[0] = 8
                            stor8[stor8.length - 1].field_0 = 0
                            stor8[stor8.length - 1].field_256 = 0
                            stor8.length--
                            _166 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_166] = arg1
                            mem[_166 + 32] = arg2
                            stor9.length++
                            mem[0] = 9
                            stor9[stor9.length].field_0 = arg1
                            stor6E15[stor9.length] = arg2
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                stor11.length++
                stor175B[stor11.length].field_0 = stor175B[stor11.length].field_160
                stor12.length++
                address(stor12[stor12.length]) = arg1
                stor13.length++
                stor13[stor13.length] = arg2
                stor14.length = 0
                idx = 0
                while stor14.length > idx:
                    uint256(stor14[idx]) = 0
                    idx = idx + 1
                    continue 
                stor15.length = 0
                idx = 0
                while stor15.length > idx:
                    uint256(stor15[idx]) = 0
                    idx = idx + 1
                    continue 
                stor16.length = 0
                mem[0] = 16
                idx = 0
                while stor16.length > idx:
                    stor16[idx] = 0
                    idx = idx + 1
                    continue 
                if 1 == gameState:
                    uint8(stor10.field_32) = 2
                    stor10.field_40 % 16777216 = 0
                else:
                    if sub_c9f7d054 == stor11.length:
                        uint8(stor10.field_32) = 3
                        stor10.field_40 % 16777216 = 0
                        _389 = mem[64]
                        mem[mem[64] + 32] = block.difficulty
                        mem[mem[64] + 64] = block.timestamp
                        mem[mem[64] + 96] = sub_f9172b74
                        _390 = mem[64]
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        _392 = sha3(mem[_390 + 32 len mem[_390]])
                        if not sub_c9f7d054:
                            revert with 0, 18
                        if sha3(mem[_390 + 32 len mem[_390]]) % sub_c9f7d054 >= stor11.length:
                            revert with 0, 50
                        mem[_389 + 132] = address(stor11[sha3(mem[_390 + 32 len mem[_390]]) % uint32(stor10.field_0)])
                        mem[_389 + 164] = sub_5a91af01
                        require ext_code.size(stor3)
                        call stor3.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor11[_392 % uint32(stor10.field_0)]), sub_5a91af01
                        mem[_389 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _389 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if _392 % sub_c9f7d054 >= stor11.length:
                            revert with 0, 50
                        emit 0x3547ef94: address(stor11[_392 % uint32(stor10.field_0)])
                        sub_9e3c92e3Address = sub_76c91139Address
                        mem[0] = 11
                        sub_76c91139Address = address(stor11[_392 % uint32(stor10.field_0)])
                        idx = 0
                        while idx < stor11.length:
                            if idx != _392 % sub_c9f7d054:
                                if idx >= stor11.length:
                                    revert with 0, 50
                                mem[0] = 11
                                mem[mem[64] + 4] = address(stor11[idx])
                                mem[mem[64] + 36] = sub_9ffbf828
                                require ext_code.size(stor4)
                                call stor4.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(stor11[idx]), sub_9ffbf828
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _468 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_468] == bool(mem[_468])
                                if idx >= stor11.length:
                                    revert with 0, 50
                                mem[0] = 11
                                emit 0x262dc2a7: address(stor11[idx])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        s = 0
                        while s < stor11.length:
                            stor14.length++
                            address(stor14[stor14.length]) = address(stor11[s])
                            if s >= stor12.length:
                                revert with 0, 50
                            stor15.length++
                            address(stor15[stor15.length]) = address(stor12[s])
                            if s >= stor13.length:
                                revert with 0, 50
                            stor16.length++
                            mem[0] = 16
                            stor16[stor16.length] = stor13[s]
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        stor11.length = 0
                        s = 0
                        while stor11.length > s:
                            uint256(stor11[s]) = 0
                            s = s + 1
                            continue 
                        stor12.length = 0
                        s = 0
                        while stor12.length > s:
                            uint256(stor12[s]) = 0
                            s = s + 1
                            continue 
                        stor13.length = 0
                        mem[0] = 13
                        idx = 0
                        while stor13.length > idx:
                            stor13[idx] = 0
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _600 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_600] < sub_5a91af01:
                            gameState = 0
                        else:
                            if sub_c9f7d054 < 1:
                                revert with 0, 17
                            if sub_9ffbf828 and uint32(sub_c9f7d054 - 1) > -1 / sub_9ffbf828:
                                revert with 0, 17
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _610 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_610] < sub_9ffbf828 * uint32(sub_c9f7d054 - 1):
                                gameState = 0
                            else:
                                uint8(stor10.field_32) = 1
                                stor10.field_40 % 16777216 = 0
                        if sub_f9172b74 == -1:
                            revert with 0, 17
                        sub_f9172b74++
                emit 0x12cbad2f: msg.sender
}



}
