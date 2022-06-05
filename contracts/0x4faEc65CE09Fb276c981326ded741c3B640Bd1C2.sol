contract main {




// =====================  Runtime code  =====================


const scaledTotalSupply = -34007913129639936

const PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9

const EIP712_REVISION = ''

const EIP712_DOMAIN = 0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f


bool stor0; offset 256
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 16
uint256 stor0; offset 8
array of struct name;
array of uint256 symbol;
uint8 decimals;
address owner;
uint16 stor155; offset 160
address monetaryPolicyAddress;
uint256 totalSupply;
uint256 stor157;
mapping of uint256 scaledBalanceOf;
mapping of uint256 allowance;
mapping of uint256 nonces;

function name() payable {
    return name[0 len name.length].field_0
}

function totalSupply() payable {
    return totalSupply
}

function scaledBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return scaledBalanceOf[address(arg1)]
}

function decimals() payable {
    return decimals
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return nonces[address(arg1)]
}

function owner() payable {
    return owner
}

function monetaryPolicy() payable {
    return monetaryPolicyAddress
}

function symbol() payable {
    return symbol[0 len symbol.length].field_0
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require stor157 > 0
    require stor157
    return (scaledBalanceOf[address(arg1)] / stor157)
}

function setMonetaryPolicy(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    monetaryPolicyAddress = arg1
    emit LogMonetaryPolicyUpdated(arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit 0xef8c5be1: arg2, msg.sender, arg1
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit 0xef8c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
    return 1
}

function DOMAIN_SEPARATOR() payable {
    mem[128] = uint256(name.field_0)
    idx = 128
    s = 0
    while name.length + 96 > idx:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[128 len name.length]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
        emit 0xef8c5be1: 0, msg.sender, arg1
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
        emit 0xef8c5be1: (allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1
    return 1
}

function transferAll(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    require arg1 != this.address
    require stor157 > 0
    require stor157
    scaledBalanceOf[msg.sender] = 0
    require scaledBalanceOf[msg.sender] + scaledBalanceOf[arg1] >= scaledBalanceOf[arg1]
    scaledBalanceOf[address(arg1)] = scaledBalanceOf[msg.sender] + scaledBalanceOf[arg1]
    emit 0x64ddf252: (scaledBalanceOf[msg.sender] / stor157), msg.sender, arg1
    return 1
}

function transferAllFrom(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2
    require arg2 != this.address
    require stor157 > 0
    require stor157
    require scaledBalanceOf[address(arg1)] / stor157 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= scaledBalanceOf[address(arg1)] / stor157
    scaledBalanceOf[address(arg1)] = 0
    require scaledBalanceOf[address(arg1)] + scaledBalanceOf[arg2] >= scaledBalanceOf[arg2]
    scaledBalanceOf[address(arg2)] = scaledBalanceOf[address(arg1)] + scaledBalanceOf[arg2]
    emit 0x64ddf252: (scaledBalanceOf[address(arg1)] / stor157), arg1, arg2
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg1 != this.address
    if not arg2:
        require 0 <= scaledBalanceOf[msg.sender]
        require scaledBalanceOf[arg1] >= scaledBalanceOf[arg1]
        scaledBalanceOf[address(arg1)] = scaledBalanceOf[arg1]
    else:
        require stor157 * arg2 / arg2 == stor157
        require stor157 * arg2 <= scaledBalanceOf[msg.sender]
        scaledBalanceOf[msg.sender] += -1 * stor157 * arg2
        require (stor157 * arg2) + scaledBalanceOf[arg1] >= scaledBalanceOf[arg1]
        scaledBalanceOf[address(arg1)] = (stor157 * arg2) + scaledBalanceOf[arg1]
    emit 0x64ddf252: arg2, msg.sender, arg1
    return 1
}

function sub_a726236f(?) payable {
    require calldata.size - 4 >= 64
    if arg2:
        if arg2 >= 0:
            require arg2 + totalSupply >= totalSupply
            totalSupply += arg2
        else:
            require arg2 != 0x8000000000000000000000000000000000000000000000000000000000000000
            if arg2 < 0:
                require -arg2 <= totalSupply
                totalSupply += arg2
            else:
                require arg2 <= totalSupply
                totalSupply -= arg2
        if test266151307() < totalSupply:
            totalSupply = test266151307()
        require totalSupply > 0
        require totalSupply
        stor157 = -34007913129639936 / totalSupply
    emit LogRebase(totalSupply, arg1);
    return totalSupply
}

function rebase(uint256 arg1, int256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == monetaryPolicyAddress
    if arg2:
        if arg2 >= 0:
            require arg2 + totalSupply >= totalSupply
            totalSupply += arg2
        else:
            require arg2 != 0x8000000000000000000000000000000000000000000000000000000000000000
            if arg2 < 0:
                require -arg2 <= totalSupply
                totalSupply += arg2
            else:
                require arg2 <= totalSupply
                totalSupply -= arg2
        if test266151307() < totalSupply:
            totalSupply = test266151307()
        require totalSupply > 0
        require totalSupply
        stor157 = -34007913129639936 / totalSupply
    emit LogRebase(totalSupply, arg1);
    return totalSupply
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2
    require arg2 != this.address
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    if not arg3:
        require 0 <= scaledBalanceOf[address(arg1)]
        require scaledBalanceOf[arg2] >= scaledBalanceOf[arg2]
        scaledBalanceOf[address(arg2)] = scaledBalanceOf[arg2]
    else:
        require stor157 * arg3 / arg3 == stor157
        require stor157 * arg3 <= scaledBalanceOf[address(arg1)]
        scaledBalanceOf[address(arg1)] += -1 * stor157 * arg3
        require (stor157 * arg3) + scaledBalanceOf[arg2] >= scaledBalanceOf[arg2]
        scaledBalanceOf[address(arg2)] = (stor157 * arg3) + scaledBalanceOf[arg2]
    emit 0x64ddf252: arg3, arg1, arg2
    return 1
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    require block.timestamp <= arg4
    mem[352] = uint256(name.field_0)
    idx = 352
    s = 0
    while name.length + 320 > idx:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[352 len name.length]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address), sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 == address(signer)
    require nonces[address(arg1)] + 1 >= nonces[address(arg1)]
    nonces[address(arg1)]++
    allowance[address(arg1)][address(arg2)] = arg3
    emit 0xef8c5be1: arg3, arg1, arg2
}

function initialize(string arg1, string arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 
                            32,
                            46,
                            0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 274 len 18]
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    if arg1.length:
        name[].field_0 = Array(len=arg1.length, data=arg1[all])
    else:
        name.length = 0
        idx = 0
        while name.length + 31 / 32 > idx:
            name[idx].field_0 = 0
            idx = idx + 1
            continue 
    if arg2.length:
        symbol[].field_0 = Array(len=arg2.length, data=arg2[all])
    else:
        symbol.length = 0
        idx = 0
        while symbol.length + 31 / 32 > idx:
            symbol[idx].field_0 = 0
            idx = idx + 1
            continue 
    decimals = arg3
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        if not uint8(stor0.field_8):
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0, 
                                32,
                                46,
                                0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[338 len 18]
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    bool(name.length) = 0
    name.length.field_1 = 15
    name.length.field_136 = Mask(120, 0, 'ForkedBlock DAO')
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(symbol.length) = 0
    symbol.length.field_1 = 4
    symbol.length.field_224 = 1178878287
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    decimals = 9
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 
                            32,
                            46,
                            0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[338 len 18]
    owner = arg1
    uint8(stor0.field_0) = 1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    Mask(240, 0, stor0.field_16) = 0
    stor0.field_256 % 1 = 0
    stor0.field_256 % 1 = 0
    stor155 = 0
    totalSupply = 5 * 10^16
    scaledBalanceOf[address(arg1)] = -34007913129639936
    require totalSupply > 0
    require totalSupply
    stor157 = -34007913129639936 / totalSupply
    emit 0x64ddf252: totalSupply, 0, arg1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}



}
