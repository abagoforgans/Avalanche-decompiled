contract main {




// =====================  Runtime code  =====================


const scaledTotalSupply = -34007913129639936

const PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9

const EIP712_REVISION = ''

const EIP712_DOMAIN = 0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address controllerAddress;
array of struct name;
array of uint256 symbol;
uint8 decimals;
uint256 globalAMPLSupply;
uint256 stor106;
uint256 totalSupply;
mapping of uint256 scaledBalanceOf;
mapping of uint256 allowance;
mapping of uint256 nonces;

function name() payable {
    return name[0 len name.length].field_0
}

function totalSupply() payable {
    return totalSupply
}

function globalAMPLSupply() payable {
    return globalAMPLSupply
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

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function controller() payable {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit 0xef8c5be1: arg2, msg.sender, arg1
    return 1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor106 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor106
    return (scaledBalanceOf[address(arg1)] / stor106)
}

function setController(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    controllerAddress = arg1
    emit ControllerUpdated(arg1);
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    allowance[msg.sender][address(arg1)] += arg2
    emit 0xef8c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
    return 1
}

function DOMAIN_SEPARATOR() payable {
    mem[96] = uint256(name.field_0)
    idx = 96
    s = 0
    while name.length + 96 > idx + 32:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[96 len name.length]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        if arg2 > allowance[msg.sender][address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        allowance[msg.sender][address(arg1)] -= arg2
    emit 0xef8c5be1: allowance[msg.sender][address(arg1)], msg.sender, arg1
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferAll(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'sXCAmple: recipient zero address'
    if this.address == arg1:
        revert with 0, 'yXCAmple: recipient token addres'
    if stor106 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor106
    scaledBalanceOf[msg.sender] = 0
    if scaledBalanceOf[msg.sender] + scaledBalanceOf[arg1] < scaledBalanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    scaledBalanceOf[address(arg1)] = scaledBalanceOf[msg.sender] + scaledBalanceOf[arg1]
    emit 0x79ddf252: (scaledBalanceOf[msg.sender] / stor106), msg.sender, arg1
    return 1
}

function transferAllFrom(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not arg2:
        revert with 0, 'sXCAmple: recipient zero address'
    if this.address == arg2:
        revert with 0, 'yXCAmple: recipient token addres'
    if stor106 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor106
    if scaledBalanceOf[address(arg1)] / stor106 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    allowance[address(arg1)][msg.sender] -= scaledBalanceOf[address(arg1)] / stor106
    scaledBalanceOf[address(arg1)] = 0
    if scaledBalanceOf[address(arg1)] + scaledBalanceOf[arg2] < scaledBalanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    scaledBalanceOf[address(arg2)] = scaledBalanceOf[address(arg1)] + scaledBalanceOf[arg2]
    emit 0x79ddf252: (scaledBalanceOf[address(arg1)] / stor106), arg1, arg2
    return 1
}

function rebase(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if controllerAddress != msg.sender:
        revert with 0, 'XCAmple: caller not controller'
    if globalAMPLSupply == arg2:
        emit LogRebase(globalAMPLSupply, arg1);
        return globalAMPLSupply
    if not totalSupply:
        if globalAMPLSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require globalAMPLSupply
        totalSupply = 0 / globalAMPLSupply
    else:
        if arg2 * totalSupply / totalSupply != arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if globalAMPLSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require globalAMPLSupply
        totalSupply = arg2 * totalSupply / globalAMPLSupply
    globalAMPLSupply = arg2
    if arg2 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require arg2
    stor106 = -34007913129639936 / arg2
    emit LogRebase(arg2, arg1);
    return arg2
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if controllerAddress != msg.sender:
        revert with 0, 'XCAmple: caller not controller'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x255843416d706c653a206275726e2061646472657373207a65726f20616464726573,
                    mem[198 len 30]
    if not arg2:
        if 0 > scaledBalanceOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
    else:
        if stor106 * arg2 / arg2 != stor106:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if stor106 * arg2 > scaledBalanceOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        scaledBalanceOf[address(arg1)] += -1 * stor106 * arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit 0x79ddf252: arg2, arg1, 0
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'sXCAmple: recipient zero address'
    if this.address == arg1:
        revert with 0, 'yXCAmple: recipient token addres'
    if not arg2:
        if 0 > scaledBalanceOf[msg.sender]:
            revert with 0, 'SafeMath: subtraction overflow'
        if scaledBalanceOf[arg1] < scaledBalanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        scaledBalanceOf[address(arg1)] = scaledBalanceOf[arg1]
    else:
        if stor106 * arg2 / arg2 != stor106:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if stor106 * arg2 > scaledBalanceOf[msg.sender]:
            revert with 0, 'SafeMath: subtraction overflow'
        scaledBalanceOf[msg.sender] += -1 * stor106 * arg2
        if (stor106 * arg2) + scaledBalanceOf[arg1] < scaledBalanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        scaledBalanceOf[address(arg1)] = (stor106 * arg2) + scaledBalanceOf[arg1]
    emit 0x79ddf252: arg2, msg.sender, arg1
    return 1
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    if block.timestamp > arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x735843416d706c653a20737572706173736564207065726d697420646561646c696e,
                    mem[198 len 30]
    mem[320] = uint256(name.field_0)
    idx = 320
    s = 0
    while name.length + 320 > idx + 32:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[320 len name.length]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address), sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 'XCAmple: signature invalid'
    if nonces[address(arg1)] + 1 < nonces[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    nonces[address(arg1)]++
    allowance[address(arg1)][address(arg2)] = arg3
    emit 0xef8c5be1: arg3, arg1, arg2
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg2:
        revert with 0, 'sXCAmple: recipient zero address'
    if this.address == arg2:
        revert with 0, 'yXCAmple: recipient token addres'
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    allowance[address(arg1)][msg.sender] -= arg3
    if not arg3:
        if 0 > scaledBalanceOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if scaledBalanceOf[arg2] < scaledBalanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        scaledBalanceOf[address(arg2)] = scaledBalanceOf[arg2]
    else:
        if stor106 * arg3 / arg3 != stor106:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if stor106 * arg3 > scaledBalanceOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        scaledBalanceOf[address(arg1)] += -1 * stor106 * arg3
        if (stor106 * arg3) + scaledBalanceOf[arg2] < scaledBalanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        scaledBalanceOf[address(arg2)] = (stor106 * arg3) + scaledBalanceOf[arg2]
    emit 0x79ddf252: arg3, arg1, arg2
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if controllerAddress != msg.sender:
        revert with 0, 'XCAmple: caller not controller'
    if not arg1:
        revert with 0, 'sXCAmple: recipient zero address'
    if this.address == arg1:
        revert with 0, 'yXCAmple: recipient token addres'
    if not arg2:
        if scaledBalanceOf[address(arg1)] < scaledBalanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
    else:
        if stor106 * arg2 / arg2 != stor106:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (stor106 * arg2) + scaledBalanceOf[address(arg1)] < scaledBalanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        scaledBalanceOf[address(arg1)] += stor106 * arg2
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if globalAMPLSupply < arg2 + totalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x735843416d706c653a20746f74616c206d696e7420657863656564656420746f74616c20616d706c20737570706c,
                    mem[210 len 18]
    if test266151307() < totalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x775843416d706c653a20746f74616c206d696e74206578636565646564206d617820737570706c,
                    mem[203 len 25]
    emit 0x79ddf252: arg2, 0, arg1
}

function initialize(string arg1, string arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 
                            32,
                            46,
                            0x496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a6500,
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 274 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0, 
                                32,
                                46,
                                0x496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a6500,
                                mem[ceil32(arg1.length) + ceil32(arg2.length) + 274 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0, 
                                    32,
                                    46,
                                    0x496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a6500,
                                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 274 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0, 
                                        32,
                                        46,
                                        0x496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a6500,
                                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 274 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
    name[].field_0 = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    decimals = 9
    globalAMPLSupply = arg3
    totalSupply = 0
    if arg3 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require arg3
    stor106 = -34007913129639936 / arg3
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
