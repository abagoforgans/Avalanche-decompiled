contract main {




// =====================  Runtime code  =====================


#
#  - sub_3c8dc8ac(?)
#  - infoOfPool(address arg1, address arg2)
#
const priceCalculator = 0xaad0328d77ea428d7290300f3ba234a6869e2bdf

const MAXIMUS = 0x964ddc3f274e425c6f257c046161f956d8fa2652

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
mapping of uint8 poolTypes;
mapping of uint8 stor102;

function poolTypes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require uint8(poolTypes[arg1]) < 7
    return uint8(poolTypes[arg1])
}

function sub_652d0542(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor102[arg1])
}

function owner() payable {
    return owner
}

function poolTypeOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require uint8(poolTypes[address(arg1)]) < 7
    return uint8(poolTypes[address(arg1)])
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

function setPerfExemption(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor102[address(arg1)] = uint8(arg2)
}

function setPoolType(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < 7
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg2 <= 6
    uint256(poolTypes[address(arg1)]) = arg2 or Mask(248, 8, uint256(poolTypes[address(arg1)]))
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_4ee629d3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require uint8(poolTypes[address(arg1)]) <= 6
    if uint8(poolTypes[address(arg1)]) == 1:
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x896471c8 with:
                gas gas_remaining wei
               args address(arg2)
    else:
        require uint8(poolTypes[address(arg1)]) <= 6
        require ext_code.size(address(arg1))
        if uint8(poolTypes[address(arg1)]) != 2:
            staticcall address(arg1).0x3aa6c4f9 with:
                    gas gas_remaining wei
                   args address(arg2)
        else:
            staticcall address(arg1).0x896471c8 with:
                    gas gas_remaining wei
                   args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function tvlOfPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x72f702f3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.0xb69ef8a8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[32]
}

function initialize() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
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
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
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
                        uint8(stor0.field_8) = 0
}

function calculateProfit(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require uint8(poolTypes[address(arg1)]) <= 6
    if uint8(poolTypes[address(arg1)]):
        require uint8(poolTypes[address(arg1)]) <= 6
        if uint8(poolTypes[address(arg1)]) == 2:
            require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
            staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                    gas gas_remaining wei
                   args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, ext_call.return_data[0]
        else:
            require uint8(poolTypes[address(arg1)]) <= 6
            if uint8(poolTypes[address(arg1)]) != 3:
                require uint8(poolTypes[address(arg1)]) <= 6
                if uint8(poolTypes[address(arg1)]) != 1:
                    return 0
            require ext_code.size(arg1)
            staticcall arg1.earned(address rg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.0x72f702f3 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
    else:
        require ext_code.size(arg1)
        staticcall arg1.earned(address rg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.0xd1af0c7d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require uint8(poolTypes[address(arg1)]) <= 6
        if uint8(poolTypes[address(arg1)]) == 2:
            require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
            staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                    gas gas_remaining wei
                   args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
        else:
            require uint8(poolTypes[address(arg1)]) <= 6
            if uint8(poolTypes[address(arg1)]) == 3:
                require ext_code.size(arg1)
                staticcall arg1.earned(address rg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.0x72f702f3 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
            else:
                require uint8(poolTypes[address(arg1)]) <= 6
                if uint8(poolTypes[address(arg1)]) == 1:
                    require ext_code.size(arg1)
                    staticcall arg1.earned(address rg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    staticcall arg1.0x72f702f3 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[0]
}

function profitOfPool(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require uint8(poolTypes[address(arg1)]) <= 6
    if uint8(poolTypes[address(arg1)]):
        require uint8(poolTypes[address(arg1)]) <= 6
        if uint8(poolTypes[address(arg1)]) == 2:
            require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
            staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                    gas gas_remaining wei
                   args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, ext_call.return_data[0]
        else:
            require uint8(poolTypes[address(arg1)]) <= 6
            if uint8(poolTypes[address(arg1)]) != 3:
                require uint8(poolTypes[address(arg1)]) <= 6
                if uint8(poolTypes[address(arg1)]) != 1:
                    if stor102[address(arg1)]:
                        return 0
                    require ext_code.size(arg1)
                    staticcall arg1.minter() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(arg1)
                    if not ext_call.return_data[12 len 20]:
                        staticcall arg1.0x972313c0 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if not ext_call.return_data[12 len 20]:
                            return 0
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(arg1), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return 0, ext_call.return_data[0]
                    staticcall arg1.minter() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xb20bd1ee with:
                            gas gas_remaining wei
                           args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    staticcall arg1.0x972313c0 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if not ext_call.return_data[12 len 20]:
                        return 0, ext_call.return_data[0]
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(arg1), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return 0, 2 * ext_call.return_data[0]
            require ext_code.size(arg1)
            staticcall arg1.earned(address rg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.0x72f702f3 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
    else:
        require ext_code.size(arg1)
        staticcall arg1.earned(address rg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.0xd1af0c7d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require uint8(poolTypes[address(arg1)]) <= 6
        if uint8(poolTypes[address(arg1)]) == 2:
            require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
            staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                    gas gas_remaining wei
                   args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
        else:
            require uint8(poolTypes[address(arg1)]) <= 6
            if uint8(poolTypes[address(arg1)]) == 3:
                require ext_code.size(arg1)
                staticcall arg1.earned(address rg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.0x72f702f3 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
            else:
                require uint8(poolTypes[address(arg1)]) <= 6
                if uint8(poolTypes[address(arg1)]) == 1:
                    require ext_code.size(arg1)
                    staticcall arg1.earned(address rg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    staticcall arg1.0x72f702f3 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
    if stor102[address(arg1)]:
        return ext_call.return_data[0], 0
    require ext_code.size(arg1)
    staticcall arg1.minter() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        require ext_code.size(arg1)
        staticcall arg1.0x972313c0 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            return ext_call.return_data[0], 0
        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        staticcall arg1.minter() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[0]:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xb20bd1ee with:
                    gas gas_remaining wei
                   args 0
        else:
            if 30 * ext_call.return_data[0] / ext_call.return_data[0] != 30:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xb20bd1ee with:
                    gas gas_remaining wei
                   args (30 * ext_call.return_data[0] / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.0x972313c0 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            return 0, ext_call.return_data[0]
        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return 0, 2 * ext_call.return_data[0]
    if 70 * ext_call.return_data[0] / ext_call.return_data[0] != 70:
        revert with 0, 'SafeMath: multiplication overflow'
    require ext_code.size(arg1)
    staticcall arg1.minter() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[0]:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xb20bd1ee with:
                gas gas_remaining wei
               args 0
    else:
        if 30 * ext_call.return_data[0] / ext_call.return_data[0] != 30:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xb20bd1ee with:
                gas gas_remaining wei
               args (30 * ext_call.return_data[0] / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x972313c0 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 70 * ext_call.return_data[0] / 100, ext_call.return_data[0]
    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return 70 * ext_call.return_data[0] / 100, 2 * ext_call.return_data[0]
}

function sub_f0854de8(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 36).length) + 128
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < ('cd', 36).length:
        require idx < mem[96]
        _14079 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].0x72f702f3 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _14083 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_14083] == mem[_14083 + 12 len 20]
        if not mem[_14083 + 12 len 20]:
            mem[0] = address(_14079)
            mem[32] = 101
            require uint8(poolTypes[address(_14079)]) <= 6
            if uint8(poolTypes[address(_14079)]):
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) == 2:
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14098 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14106 = mem[_14098]
                    mem[mem[64] + 36] = mem[_14098]
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _14106
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14128 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _14135 = mem[_14128]
                    mem[0] = address(_14079)
                    mem[32] = 102
                    if stor102[address(_14079)]:
                        mem[mem[64] + 36] = _14135
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14135
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14173 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _14184 = mem[_14173 + 32]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14226 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _14184 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_14226 + 32] + _14184 < _14184:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_14226 + 32] + _14184 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_14226 + 32] + _14184 + s
                        continue 
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).minter() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14160 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_14160] == mem[_14160 + 12 len 20]
                    if not mem[_14160 + 12 len 20]:
                        mem[0] = address(_14079)
                        mem[32] = 101
                        require uint8(poolTypes[address(_14079)]) <= 6
                        if uint8(poolTypes[address(_14079)]) == 2:
                            require ext_code.size(address(_14079))
                            staticcall address(_14079).0x972313c0 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14266 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_14266] == mem[_14266 + 12 len 20]
                            if not mem[_14266 + 12 len 20]:
                                mem[mem[64] + 36] = _14135
                                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                        gas gas_remaining wei
                                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14135
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14480 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _14520 = mem[_14480 + 32]
                                mem[mem[64] + 36] = 0
                                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                        gas gas_remaining wei
                                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14651 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                if _14520 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mem[_14651 + 32] + _14520 < _14520:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mem[_14651 + 32] + _14520 + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_14651 + 32] + _14520 + s
                                continue 
                            mem[mem[64] + 4] = address(_14079)
                            mem[mem[64] + 36] = address(cd[4])
                            require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                            staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                    gas gas_remaining wei
                                   args address(_14079), address(cd[4])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14456 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14499 = mem[_14456]
                            if mem[_14456] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64] + 36] = _14135
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14135
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14779 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _14847 = mem[_14779 + 32]
                            mem[mem[64] + 36] = _14499
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _14499
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15009 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _14847 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_15009 + 32] + _14847 < _14847:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_15009 + 32] + _14847 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_15009 + 32] + _14847 + s
                            continue 
                        mem[0] = address(_14079)
                        mem[32] = 101
                        require uint8(poolTypes[address(_14079)]) <= 6
                        if uint8(poolTypes[address(_14079)]) != 3:
                            mem[mem[64] + 36] = _14135
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14135
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14352 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _14380 = mem[_14352 + 32]
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14481 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _14380 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_14481 + 32] + _14380 < _14380:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_14481 + 32] + _14380 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_14481 + 32] + _14380 + s
                            continue 
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14297 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_14297] == mem[_14297 + 12 len 20]
                        if not mem[_14297 + 12 len 20]:
                            mem[mem[64] + 36] = _14135
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14135
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14523 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _14566 = mem[_14523 + 32]
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14717 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _14566 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_14717 + 32] + _14566 < _14566:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_14717 + 32] + _14566 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_14717 + 32] + _14566 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14500 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _14545 = mem[_14500]
                        if mem[_14500] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = _14135
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14135
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14848 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _14904 = mem[_14848 + 32]
                        mem[mem[64] + 36] = _14545
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _14545
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15092 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _14904 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15092 + 32] + _14904 < _14904:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15092 + 32] + _14904 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_15092 + 32] + _14904 + s
                        continue 
                    if not _14135:
                        _14269 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14269] = 26
                        mem[_14269 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).minter() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14366 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _14399 = mem[_14366]
                        require mem[_14366] == mem[_14366 + 12 len 20]
                        _14591 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14591] = 26
                        mem[_14591 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = 0
                        require ext_code.size(address(_14399))
                        staticcall address(_14399).0xb20bd1ee with:
                                gas gas_remaining wei
                               args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14877 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _14944 = mem[_14877]
                        mem[0] = address(_14079)
                        mem[32] = 101
                        require uint8(poolTypes[address(_14079)]) <= 6
                        if uint8(poolTypes[address(_14079)]) == 2:
                            require ext_code.size(address(_14079))
                            staticcall address(_14079).0x972313c0 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15228 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_15228] == mem[_15228 + 12 len 20]
                            if not mem[_15228 + 12 len 20]:
                                mem[mem[64] + 36] = 0
                                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                        gas gas_remaining wei
                                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15898 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _16011 = mem[_15898 + 32]
                                mem[mem[64] + 36] = _14944
                                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                        gas gas_remaining wei
                                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _14944
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16327 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                if _16011 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mem[_16327 + 32] + _16011 < _16011:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mem[_16327 + 32] + _16011 + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_16327 + 32] + _16011 + s
                                continue 
                            mem[mem[64] + 4] = address(_14079)
                            mem[mem[64] + 36] = address(cd[4])
                            require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                            staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                    gas gas_remaining wei
                                   args address(_14079), address(cd[4])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15835 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _15957 = mem[_15835]
                            if mem[_15835] + _14944 < _14944:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16616 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _16779 = mem[_16616 + 32]
                            mem[mem[64] + 36] = _15957 + _14944
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15957 + _14944
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17173 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _16779 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_17173 + 32] + _16779 < _16779:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_17173 + 32] + _16779 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_17173 + 32] + _16779 + s
                            continue 
                        mem[0] = address(_14079)
                        mem[32] = 101
                        require uint8(poolTypes[address(_14079)]) <= 6
                        if uint8(poolTypes[address(_14079)]) != 3:
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15513 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _15616 = mem[_15513 + 32]
                            mem[mem[64] + 36] = _14944
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _14944
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15899 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _15616 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_15899 + 32] + _15616 < _15616:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_15899 + 32] + _15616 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_15899 + 32] + _15616 + s
                            continue 
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15317 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_15317] == mem[_15317 + 12 len 20]
                        if not mem[_15317 + 12 len 20]:
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16014 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _16141 = mem[_16014 + 32]
                            mem[mem[64] + 36] = _14944
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _14944
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16463 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _16141 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_16463 + 32] + _16141 < _16141:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_16463 + 32] + _16141 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_16463 + 32] + _16141 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15958 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16084 = mem[_15958]
                        if mem[_15958] + _14944 < _14944:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16780 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _16937 = mem[_16780 + 32]
                        mem[mem[64] + 36] = _16084 + _14944
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16084 + _14944
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17341 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _16937 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17341 + 32] + _16937 < _16937:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17341 + 32] + _16937 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_17341 + 32] + _16937 + s
                        continue 
                    if 70 * _14135 / _14135 != 70:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _14282 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14282] = 26
                    mem[_14282 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).minter() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14381 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14418 = mem[_14381]
                    require mem[_14381] == mem[_14381 + 12 len 20]
                    if not 70 * _14135 / 100:
                        _14620 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14620] = 26
                        mem[_14620 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = 0
                        require ext_code.size(address(_14418))
                        staticcall address(_14418).0xb20bd1ee with:
                                gas gas_remaining wei
                               args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14905 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _14975 = mem[_14905]
                        mem[0] = address(_14079)
                        mem[32] = 101
                        require uint8(poolTypes[address(_14079)]) <= 6
                        if uint8(poolTypes[address(_14079)]) == 2:
                            require ext_code.size(address(_14079))
                            staticcall address(_14079).0x972313c0 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15269 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_15269] == mem[_15269 + 12 len 20]
                            if not mem[_15269 + 12 len 20]:
                                mem[mem[64] + 36] = 70 * _14135 / 100
                                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                        gas gas_remaining wei
                                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14135 / 100
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15954 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _16079 = mem[_15954 + 32]
                                mem[mem[64] + 36] = _14975
                                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                        gas gas_remaining wei
                                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _14975
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16393 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                if _16079 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mem[_16393 + 32] + _16079 < _16079:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mem[_16393 + 32] + _16079 + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_16393 + 32] + _16079 + s
                                continue 
                            mem[mem[64] + 4] = address(_14079)
                            mem[mem[64] + 36] = address(cd[4])
                            require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                            staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                    gas gas_remaining wei
                                   args address(_14079), address(cd[4])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15896 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _16008 = mem[_15896]
                            if mem[_15896] + _14975 < _14975:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64] + 36] = 70 * _14135 / 100
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14135 / 100
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16691 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _16849 = mem[_16691 + 32]
                            mem[mem[64] + 36] = _16008 + _14975
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16008 + _14975
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17253 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _16849 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_17253 + 32] + _16849 < _16849:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_17253 + 32] + _16849 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_17253 + 32] + _16849 + s
                            continue 
                        mem[0] = address(_14079)
                        mem[32] = 101
                        require uint8(poolTypes[address(_14079)]) <= 6
                        if uint8(poolTypes[address(_14079)]) != 3:
                            mem[mem[64] + 36] = 70 * _14135 / 100
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14135 / 100
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15567 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _15670 = mem[_15567 + 32]
                            mem[mem[64] + 36] = _14975
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _14975
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15955 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _15670 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_15955 + 32] + _15670 < _15670:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_15955 + 32] + _15670 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_15955 + 32] + _15670 + s
                            continue 
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15368 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_15368] == mem[_15368 + 12 len 20]
                        if not mem[_15368 + 12 len 20]:
                            mem[mem[64] + 36] = 70 * _14135 / 100
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14135 / 100
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16082 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _16203 = mem[_16082 + 32]
                            mem[mem[64] + 36] = _14975
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _14975
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16545 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _16203 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_16545 + 32] + _16203 < _16203:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_16545 + 32] + _16203 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_16545 + 32] + _16203 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16009 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16138 = mem[_16009]
                        if mem[_16009] + _14975 < _14975:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = 70 * _14135 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14135 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16850 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _17012 = mem[_16850 + 32]
                        mem[mem[64] + 36] = _16138 + _14975
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16138 + _14975
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17431 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _17012 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17431 + 32] + _17012 < _17012:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17431 + 32] + _17012 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_17431 + 32] + _17012 + s
                        continue 
                    if 30 * 70 * _14135 / 100 / 70 * _14135 / 100 != 30:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _14655 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14655] = 26
                    mem[_14655 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = 30 * 70 * _14135 / 100 / 100
                    require ext_code.size(address(_14418))
                    staticcall address(_14418).0xb20bd1ee with:
                            gas gas_remaining wei
                           args (30 * 70 * _14135 / 100 / 100)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14943 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _15011 = mem[_14943]
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) == 2:
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15312 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_15312] == mem[_15312 + 12 len 20]
                        if not mem[_15312 + 12 len 20]:
                            mem[mem[64] + 36] = 70 * _14135 / 100
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14135 / 100
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16005 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _16133 = mem[_16005 + 32]
                            mem[mem[64] + 36] = _15011
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15011
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16454 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _16133 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_16454 + 32] + _16133 < _16133:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_16454 + 32] + _16133 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_16454 + 32] + _16133 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15952 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16076 = mem[_15952]
                        if mem[_15952] + _15011 < _15011:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = 70 * _14135 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14135 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16772 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _16929 = mem[_16772 + 32]
                        mem[mem[64] + 36] = _16076 + _15011
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16076 + _15011
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17335 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _16929 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17335 + 32] + _16929 < _16929:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17335 + 32] + _16929 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_17335 + 32] + _16929 + s
                        continue 
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) != 3:
                        mem[mem[64] + 36] = 70 * _14135 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14135 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15613 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _15721 = mem[_15613 + 32]
                        mem[mem[64] + 36] = _15011
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15011
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16006 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _15721 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16006 + 32] + _15721 < _15721:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16006 + 32] + _15721 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_16006 + 32] + _15721 + s
                        continue 
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15412 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_15412] == mem[_15412 + 12 len 20]
                    if not mem[_15412 + 12 len 20]:
                        mem[mem[64] + 36] = 70 * _14135 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14135 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16136 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _16262 = mem[_16136 + 32]
                        mem[mem[64] + 36] = _15011
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15011
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16613 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _16262 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16613 + 32] + _16262 < _16262:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16613 + 32] + _16262 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_16613 + 32] + _16262 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16077 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _16200 = mem[_16077]
                    if mem[_16077] + _15011 < _15011:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 70 * _14135 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14135 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16930 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _17091 = mem[_16930 + 32]
                    mem[mem[64] + 36] = _16200 + _15011
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16200 + _15011
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17518 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _17091 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_17518 + 32] + _17091 < _17091:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_17518 + 32] + _17091 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_17518 + 32] + _17091 + s
                    continue 
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) == 3:
                    mem[mem[64] + 4] = address(cd[4])
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).earned(address rg1) with:
                            gas gas_remaining wei
                           args address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14108 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14116 = mem[_14108]
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x72f702f3 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14130 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_14130] == mem[_14130 + 12 len 20]
                    mem[mem[64] + 4] = mem[_14130 + 12 len 20]
                    mem[mem[64] + 36] = _14116
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], _14116
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14175 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _14187 = mem[_14175]
                    mem[0] = address(_14079)
                    mem[32] = 102
                    if stor102[address(_14079)]:
                        mem[mem[64] + 36] = _14187
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14187
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14274 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _14306 = mem[_14274 + 32]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14370 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _14306 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_14370 + 32] + _14306 < _14306:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_14370 + 32] + _14306 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_14370 + 32] + _14306 + s
                        continue 
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).minter() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14245 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_14245] == mem[_14245 + 12 len 20]
                    if not mem[_14245 + 12 len 20]:
                        mem[0] = address(_14079)
                        mem[32] = 101
                        require uint8(poolTypes[address(_14079)]) <= 6
                        if uint8(poolTypes[address(_14079)]) == 2:
                            require ext_code.size(address(_14079))
                            staticcall address(_14079).0x972313c0 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14428 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_14428] == mem[_14428 + 12 len 20]
                            if not mem[_14428 + 12 len 20]:
                                mem[mem[64] + 36] = _14187
                                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                        gas gas_remaining wei
                                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14187
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14768 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _14834 = mem[_14768 + 32]
                                mem[mem[64] + 36] = 0
                                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                        gas gas_remaining wei
                                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14996 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                if _14834 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mem[_14996 + 32] + _14834 < _14834:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mem[_14996 + 32] + _14834 + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_14996 + 32] + _14834 + s
                                continue 
                            mem[mem[64] + 4] = address(_14079)
                            mem[mem[64] + 36] = address(cd[4])
                            require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                            staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                    gas gas_remaining wei
                                   args address(_14079), address(cd[4])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14739 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14803 = mem[_14739]
                            if mem[_14739] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64] + 36] = _14187
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14187
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15164 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _15257 = mem[_15164 + 32]
                            mem[mem[64] + 36] = _14803
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _14803
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15500 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _15257 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_15500 + 32] + _15257 < _15257:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_15500 + 32] + _15257 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_15500 + 32] + _15257 + s
                            continue 
                        mem[0] = address(_14079)
                        mem[32] = 101
                        require uint8(poolTypes[address(_14079)]) <= 6
                        if uint8(poolTypes[address(_14079)]) != 3:
                            mem[mem[64] + 36] = _14187
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14187
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14553 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _14609 = mem[_14553 + 32]
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14769 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _14609 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_14769 + 32] + _14609 < _14609:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_14769 + 32] + _14609 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_14769 + 32] + _14609 + s
                            continue 
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14473 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_14473] == mem[_14473 + 12 len 20]
                        if not mem[_14473 + 12 len 20]:
                            mem[mem[64] + 36] = _14187
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14187
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14837 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _14891 = mem[_14837 + 32]
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15080 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _14891 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_15080 + 32] + _14891 < _14891:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_15080 + 32] + _14891 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_15080 + 32] + _14891 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14804 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _14869 = mem[_14804]
                        if mem[_14804] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = _14187
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14187
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15258 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _15356 = mem[_15258 + 32]
                        mem[mem[64] + 36] = _14869
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _14869
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15603 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _15356 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15603 + 32] + _15356 < _15356:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15603 + 32] + _15356 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_15603 + 32] + _15356 + s
                        continue 
                    if not _14187:
                        _14431 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14431] = 26
                        mem[_14431 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).minter() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14580 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _14646 = mem[_14580]
                        require mem[_14580] == mem[_14580 + 12 len 20]
                        _14936 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14936] = 26
                        mem[_14936 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = 0
                        require ext_code.size(address(_14646))
                        staticcall address(_14646).0xb20bd1ee with:
                                gas gas_remaining wei
                               args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15303 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _15400 = mem[_15303]
                        mem[0] = address(_14079)
                        mem[32] = 101
                        require uint8(poolTypes[address(_14079)]) <= 6
                        if uint8(poolTypes[address(_14079)]) == 2:
                            require ext_code.size(address(_14079))
                            staticcall address(_14079).0x972313c0 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15766 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_15766] == mem[_15766 + 12 len 20]
                            if not mem[_15766 + 12 len 20]:
                                mem[mem[64] + 36] = 0
                                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                        gas gas_remaining wei
                                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16597 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _16758 = mem[_16597 + 32]
                                mem[mem[64] + 36] = _15400
                                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                        gas gas_remaining wei
                                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15400
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17154 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                if _16758 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mem[_17154 + 32] + _16758 < _16758:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mem[_17154 + 32] + _16758 + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_17154 + 32] + _16758 + s
                                continue 
                            mem[mem[64] + 4] = address(_14079)
                            mem[mem[64] + 36] = address(cd[4])
                            require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                            staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                    gas gas_remaining wei
                                   args address(_14079), address(cd[4])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16528 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _16679 = mem[_16528]
                            if mem[_16528] + _15400 < _15400:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17499 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _17690 = mem[_17499 + 32]
                            mem[mem[64] + 36] = _16679 + _15400
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16679 + _15400
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18111 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _17690 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_18111 + 32] + _17690 < _17690:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_18111 + 32] + _17690 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_18111 + 32] + _17690 + s
                            continue 
                        mem[0] = address(_14079)
                        mem[32] = 101
                        require uint8(poolTypes[address(_14079)]) <= 6
                        if uint8(poolTypes[address(_14079)]) != 3:
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16121 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _16253 = mem[_16121 + 32]
                            mem[mem[64] + 36] = _15400
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15400
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16598 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _16253 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_16598 + 32] + _16253 < _16253:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_16598 + 32] + _16253 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_16598 + 32] + _16253 + s
                            continue 
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15884 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_15884] == mem[_15884 + 12 len 20]
                        if not mem[_15884 + 12 len 20]:
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16761 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _16915 = mem[_16761 + 32]
                            mem[mem[64] + 36] = _15400
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15400
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17322 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _16915 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_17322 + 32] + _16915 < _16915:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_17322 + 32] + _16915 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_17322 + 32] + _16915 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16680 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16838 = mem[_16680]
                        if mem[_16680] + _15400 < _15400:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17691 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _17866 = mem[_17691 + 32]
                        mem[mem[64] + 36] = _16838 + _15400
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16838 + _15400
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18297 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _17866 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18297 + 32] + _17866 < _17866:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18297 + 32] + _17866 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_18297 + 32] + _17866 + s
                        continue 
                    if 70 * _14187 / _14187 != 70:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _14446 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14446] = 26
                    mem[_14446 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).minter() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14610 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14672 = mem[_14610]
                    require mem[_14610] == mem[_14610 + 12 len 20]
                    if not 70 * _14187 / 100:
                        _14966 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14966] = 26
                        mem[_14966 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = 0
                        require ext_code.size(address(_14672))
                        staticcall address(_14672).0xb20bd1ee with:
                                gas gas_remaining wei
                               args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15357 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _15453 = mem[_15357]
                        mem[0] = address(_14079)
                        mem[32] = 101
                        require uint8(poolTypes[address(_14079)]) <= 6
                        if uint8(poolTypes[address(_14079)]) == 2:
                            require ext_code.size(address(_14079))
                            staticcall address(_14079).0x972313c0 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15817 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_15817] == mem[_15817 + 12 len 20]
                            if not mem[_15817 + 12 len 20]:
                                mem[mem[64] + 36] = 70 * _14187 / 100
                                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                        gas gas_remaining wei
                                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14187 / 100
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16676 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _16833 = mem[_16676 + 32]
                                mem[mem[64] + 36] = _15453
                                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                        gas gas_remaining wei
                                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15453
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17237 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                if _16833 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mem[_17237 + 32] + _16833 < _16833:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mem[_17237 + 32] + _16833 + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_17237 + 32] + _16833 + s
                                continue 
                            mem[mem[64] + 4] = address(_14079)
                            mem[mem[64] + 36] = address(cd[4])
                            require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                            staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                    gas gas_remaining wei
                                   args address(_14079), address(cd[4])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16595 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _16755 = mem[_16595]
                            if mem[_16595] + _15453 < _15453:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64] + 36] = 70 * _14187 / 100
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14187 / 100
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17596 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _17772 = mem[_17596 + 32]
                            mem[mem[64] + 36] = _16755 + _15453
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16755 + _15453
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18203 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _17772 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_18203 + 32] + _17772 < _17772:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_18203 + 32] + _17772 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_18203 + 32] + _17772 + s
                            continue 
                        mem[0] = address(_14079)
                        mem[32] = 101
                        require uint8(poolTypes[address(_14079)]) <= 6
                        if uint8(poolTypes[address(_14079)]) != 3:
                            mem[mem[64] + 36] = 70 * _14187 / 100
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14187 / 100
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16191 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _16314 = mem[_16191 + 32]
                            mem[mem[64] + 36] = _15453
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15453
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16677 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _16314 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_16677 + 32] + _16314 < _16314:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_16677 + 32] + _16314 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_16677 + 32] + _16314 + s
                            continue 
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15944 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_15944] == mem[_15944 + 12 len 20]
                        if not mem[_15944 + 12 len 20]:
                            mem[mem[64] + 36] = 70 * _14187 / 100
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14187 / 100
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16836 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _16992 = mem[_16836 + 32]
                            mem[mem[64] + 36] = _15453
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15453
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17416 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _16992 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_17416 + 32] + _16992 < _16992:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_17416 + 32] + _16992 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_17416 + 32] + _16992 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16756 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16912 = mem[_16756]
                        if mem[_16756] + _15453 < _15453:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = 70 * _14187 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14187 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17773 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _17940 = mem[_17773 + 32]
                        mem[mem[64] + 36] = _16912 + _15453
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16912 + _15453
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18385 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _17940 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18385 + 32] + _17940 < _17940:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18385 + 32] + _17940 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_18385 + 32] + _17940 + s
                        continue 
                    if 30 * 70 * _14187 / 100 / 70 * _14187 / 100 != 30:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _15000 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15000] = 26
                    mem[_15000 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = 30 * 70 * _14187 / 100 / 100
                    require ext_code.size(address(_14672))
                    staticcall address(_14672).0xb20bd1ee with:
                            gas gas_remaining wei
                           args (30 * 70 * _14187 / 100 / 100)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15399 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _15502 = mem[_15399]
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) == 2:
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15879 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_15879] == mem[_15879 + 12 len 20]
                        if not mem[_15879 + 12 len 20]:
                            mem[mem[64] + 36] = 70 * _14187 / 100
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14187 / 100
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16752 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _16907 = mem[_16752 + 32]
                            mem[mem[64] + 36] = _15502
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15502
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17313 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _16907 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_17313 + 32] + _16907 < _16907:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_17313 + 32] + _16907 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_17313 + 32] + _16907 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16674 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16830 = mem[_16674]
                        if mem[_16674] + _15502 < _15502:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = 70 * _14187 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14187 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17683 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _17858 = mem[_17683 + 32]
                        mem[mem[64] + 36] = _16830 + _15502
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16830 + _15502
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18291 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _17858 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18291 + 32] + _17858 < _17858:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18291 + 32] + _17858 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_18291 + 32] + _17858 + s
                        continue 
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) != 3:
                        mem[mem[64] + 36] = 70 * _14187 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14187 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16250 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _16380 = mem[_16250 + 32]
                        mem[mem[64] + 36] = _15502
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15502
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16753 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _16380 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16753 + 32] + _16380 < _16380:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16753 + 32] + _16380 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_16753 + 32] + _16380 + s
                        continue 
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15992 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_15992] == mem[_15992 + 12 len 20]
                    if not mem[_15992 + 12 len 20]:
                        mem[mem[64] + 36] = 70 * _14187 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14187 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16910 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _17072 = mem[_16910 + 32]
                        mem[mem[64] + 36] = _15502
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15502
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17496 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _17072 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17496 + 32] + _17072 < _17072:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17496 + 32] + _17072 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_17496 + 32] + _17072 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16831 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _16989 = mem[_16831]
                    if mem[_16831] + _15502 < _15502:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 70 * _14187 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14187 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17859 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _18027 = mem[_17859 + 32]
                    mem[mem[64] + 36] = _16989 + _15502
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16989 + _15502
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18480 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _18027 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18480 + 32] + _18027 < _18027:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18480 + 32] + _18027 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_18480 + 32] + _18027 + s
                    continue 
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) != 1:
                    mem[0] = address(_14079)
                    mem[32] = 102
                    if stor102[address(_14079)]:
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14125 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _14134 = mem[_14125 + 32]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14154 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _14134 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_14154 + 32] + _14134 < _14134:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_14154 + 32] + _14134 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_14154 + 32] + _14134 + s
                        continue 
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).minter() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14118 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_14118] == mem[_14118 + 12 len 20]
                    if not mem[_14118 + 12 len 20]:
                        mem[0] = address(_14079)
                        mem[32] = 101
                        require uint8(poolTypes[address(_14079)]) <= 6
                        if uint8(poolTypes[address(_14079)]) == 2:
                            require ext_code.size(address(_14079))
                            staticcall address(_14079).0x972313c0 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14169 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_14169] == mem[_14169 + 12 len 20]
                            if not mem[_14169 + 12 len 20]:
                                mem[mem[64] + 36] = 0
                                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                        gas gas_remaining wei
                                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14307 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _14330 = mem[_14307 + 32]
                                mem[mem[64] + 36] = 0
                                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                        gas gas_remaining wei
                                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14410 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                if _14330 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mem[_14410 + 32] + _14330 < _14330:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mem[_14410 + 32] + _14330 + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_14410 + 32] + _14330 + s
                                continue 
                            mem[mem[64] + 4] = address(_14079)
                            mem[mem[64] + 36] = address(cd[4])
                            require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                            staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                    gas gas_remaining wei
                                   args address(_14079), address(cd[4])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14292 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14320 = mem[_14292]
                            if mem[_14292] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14493 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _14542 = mem[_14493 + 32]
                            mem[mem[64] + 36] = _14320
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _14320
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14673 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _14542 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_14673 + 32] + _14542 < _14542:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_14673 + 32] + _14542 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_14673 + 32] + _14542 + s
                            continue 
                        mem[0] = address(_14079)
                        mem[32] = 101
                        require uint8(poolTypes[address(_14079)]) <= 6
                        if uint8(poolTypes[address(_14079)]) != 3:
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14212 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _14232 = mem[_14212 + 32]
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14308 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _14232 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_14308 + 32] + _14232 < _14232:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_14308 + 32] + _14232 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_14308 + 32] + _14232 + s
                            continue 
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14182 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_14182] == mem[_14182 + 12 len 20]
                        if not mem[_14182 + 12 len 20]:
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14333 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _14364 = mem[_14333 + 32]
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14451 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _14364 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_14451 + 32] + _14364 < _14364:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_14451 + 32] + _14364 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_14451 + 32] + _14364 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14321 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _14350 = mem[_14321]
                        if mem[_14321] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14543 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _14583 = mem[_14543 + 32]
                        mem[mem[64] + 36] = _14350
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _14350
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14743 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _14583 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_14743 + 32] + _14583 < _14583:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_14743 + 32] + _14583 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_14743 + 32] + _14583 + s
                        continue 
                    _14172 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14172] = 26
                    mem[_14172 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).minter() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14225 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14249 = mem[_14225]
                    require mem[_14225] == mem[_14225 + 12 len 20]
                    _14375 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14375] = 26
                    mem[_14375 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = 0
                    require ext_code.size(address(_14249))
                    staticcall address(_14249).0xb20bd1ee with:
                            gas gas_remaining wei
                           args 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14560 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14614 = mem[_14560]
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) == 2:
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14840 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_14840] == mem[_14840 + 12 len 20]
                        if not mem[_14840 + 12 len 20]:
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15358 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _15455 = mem[_15358 + 32]
                            mem[mem[64] + 36] = _14614
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _14614
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15710 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _15455 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_15710 + 32] + _15455 < _15455:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_15710 + 32] + _15455 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_15710 + 32] + _15455 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15304 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _15401 = mem[_15304]
                        if mem[_15304] + _14614 < _14614:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15945 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _16070 = mem[_15945 + 32]
                        mem[mem[64] + 36] = _15401 + _14614
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15401 + _14614
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16385 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _16070 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16385 + 32] + _16070 < _16070:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16385 + 32] + _16070 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_16385 + 32] + _16070 + s
                        continue 
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) != 3:
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15044 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _15132 = mem[_15044 + 32]
                        mem[mem[64] + 36] = _14614
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _14614
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15359 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _15132 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15359 + 32] + _15132 < _15132:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15359 + 32] + _15132 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_15359 + 32] + _15132 + s
                        continue 
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14896 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_14896] == mem[_14896 + 12 len 20]
                    if not mem[_14896 + 12 len 20]:
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15458 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _15561 = mem[_15458 + 32]
                        mem[mem[64] + 36] = _14614
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _14614
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15823 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _15561 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15823 + 32] + _15561 < _15561:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15823 + 32] + _15561 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_15823 + 32] + _15561 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15402 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _15505 = mem[_15402]
                    if mem[_15402] + _14614 < _14614:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16071 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _16194 = mem[_16071 + 32]
                    mem[mem[64] + 36] = _15505 + _14614
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15505 + _14614
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16532 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _16194 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_16532 + 32] + _16194 < _16194:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_16532 + 32] + _16194 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_16532 + 32] + _16194 + s
                    continue 
                mem[mem[64] + 4] = address(cd[4])
                require ext_code.size(address(_14079))
                staticcall address(_14079).earned(address rg1) with:
                        gas gas_remaining wei
                       args address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14119 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _14127 = mem[_14119]
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x72f702f3 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14142 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_14142] == mem[_14142 + 12 len 20]
                mem[mem[64] + 4] = mem[_14142 + 12 len 20]
                mem[mem[64] + 36] = _14127
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], _14127
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14189 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _14204 = mem[_14189]
                mem[0] = address(_14079)
                mem[32] = 102
                if stor102[address(_14079)]:
                    mem[mem[64] + 36] = _14204
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14204
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14310 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _14335 = mem[_14310 + 32]
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14414 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _14335 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_14414 + 32] + _14335 < _14335:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_14414 + 32] + _14335 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_14414 + 32] + _14335 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).minter() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14281 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_14281] == mem[_14281 + 12 len 20]
                if not mem[_14281 + 12 len 20]:
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) == 2:
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14476 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_14476] == mem[_14476 + 12 len 20]
                        if not mem[_14476 + 12 len 20]:
                            mem[mem[64] + 36] = _14204
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14204
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14843 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _14898 = mem[_14843 + 32]
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15084 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _14898 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_15084 + 32] + _14898 < _14898:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_15084 + 32] + _14898 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_15084 + 32] + _14898 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14807 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _14870 = mem[_14807]
                        if mem[_14807] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = _14204
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14204
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15264 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _15362 = mem[_15264 + 32]
                        mem[mem[64] + 36] = _14870
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _14870
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15609 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _15362 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15609 + 32] + _15362 < _15362:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15609 + 32] + _15362 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_15609 + 32] + _15362 + s
                        continue 
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) != 3:
                        mem[mem[64] + 36] = _14204
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14204
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14615 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _14678 = mem[_14615 + 32]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14844 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _14678 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_14844 + 32] + _14678 < _14678:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_14844 + 32] + _14678 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_14844 + 32] + _14678 + s
                        continue 
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14518 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_14518] == mem[_14518 + 12 len 20]
                    if not mem[_14518 + 12 len 20]:
                        mem[mem[64] + 36] = _14204
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14204
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14901 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _14972 = mem[_14901 + 32]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15176 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _14972 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15176 + 32] + _14972 < _14972:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15176 + 32] + _14972 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_15176 + 32] + _14972 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14871 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14939 = mem[_14871]
                    if mem[_14871] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = _14204
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14204
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15363 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _15461 = mem[_15363 + 32]
                    mem[mem[64] + 36] = _14939
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _14939
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15716 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _15461 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_15716 + 32] + _15461 < _15461:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_15716 + 32] + _15461 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_15716 + 32] + _15461 + s
                    continue 
                if not _14204:
                    _14479 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14479] = 26
                    mem[_14479 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).minter() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14650 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14713 = mem[_14650]
                    require mem[_14650] == mem[_14650 + 12 len 20]
                    _15008 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15008] = 26
                    mem[_15008 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = 0
                    require ext_code.size(address(_14713))
                    staticcall address(_14713).0xb20bd1ee with:
                            gas gas_remaining wei
                           args 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15408 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _15510 = mem[_15408]
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) == 2:
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15890 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_15890] == mem[_15890 + 12 len 20]
                        if not mem[_15890 + 12 len 20]:
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16769 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _16924 = mem[_16769 + 32]
                            mem[mem[64] + 36] = _15510
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15510
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17331 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _16924 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_17331 + 32] + _16924 < _16924:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_17331 + 32] + _16924 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_17331 + 32] + _16924 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16688 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16844 = mem[_16688]
                        if mem[_16688] + _15510 < _15510:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17699 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _17874 = mem[_17699 + 32]
                        mem[mem[64] + 36] = _16844 + _15510
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16844 + _15510
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18303 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _17874 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18303 + 32] + _17874 < _17874:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18303 + 32] + _17874 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_18303 + 32] + _17874 + s
                        continue 
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) != 3:
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16259 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _16390 = mem[_16259 + 32]
                        mem[mem[64] + 36] = _15510
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15510
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16770 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _16390 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16770 + 32] + _16390 < _16390:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16770 + 32] + _16390 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_16770 + 32] + _16390 + s
                        continue 
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16004 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_16004] == mem[_16004 + 12 len 20]
                    if not mem[_16004 + 12 len 20]:
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16927 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _17088 = mem[_16927 + 32]
                        mem[mem[64] + 36] = _15510
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15510
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17514 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _17088 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17514 + 32] + _17088 < _17088:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17514 + 32] + _17088 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_17514 + 32] + _17088 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16845 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _17005 = mem[_16845]
                    if mem[_16845] + _15510 < _15510:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17875 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _18042 = mem[_17875 + 32]
                    mem[mem[64] + 36] = _17005 + _15510
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17005 + _15510
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18491 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _18042 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18491 + 32] + _18042 < _18042:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18491 + 32] + _18042 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_18491 + 32] + _18042 + s
                    continue 
                if 70 * _14204 / _14204 != 70:
                    revert with 0, 'SafeMath: multiplication overflow'
                _14497 = mem[64]
                mem[64] = mem[64] + 64
                mem[_14497] = 26
                mem[_14497 + 32] = 'SafeMath: division by zero'
                require ext_code.size(address(_14079))
                staticcall address(_14079).minter() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14679 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _14747 = mem[_14679]
                require mem[_14679] == mem[_14679 + 12 len 20]
                if not 70 * _14204 / 100:
                    _15047 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15047] = 26
                    mem[_15047 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = 0
                    require ext_code.size(address(_14747))
                    staticcall address(_14747).0xb20bd1ee with:
                            gas gas_remaining wei
                           args 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15462 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _15564 = mem[_15462]
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) == 2:
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15949 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_15949] == mem[_15949 + 12 len 20]
                        if not mem[_15949 + 12 len 20]:
                            mem[mem[64] + 36] = 70 * _14204 / 100
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14204 / 100
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16841 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _17000 = mem[_16841 + 32]
                            mem[mem[64] + 36] = _15564
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15564
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17421 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _17000 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_17421 + 32] + _17000 < _17000:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_17421 + 32] + _17000 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_17421 + 32] + _17000 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16767 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16921 = mem[_16767]
                        if mem[_16767] + _15564 < _15564:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = 70 * _14204 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14204 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17779 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _17947 = mem[_17779 + 32]
                        mem[mem[64] + 36] = _16921 + _15564
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16921 + _15564
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18390 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _17947 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18390 + 32] + _17947 < _17947:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18390 + 32] + _17947 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_18390 + 32] + _17947 + s
                        continue 
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) != 3:
                        mem[mem[64] + 36] = 70 * _14204 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14204 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16321 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _16451 = mem[_16321 + 32]
                        mem[mem[64] + 36] = _15564
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15564
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16842 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _16451 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16842 + 32] + _16451 < _16451:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16842 + 32] + _16451 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_16842 + 32] + _16451 + s
                        continue 
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16075 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_16075] == mem[_16075 + 12 len 20]
                    if not mem[_16075 + 12 len 20]:
                        mem[mem[64] + 36] = 70 * _14204 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14204 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17003 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _17164 = mem[_17003 + 32]
                        mem[mem[64] + 36] = _15564
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15564
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17607 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _17164 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17607 + 32] + _17164 < _17164:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17607 + 32] + _17164 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_17607 + 32] + _17164 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16922 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _17085 = mem[_16922]
                    if mem[_16922] + _15564 < _15564:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 70 * _14204 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14204 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17948 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _18119 = mem[_17948 + 32]
                    mem[mem[64] + 36] = _17085 + _15564
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17085 + _15564
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18582 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _18119 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18582 + 32] + _18119 < _18119:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18582 + 32] + _18119 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_18582 + 32] + _18119 + s
                    continue 
                if 30 * 70 * _14204 / 100 / 70 * _14204 / 100 != 30:
                    revert with 0, 'SafeMath: multiplication overflow'
                _15088 = mem[64]
                mem[64] = mem[64] + 64
                mem[_15088] = 26
                mem[_15088 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = 30 * 70 * _14204 / 100 / 100
                require ext_code.size(address(_14747))
                staticcall address(_14747).0xb20bd1ee with:
                        gas gas_remaining wei
                       args (30 * 70 * _14204 / 100 / 100)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15509 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _15611 = mem[_15509]
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) == 2:
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15999 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_15999] == mem[_15999 + 12 len 20]
                    if not mem[_15999 + 12 len 20]:
                        mem[mem[64] + 36] = 70 * _14204 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14204 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16918 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _17080 = mem[_16918 + 32]
                        mem[mem[64] + 36] = _15611
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15611
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17505 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _17080 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17505 + 32] + _17080 < _17080:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17505 + 32] + _17080 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_17505 + 32] + _17080 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16839 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _16997 = mem[_16839]
                    if mem[_16839] + _15611 < _15611:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 70 * _14204 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14204 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17867 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _18034 = mem[_17867 + 32]
                    mem[mem[64] + 36] = _16997 + _15611
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16997 + _15611
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18485 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _18034 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18485 + 32] + _18034 < _18034:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18485 + 32] + _18034 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_18485 + 32] + _18034 + s
                    continue 
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) != 3:
                    mem[mem[64] + 36] = 70 * _14204 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14204 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16387 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _16535 = mem[_16387 + 32]
                    mem[mem[64] + 36] = _15611
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15611
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16919 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _16535 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_16919 + 32] + _16535 < _16535:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_16919 + 32] + _16535 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_16919 + 32] + _16535 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16129 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_16129] == mem[_16129 + 12 len 20]
                if not mem[_16129 + 12 len 20]:
                    mem[mem[64] + 36] = 70 * _14204 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14204 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17083 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _17245 = mem[_17083 + 32]
                    mem[mem[64] + 36] = _15611
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15611
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17696 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _17245 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_17696 + 32] + _17245 < _17245:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_17696 + 32] + _17245 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_17696 + 32] + _17245 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16998 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _17161 = mem[_16998]
                if mem[_16998] + _15611 < _15611:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = 70 * _14204 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14204 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18035 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _18209 = mem[_18035 + 32]
                mem[mem[64] + 36] = _17161 + _15611
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17161 + _15611
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18676 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _18209 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_18676 + 32] + _18209 < _18209:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_18676 + 32] + _18209 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_18676 + 32] + _18209 + s
                continue 
            mem[mem[64] + 4] = address(cd[4])
            require ext_code.size(address(_14079))
            staticcall address(_14079).earned(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _14095 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _14099 = mem[_14095]
            require ext_code.size(address(_14079))
            staticcall address(_14079).0xd1af0c7d with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _14114 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_14114] == mem[_14114 + 12 len 20]
            mem[mem[64] + 4] = mem[_14114 + 12 len 20]
            mem[mem[64] + 36] = _14099
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], _14099
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _14152 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _14161 = mem[_14152]
            require uint8(poolTypes[address(_14079)]) <= 6
            if uint8(poolTypes[address(_14079)]) == 2:
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14213 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _14237 = mem[_14213]
                mem[mem[64] + 36] = mem[_14213]
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _14237
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14315 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _14341 = mem[_14315]
                mem[0] = address(_14079)
                mem[32] = 102
                if stor102[address(_14079)]:
                    mem[mem[64] + 36] = _14341
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14341
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14487 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _14529 = mem[_14487 + 32]
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14662 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _14529 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_14662 + 32] + _14529 < _14529:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_14662 + 32] + _14529 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_14662 + 32] + _14529 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).minter() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14443 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_14443] == mem[_14443 + 12 len 20]
                if not mem[_14443 + 12 len 20]:
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) == 2:
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14753 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_14753] == mem[_14753 + 12 len 20]
                        if not mem[_14753 + 12 len 20]:
                            mem[mem[64] + 36] = _14341
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14341
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15241 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _15330 = mem[_15241 + 32]
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15577 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _15330 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_15577 + 32] + _15330 < _15330:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_15577 + 32] + _15330 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_15577 + 32] + _15330 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15193 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _15279 = mem[_15193]
                        if mem[_15193] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = _14341
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14341
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15796 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _15917 = mem[_15796 + 32]
                        mem[mem[64] + 36] = _15279
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15279
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16222 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _15917 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16222 + 32] + _15917 < _15917:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16222 + 32] + _15917 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_16222 + 32] + _15917 + s
                        continue 
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) != 3:
                        mem[mem[64] + 36] = _14341
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14341
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14950 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _15024 = mem[_14950 + 32]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15242 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _15024 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15242 + 32] + _15024 < _15024:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15242 + 32] + _15024 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_15242 + 32] + _15024 + s
                        continue 
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14818 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_14818] == mem[_14818 + 12 len 20]
                    if not mem[_14818 + 12 len 20]:
                        mem[mem[64] + 36] = _14341
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14341
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15333 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _15429 = mem[_15333 + 32]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15687 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _15429 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15687 + 32] + _15429 < _15429:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15687 + 32] + _15429 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_15687 + 32] + _15429 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15280 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _15377 = mem[_15280]
                    if mem[_15280] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = _14341
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14341
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15918 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _16033 = mem[_15918 + 32]
                    mem[mem[64] + 36] = _15377
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15377
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16347 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _16033 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_16347 + 32] + _16033 < _16033:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_16347 + 32] + _16033 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_16347 + 32] + _16033 + s
                    continue 
                if not _14341:
                    _14756 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14756] = 26
                    mem[_14756 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).minter() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14980 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _15059 = mem[_14980]
                    require mem[_14980] == mem[_14980 + 12 len 20]
                    _15480 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15480] = 26
                    mem[_15480 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = 0
                    require ext_code.size(address(_15059))
                    staticcall address(_15059).0xb20bd1ee with:
                            gas gas_remaining wei
                           args 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15971 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _16100 = mem[_15971]
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) == 2:
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16565 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_16565] == mem[_16565 + 12 len 20]
                        if not mem[_16565 + 12 len 20]:
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17644 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _17816 = mem[_17644 + 32]
                            mem[mem[64] + 36] = _16100
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16100
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18242 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _17816 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_18242 + 32] + _17816 < _17816:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_18242 + 32] + _17816 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_18242 + 32] + _17816 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17547 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _17729 = mem[_17547]
                        if mem[_17547] + _16100 < _16100:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18617 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _18805 = mem[_18617 + 32]
                        mem[mem[64] + 36] = _17729 + _16100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17729 + _16100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19235 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _18805 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19235 + 32] + _18805 < _18805:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19235 + 32] + _18805 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_19235 + 32] + _18805 + s
                        continue 
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) != 3:
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17036 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _17195 = mem[_17036 + 32]
                        mem[mem[64] + 36] = _16100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17645 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _17195 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17645 + 32] + _17195 < _17195:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17645 + 32] + _17195 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_17645 + 32] + _17195 + s
                        continue 
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16721 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_16721] == mem[_16721 + 12 len 20]
                    if not mem[_16721 + 12 len 20]:
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17819 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _17984 = mem[_17819 + 32]
                        mem[mem[64] + 36] = _16100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18428 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _17984 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18428 + 32] + _17984 < _17984:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18428 + 32] + _17984 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_18428 + 32] + _17984 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17730 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _17904 = mem[_17730]
                    if mem[_17730] + _16100 < _16100:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18806 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _18979 = mem[_18806 + 32]
                    mem[mem[64] + 36] = _17904 + _16100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17904 + _16100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19412 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _18979 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19412 + 32] + _18979 < _18979:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19412 + 32] + _18979 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_19412 + 32] + _18979 + s
                    continue 
                if 70 * _14341 / _14341 != 70:
                    revert with 0, 'SafeMath: multiplication overflow'
                _14792 = mem[64]
                mem[64] = mem[64] + 64
                mem[_14792] = 26
                mem[_14792 + 32] = 'SafeMath: division by zero'
                require ext_code.size(address(_14079))
                staticcall address(_14079).minter() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15025 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _15108 = mem[_15025]
                require mem[_15025] == mem[_15025 + 12 len 20]
                if not 70 * _14341 / 100:
                    _15528 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15528] = 26
                    mem[_15528 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = 0
                    require ext_code.size(address(_15108))
                    staticcall address(_15108).0xb20bd1ee with:
                            gas gas_remaining wei
                           args 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16034 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _16156 = mem[_16034]
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) == 2:
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16637 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_16637] == mem[_16637 + 12 len 20]
                        if not mem[_16637 + 12 len 20]:
                            mem[mem[64] + 36] = 70 * _14341 / 100
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14341 / 100
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17726 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _17899 = mem[_17726 + 32]
                            mem[mem[64] + 36] = _16156
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16156
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18327 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _17899 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_18327 + 32] + _17899 < _17899:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_18327 + 32] + _17899 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_18327 + 32] + _17899 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17642 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _17813 = mem[_17642]
                        if mem[_17642] + _16156 < _16156:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = 70 * _14341 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14341 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18704 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _18886 = mem[_18704 + 32]
                        mem[mem[64] + 36] = _17813 + _16156
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17813 + _16156
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19314 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _18886 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19314 + 32] + _18886 < _18886:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19314 + 32] + _18886 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_19314 + 32] + _18886 + s
                        continue 
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) != 3:
                        mem[mem[64] + 36] = 70 * _14341 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14341 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17115 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _17277 = mem[_17115 + 32]
                        mem[mem[64] + 36] = _16156
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16156
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17727 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _17277 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17727 + 32] + _17277 < _17277:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17727 + 32] + _17277 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_17727 + 32] + _17277 + s
                        continue 
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16800 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_16800] == mem[_16800 + 12 len 20]
                    if not mem[_16800 + 12 len 20]:
                        mem[mem[64] + 36] = 70 * _14341 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14341 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17902 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _18068 = mem[_17902 + 32]
                        mem[mem[64] + 36] = _16156
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16156
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18520 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _18068 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18520 + 32] + _18068 < _18068:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18520 + 32] + _18068 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_18520 + 32] + _18068 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17814 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _17981 = mem[_17814]
                    if mem[_17814] + _16156 < _16156:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 70 * _14341 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14341 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18887 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _19060 = mem[_18887 + 32]
                    mem[mem[64] + 36] = _17981 + _16156
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17981 + _16156
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19491 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _19060 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19491 + 32] + _19060 < _19060:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19491 + 32] + _19060 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_19491 + 32] + _19060 + s
                    continue 
                if 30 * 70 * _14341 / 100 / 70 * _14341 / 100 != 30:
                    revert with 0, 'SafeMath: multiplication overflow'
                _15581 = mem[64]
                mem[64] = mem[64] + 64
                mem[_15581] = 26
                mem[_15581 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = 30 * 70 * _14341 / 100 / 100
                require ext_code.size(address(_15108))
                staticcall address(_15108).0xb20bd1ee with:
                        gas gas_remaining wei
                       args (30 * 70 * _14341 / 100 / 100)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16099 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _16224 = mem[_16099]
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) == 2:
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16716 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_16716] == mem[_16716 + 12 len 20]
                    if not mem[_16716 + 12 len 20]:
                        mem[mem[64] + 36] = 70 * _14341 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14341 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17810 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _17976 = mem[_17810 + 32]
                        mem[mem[64] + 36] = _16224
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16224
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18419 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _17976 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18419 + 32] + _17976 < _17976:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18419 + 32] + _17976 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_18419 + 32] + _17976 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17724 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _17896 = mem[_17724]
                    if mem[_17724] + _16224 < _16224:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 70 * _14341 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14341 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18798 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _18971 = mem[_18798 + 32]
                    mem[mem[64] + 36] = _17896 + _16224
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17896 + _16224
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19406 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _18971 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19406 + 32] + _18971 < _18971:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19406 + 32] + _18971 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_19406 + 32] + _18971 + s
                    continue 
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) != 3:
                    mem[mem[64] + 36] = 70 * _14341 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14341 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17192 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _17363 = mem[_17192 + 32]
                    mem[mem[64] + 36] = _16224
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16224
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17811 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _17363 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_17811 + 32] + _17363 < _17363:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_17811 + 32] + _17363 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_17811 + 32] + _17363 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16876 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_16876] == mem[_16876 + 12 len 20]
                if not mem[_16876 + 12 len 20]:
                    mem[mem[64] + 36] = 70 * _14341 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14341 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17979 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _18145 = mem[_17979 + 32]
                    mem[mem[64] + 36] = _16224
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16224
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18614 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _18145 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18614 + 32] + _18145 < _18145:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18614 + 32] + _18145 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_18614 + 32] + _18145 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _17897 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _18065 = mem[_17897]
                if mem[_17897] + _16224 < _16224:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = 70 * _14341 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14341 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18972 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _19140 = mem[_18972 + 32]
                mem[mem[64] + 36] = _18065 + _16224
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18065 + _16224
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19576 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _19140 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_19576 + 32] + _19140 < _19140:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_19576 + 32] + _19140 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_19576 + 32] + _19140 + s
                continue 
            require uint8(poolTypes[address(_14079)]) <= 6
            if uint8(poolTypes[address(_14079)]) == 3:
                mem[mem[64] + 4] = address(cd[4])
                require ext_code.size(address(_14079))
                staticcall address(_14079).earned(address rg1) with:
                        gas gas_remaining wei
                       args address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14256 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _14284 = mem[_14256]
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x72f702f3 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14325 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_14325] == mem[_14325 + 12 len 20]
                mem[mem[64] + 4] = mem[_14325 + 12 len 20]
                mem[mem[64] + 36] = _14284
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], _14284
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14501 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _14546 = mem[_14501]
                mem[0] = address(_14079)
                mem[32] = 102
                if stor102[address(_14079)]:
                    mem[mem[64] + 36] = _14546
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14546
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14784 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _14851 = mem[_14784 + 32]
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15013 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _14851 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_15013 + 32] + _14851 < _14851:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_15013 + 32] + _14851 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_15013 + 32] + _14851 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).minter() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14720 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_14720] == mem[_14720 + 12 len 20]
                if not mem[_14720 + 12 len 20]:
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) == 2:
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15140 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_15140] == mem[_15140 + 12 len 20]
                        if not mem[_15140 + 12 len 20]:
                            mem[mem[64] + 36] = _14546
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14546
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15784 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _15902 = mem[_15784 + 32]
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16207 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _15902 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_16207 + 32] + _15902 < _15902:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_16207 + 32] + _15902 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_16207 + 32] + _15902 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15726 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _15837 = mem[_15726]
                        if mem[_15726] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = _14546
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14546
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16465 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _16621 = mem[_16465 + 32]
                        mem[mem[64] + 36] = _15837
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15837
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17016 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _16621 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17016 + 32] + _16621 < _16621:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17016 + 32] + _16621 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_17016 + 32] + _16621 + s
                        continue 
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) != 3:
                        mem[mem[64] + 36] = _14546
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14546
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15415 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _15516 = mem[_15415 + 32]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15785 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _15516 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15785 + 32] + _15516 < _15516:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15785 + 32] + _15516 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_15785 + 32] + _15516 + s
                        continue 
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15234 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_15234] == mem[_15234 + 12 len 20]
                    if not mem[_15234 + 12 len 20]:
                        mem[mem[64] + 36] = _14546
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14546
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15905 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _16017 = mem[_15905 + 32]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16334 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _16017 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16334 + 32] + _16017 < _16017:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16334 + 32] + _16017 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_16334 + 32] + _16017 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15838 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _15960 = mem[_15838]
                    if mem[_15838] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = _14546
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14546
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16622 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _16783 = mem[_16622 + 32]
                    mem[mem[64] + 36] = _15960
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15960
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17177 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _16783 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_17177 + 32] + _16783 < _16783:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_17177 + 32] + _16783 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_17177 + 32] + _16783 + s
                    continue 
                if not _14546:
                    _15143 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15143] = 26
                    mem[_15143 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).minter() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15468 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _15571 = mem[_15468]
                    require mem[_15468] == mem[_15468 + 12 len 20]
                    _16089 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16089] = 26
                    mem[_16089 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = 0
                    require ext_code.size(address(_15571))
                    staticcall address(_15571).0xb20bd1ee with:
                            gas gas_remaining wei
                           args 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16702 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _16859 = mem[_16702]
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) == 2:
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17438 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_17438] == mem[_17438 + 12 len 20]
                        if not mem[_17438 + 12 len 20]:
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18593 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _18780 = mem[_18593 + 32]
                            mem[mem[64] + 36] = _16859
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16859
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _19214 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _18780 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_19214 + 32] + _18780 < _18780:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_19214 + 32] + _18780 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_19214 + 32] + _18780 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18499 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _18687 = mem[_18499]
                        if mem[_18499] + _16859 < _16859:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19555 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _19717 = mem[_19555 + 32]
                        mem[mem[64] + 36] = _18687 + _16859
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18687 + _16859
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _20062 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _19717 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_20062 + 32] + _19717 < _19717:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_20062 + 32] + _19717 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_20062 + 32] + _19717 + s
                        continue 
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) != 3:
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17959 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _18129 = mem[_17959 + 32]
                        mem[mem[64] + 36] = _16859
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16859
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18594 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _18129 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18594 + 32] + _18129 < _18129:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18594 + 32] + _18129 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_18594 + 32] + _18129 + s
                        continue 
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17623 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_17623] == mem[_17623 + 12 len 20]
                    if not mem[_17623 + 12 len 20]:
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18783 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _18955 = mem[_18783 + 32]
                        mem[mem[64] + 36] = _16859
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16859
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19391 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _18955 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19391 + 32] + _18955 < _18955:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19391 + 32] + _18955 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_19391 + 32] + _18955 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18688 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _18871 = mem[_18688]
                    if mem[_18688] + _16859 < _16859:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19718 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _19866 = mem[_19718 + 32]
                    mem[mem[64] + 36] = _18871 + _16859
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18871 + _16859
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20195 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _19866 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20195 + 32] + _19866 < _19866:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20195 + 32] + _19866 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_20195 + 32] + _19866 + s
                    continue 
                if 70 * _14546 / _14546 != 70:
                    revert with 0, 'SafeMath: multiplication overflow'
                _15183 = mem[64]
                mem[64] = mem[64] + 64
                mem[_15183] = 26
                mem[_15183 + 32] = 'SafeMath: division by zero'
                require ext_code.size(address(_14079))
                staticcall address(_14079).minter() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15517 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _15619 = mem[_15517]
                require mem[_15517] == mem[_15517 + 12 len 20]
                if not 70 * _14546 / 100:
                    _16144 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16144] = 26
                    mem[_16144 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = 0
                    require ext_code.size(address(_15619))
                    staticcall address(_15619).0xb20bd1ee with:
                            gas gas_remaining wei
                           args 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16784 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _16940 = mem[_16784]
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) == 2:
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17523 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_17523] == mem[_17523 + 12 len 20]
                        if not mem[_17523 + 12 len 20]:
                            mem[mem[64] + 36] = 70 * _14546 / 100
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14546 / 100
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18684 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _18866 = mem[_18684 + 32]
                            mem[mem[64] + 36] = _16940
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16940
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _19295 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _18866 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_19295 + 32] + _18866 < _18866:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_19295 + 32] + _18866 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_19295 + 32] + _18866 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18591 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _18777 = mem[_18591]
                        if mem[_18591] + _16940 < _16940:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = 70 * _14546 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14546 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19636 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _19791 = mem[_19636 + 32]
                        mem[mem[64] + 36] = _18777 + _16940
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18777 + _16940
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _20128 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _19791 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_20128 + 32] + _19791 < _19791:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_20128 + 32] + _19791 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_20128 + 32] + _19791 + s
                        continue 
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) != 3:
                        mem[mem[64] + 36] = 70 * _14546 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14546 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18049 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _18223 = mem[_18049 + 32]
                        mem[mem[64] + 36] = _16940
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16940
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18685 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _18223 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18685 + 32] + _18223 < _18223:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18685 + 32] + _18223 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_18685 + 32] + _18223 + s
                        continue 
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17710 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_17710] == mem[_17710 + 12 len 20]
                    if not mem[_17710 + 12 len 20]:
                        mem[mem[64] + 36] = 70 * _14546 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14546 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18869 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _19038 = mem[_18869 + 32]
                        mem[mem[64] + 36] = _16940
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16940
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19474 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _19038 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19474 + 32] + _19038 < _19038:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19474 + 32] + _19038 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_19474 + 32] + _19038 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18778 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _18952 = mem[_18778]
                    if mem[_18778] + _16940 < _16940:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 70 * _14546 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14546 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19792 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _19931 = mem[_19792 + 32]
                    mem[mem[64] + 36] = _18952 + _16940
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18952 + _16940
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20258 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _19931 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20258 + 32] + _19931 < _19931:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20258 + 32] + _19931 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_20258 + 32] + _19931 + s
                    continue 
                if 30 * 70 * _14546 / 100 / 70 * _14546 / 100 != 30:
                    revert with 0, 'SafeMath: multiplication overflow'
                _16211 = mem[64]
                mem[64] = mem[64] + 64
                mem[_16211] = 26
                mem[_16211 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = 30 * 70 * _14546 / 100 / 100
                require ext_code.size(address(_15619))
                staticcall address(_15619).0xb20bd1ee with:
                        gas gas_remaining wei
                       args (30 * 70 * _14546 / 100 / 100)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16858 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _17018 = mem[_16858]
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) == 2:
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17618 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_17618] == mem[_17618 + 12 len 20]
                    if not mem[_17618 + 12 len 20]:
                        mem[mem[64] + 36] = 70 * _14546 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14546 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18774 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _18947 = mem[_18774 + 32]
                        mem[mem[64] + 36] = _17018
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17018
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19382 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _18947 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19382 + 32] + _18947 < _18947:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19382 + 32] + _18947 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_19382 + 32] + _18947 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18682 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _18863 = mem[_18682]
                    if mem[_18682] + _17018 < _17018:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 70 * _14546 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14546 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19710 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _19858 = mem[_19710 + 32]
                    mem[mem[64] + 36] = _18863 + _17018
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18863 + _17018
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20189 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _19858 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20189 + 32] + _19858 < _19858:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20189 + 32] + _19858 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_20189 + 32] + _19858 + s
                    continue 
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) != 3:
                    mem[mem[64] + 36] = 70 * _14546 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14546 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18126 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _18309 = mem[_18126 + 32]
                    mem[mem[64] + 36] = _17018
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17018
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18775 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _18309 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18775 + 32] + _18309 < _18309:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18775 + 32] + _18309 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_18775 + 32] + _18309 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _17792 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_17792] == mem[_17792 + 12 len 20]
                if not mem[_17792 + 12 len 20]:
                    mem[mem[64] + 36] = 70 * _14546 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14546 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18950 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _19118 = mem[_18950 + 32]
                    mem[mem[64] + 36] = _17018
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17018
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19552 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _19118 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19552 + 32] + _19118 < _19118:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19552 + 32] + _19118 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_19552 + 32] + _19118 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18864 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _19035 = mem[_18864]
                if mem[_18864] + _17018 < _17018:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = 70 * _14546 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14546 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19859 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _19995 = mem[_19859 + 32]
                mem[mem[64] + 36] = _19035 + _17018
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _19035 + _17018
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20313 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _19995 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20313 + 32] + _19995 < _19995:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20313 + 32] + _19995 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_20313 + 32] + _19995 + s
                continue 
            require uint8(poolTypes[address(_14079)]) <= 6
            if uint8(poolTypes[address(_14079)]) != 1:
                mem[0] = address(_14079)
                mem[32] = 102
                if stor102[address(_14079)]:
                    mem[mem[64] + 36] = _14161
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14161
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14312 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _14340 = mem[_14312 + 32]
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14420 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _14340 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_14420 + 32] + _14340 < _14340:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_14420 + 32] + _14340 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_14420 + 32] + _14340 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).minter() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14286 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_14286] == mem[_14286 + 12 len 20]
                if not mem[_14286 + 12 len 20]:
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) == 2:
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14483 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_14483] == mem[_14483 + 12 len 20]
                        if not mem[_14483 + 12 len 20]:
                            mem[mem[64] + 36] = _14161
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14161
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14852 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _14907 = mem[_14852 + 32]
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15098 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _14907 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_15098 + 32] + _14907 < _14907:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_15098 + 32] + _14907 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_15098 + 32] + _14907 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14813 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _14879 = mem[_14813]
                        if mem[_14813] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = _14161
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14161
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15272 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _15373 = mem[_15272 + 32]
                        mem[mem[64] + 36] = _14879
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _14879
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15620 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _15373 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15620 + 32] + _15373 < _15373:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15620 + 32] + _15373 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_15620 + 32] + _15373 + s
                        continue 
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) != 3:
                        mem[mem[64] + 36] = _14161
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14161
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14622 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _14684 = mem[_14622 + 32]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14853 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _14684 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_14853 + 32] + _14684 < _14684:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_14853 + 32] + _14684 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_14853 + 32] + _14684 + s
                        continue 
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14527 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_14527] == mem[_14527 + 12 len 20]
                    if not mem[_14527 + 12 len 20]:
                        mem[mem[64] + 36] = _14161
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14161
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14910 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _14978 = mem[_14910 + 32]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15188 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _14978 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15188 + 32] + _14978 < _14978:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15188 + 32] + _14978 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_15188 + 32] + _14978 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14880 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14948 = mem[_14880]
                    if mem[_14880] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = _14161
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14161
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15374 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _15471 = mem[_15374 + 32]
                    mem[mem[64] + 36] = _14948
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _14948
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15730 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _15471 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_15730 + 32] + _15471 < _15471:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_15730 + 32] + _15471 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_15730 + 32] + _15471 + s
                    continue 
                if not _14161:
                    _14486 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14486] = 26
                    mem[_14486 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).minter() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14661 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14724 = mem[_14661]
                    require mem[_14661] == mem[_14661 + 12 len 20]
                    _15019 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15019] = 26
                    mem[_15019 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = 0
                    require ext_code.size(address(_14724))
                    staticcall address(_14724).0xb20bd1ee with:
                            gas gas_remaining wei
                           args 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15423 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _15522 = mem[_15423]
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) == 2:
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15910 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_15910] == mem[_15910 + 12 len 20]
                        if not mem[_15910 + 12 len 20]:
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16790 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _16947 = mem[_16790 + 32]
                            mem[mem[64] + 36] = _15522
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15522
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17352 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _16947 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_17352 + 32] + _16947 < _16947:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_17352 + 32] + _16947 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_17352 + 32] + _16947 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16708 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16865 = mem[_16708]
                        if mem[_16708] + _15522 < _15522:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17717 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _17890 = mem[_17717 + 32]
                        mem[mem[64] + 36] = _16865 + _15522
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16865 + _15522
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18319 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _17890 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18319 + 32] + _17890 < _17890:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18319 + 32] + _17890 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_18319 + 32] + _17890 + s
                        continue 
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) != 3:
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16272 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _16404 = mem[_16272 + 32]
                        mem[mem[64] + 36] = _15522
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15522
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16791 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _16404 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16791 + 32] + _16404 < _16404:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16791 + 32] + _16404 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_16791 + 32] + _16404 + s
                        continue 
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16025 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_16025] == mem[_16025 + 12 len 20]
                    if not mem[_16025 + 12 len 20]:
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16950 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _17109 = mem[_16950 + 32]
                        mem[mem[64] + 36] = _15522
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15522
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17535 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _17109 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17535 + 32] + _17109 < _17109:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17535 + 32] + _17109 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_17535 + 32] + _17109 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16866 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _17028 = mem[_16866]
                    if mem[_16866] + _15522 < _15522:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17891 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _18059 = mem[_17891 + 32]
                    mem[mem[64] + 36] = _17028 + _15522
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17028 + _15522
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18507 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _18059 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18507 + 32] + _18059 < _18059:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18507 + 32] + _18059 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_18507 + 32] + _18059 + s
                    continue 
                if 70 * _14161 / _14161 != 70:
                    revert with 0, 'SafeMath: multiplication overflow'
                _14502 = mem[64]
                mem[64] = mem[64] + 64
                mem[_14502] = 26
                mem[_14502 + 32] = 'SafeMath: division by zero'
                require ext_code.size(address(_14079))
                staticcall address(_14079).minter() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14685 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _14752 = mem[_14685]
                require mem[_14685] == mem[_14685 + 12 len 20]
                if not 70 * _14161 / 100:
                    _15055 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15055] = 26
                    mem[_15055 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = 0
                    require ext_code.size(address(_14752))
                    staticcall address(_14752).0xb20bd1ee with:
                            gas gas_remaining wei
                           args 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15472 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _15574 = mem[_15472]
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) == 2:
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15961 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_15961] == mem[_15961 + 12 len 20]
                        if not mem[_15961 + 12 len 20]:
                            mem[mem[64] + 36] = 70 * _14161 / 100
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14161 / 100
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16862 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _17023 = mem[_16862 + 32]
                            mem[mem[64] + 36] = _15574
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15574
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17443 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _17023 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_17443 + 32] + _17023 < _17023:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_17443 + 32] + _17023 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_17443 + 32] + _17023 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16788 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16944 = mem[_16788]
                        if mem[_16788] + _15574 < _15574:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = 70 * _14161 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14161 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17796 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _17963 = mem[_17796 + 32]
                        mem[mem[64] + 36] = _16944 + _15574
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16944 + _15574
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18408 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _17963 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18408 + 32] + _17963 < _17963:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18408 + 32] + _17963 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_18408 + 32] + _17963 + s
                        continue 
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) != 3:
                        mem[mem[64] + 36] = 70 * _14161 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14161 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16338 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _16474 = mem[_16338 + 32]
                        mem[mem[64] + 36] = _15574
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15574
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16863 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _16474 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16863 + 32] + _16474 < _16474:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16863 + 32] + _16474 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_16863 + 32] + _16474 + s
                        continue 
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16093 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_16093] == mem[_16093 + 12 len 20]
                    if not mem[_16093 + 12 len 20]:
                        mem[mem[64] + 36] = 70 * _14161 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14161 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17026 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _17184 = mem[_17026 + 32]
                        mem[mem[64] + 36] = _15574
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15574
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17629 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _17184 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17629 + 32] + _17184 < _17184:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17629 + 32] + _17184 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_17629 + 32] + _17184 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16945 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _17106 = mem[_16945]
                    if mem[_16945] + _15574 < _15574:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 70 * _14161 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14161 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17964 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _18136 = mem[_17964 + 32]
                    mem[mem[64] + 36] = _17106 + _15574
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17106 + _15574
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18600 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _18136 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18600 + 32] + _18136 < _18136:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18600 + 32] + _18136 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_18600 + 32] + _18136 + s
                    continue 
                if 30 * 70 * _14161 / 100 / 70 * _14161 / 100 != 30:
                    revert with 0, 'SafeMath: multiplication overflow'
                _15102 = mem[64]
                mem[64] = mem[64] + 64
                mem[_15102] = 26
                mem[_15102 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = 30 * 70 * _14161 / 100 / 100
                require ext_code.size(address(_14752))
                staticcall address(_14752).0xb20bd1ee with:
                        gas gas_remaining wei
                       args (30 * 70 * _14161 / 100 / 100)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15521 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _15622 = mem[_15521]
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) == 2:
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16020 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_16020] == mem[_16020 + 12 len 20]
                    if not mem[_16020 + 12 len 20]:
                        mem[mem[64] + 36] = 70 * _14161 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14161 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16941 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _17101 = mem[_16941 + 32]
                        mem[mem[64] + 36] = _15622
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15622
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17526 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _17101 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17526 + 32] + _17101 < _17101:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17526 + 32] + _17101 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_17526 + 32] + _17101 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16860 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _17020 = mem[_16860]
                    if mem[_16860] + _15622 < _15622:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 70 * _14161 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14161 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17883 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _18051 = mem[_17883 + 32]
                    mem[mem[64] + 36] = _17020 + _15622
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17020 + _15622
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18501 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _18051 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18501 + 32] + _18051 < _18051:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18501 + 32] + _18051 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_18501 + 32] + _18051 + s
                    continue 
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) != 3:
                    mem[mem[64] + 36] = 70 * _14161 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14161 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16401 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _16554 = mem[_16401 + 32]
                    mem[mem[64] + 36] = _15622
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15622
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16942 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _16554 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_16942 + 32] + _16554 < _16554:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_16942 + 32] + _16554 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_16942 + 32] + _16554 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16148 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_16148] == mem[_16148 + 12 len 20]
                if not mem[_16148 + 12 len 20]:
                    mem[mem[64] + 36] = 70 * _14161 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14161 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17104 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _17264 = mem[_17104 + 32]
                    mem[mem[64] + 36] = _15622
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15622
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17714 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _17264 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_17714 + 32] + _17264 < _17264:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_17714 + 32] + _17264 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_17714 + 32] + _17264 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _17021 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _17181 = mem[_17021]
                if mem[_17021] + _15622 < _15622:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = 70 * _14161 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14161 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18052 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _18228 = mem[_18052 + 32]
                mem[mem[64] + 36] = _17181 + _15622
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17181 + _15622
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18691 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _18228 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_18691 + 32] + _18228 < _18228:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_18691 + 32] + _18228 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_18691 + 32] + _18228 + s
                continue 
            mem[mem[64] + 4] = address(cd[4])
            require ext_code.size(address(_14079))
            staticcall address(_14079).earned(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _14287 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _14314 = mem[_14287]
            require ext_code.size(address(_14079))
            staticcall address(_14079).0x72f702f3 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _14357 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_14357] == mem[_14357 + 12 len 20]
            mem[mem[64] + 4] = mem[_14357 + 12 len 20]
            mem[mem[64] + 36] = _14314
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], _14314
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _14548 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _14595 = mem[_14548]
            mem[0] = address(_14079)
            mem[32] = 102
            if stor102[address(_14079)]:
                mem[mem[64] + 36] = _14595
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14595
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14855 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _14912 = mem[_14855 + 32]
                mem[mem[64] + 36] = 0
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15104 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _14912 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_15104 + 32] + _14912 < _14912:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_15104 + 32] + _14912 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_15104 + 32] + _14912 + s
                continue 
            require ext_code.size(address(_14079))
            staticcall address(_14079).minter() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _14791 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_14791] == mem[_14791 + 12 len 20]
            if not mem[_14791 + 12 len 20]:
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) == 2:
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15237 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_15237] == mem[_15237 + 12 len 20]
                    if not mem[_15237 + 12 len 20]:
                        mem[mem[64] + 36] = _14595
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14595
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15913 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _16027 = mem[_15913 + 32]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16339 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _16027 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16339 + 32] + _16027 < _16027:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16339 + 32] + _16027 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_16339 + 32] + _16027 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15844 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _15964 = mem[_15844]
                    if mem[_15844] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = _14595
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14595
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16632 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _16794 = mem[_16632 + 32]
                    mem[mem[64] + 36] = _15964
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15964
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17188 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _16794 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_17188 + 32] + _16794 < _16794:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_17188 + 32] + _16794 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_17188 + 32] + _16794 + s
                    continue 
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) != 3:
                    mem[mem[64] + 36] = _14595
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14595
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15523 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _15626 = mem[_15523 + 32]
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15914 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _15626 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_15914 + 32] + _15626 < _15626:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_15914 + 32] + _15626 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_15914 + 32] + _15626 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15328 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_15328] == mem[_15328 + 12 len 20]
                if not mem[_15328 + 12 len 20]:
                    mem[mem[64] + 36] = _14595
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14595
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16030 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _16153 = mem[_16030 + 32]
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16480 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _16153 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_16480 + 32] + _16153 < _16153:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_16480 + 32] + _16153 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_16480 + 32] + _16153 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15965 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _16095 = mem[_15965]
                if mem[_15965] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = _14595
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14595
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16795 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _16953 = mem[_16795 + 32]
                mem[mem[64] + 36] = _16095
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16095
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _17358 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _16953 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_17358 + 32] + _16953 < _16953:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_17358 + 32] + _16953 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_17358 + 32] + _16953 + s
                continue 
            if not _14595:
                _15240 = mem[64]
                mem[64] = mem[64] + 64
                mem[_15240] = 26
                mem[_15240 + 32] = 'SafeMath: division by zero'
                require ext_code.size(address(_14079))
                staticcall address(_14079).minter() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15576 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _15683 = mem[_15576]
                require mem[_15576] == mem[_15576 + 12 len 20]
                _16221 = mem[64]
                mem[64] = mem[64] + 64
                mem[_16221] = 26
                mem[_16221 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = 0
                require ext_code.size(address(_15683))
                staticcall address(_15683).0xb20bd1ee with:
                        gas gas_remaining wei
                       args 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16872 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _17033 = mem[_16872]
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) == 2:
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17636 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_17636] == mem[_17636 + 12 len 20]
                    if not mem[_17636 + 12 len 20]:
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18795 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _18966 = mem[_18795 + 32]
                        mem[mem[64] + 36] = _17033
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17033
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19402 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _18966 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19402 + 32] + _18966 < _18966:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19402 + 32] + _18966 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_19402 + 32] + _18966 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18701 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _18881 = mem[_18701]
                    if mem[_18701] + _17033 < _17033:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19728 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _19875 = mem[_19728 + 32]
                    mem[mem[64] + 36] = _18881 + _17033
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18881 + _17033
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20201 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _19875 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20201 + 32] + _19875 < _19875:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20201 + 32] + _19875 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_20201 + 32] + _19875 + s
                    continue 
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) != 3:
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18142 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _18324 = mem[_18142 + 32]
                    mem[mem[64] + 36] = _17033
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17033
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18796 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _18324 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18796 + 32] + _18324 < _18324:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18796 + 32] + _18324 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_18796 + 32] + _18324 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _17809 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_17809] == mem[_17809 + 12 len 20]
                if not mem[_17809 + 12 len 20]:
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18969 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _19137 = mem[_18969 + 32]
                    mem[mem[64] + 36] = _17033
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17033
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19572 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _19137 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19572 + 32] + _19137 < _19137:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19572 + 32] + _19137 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_19572 + 32] + _19137 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18882 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _19053 = mem[_18882]
                if mem[_18882] + _17033 < _17033:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = 0
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19876 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _20010 = mem[_19876 + 32]
                mem[mem[64] + 36] = _19053 + _17033
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _19053 + _17033
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20324 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _20010 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20324 + 32] + _20010 < _20010:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20324 + 32] + _20010 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_20324 + 32] + _20010 + s
                continue 
            if 70 * _14595 / _14595 != 70:
                revert with 0, 'SafeMath: multiplication overflow'
            _15277 = mem[64]
            mem[64] = mem[64] + 64
            mem[_15277] = 26
            mem[_15277 + 32] = 'SafeMath: division by zero'
            require ext_code.size(address(_14079))
            staticcall address(_14079).minter() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _15627 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _15735 = mem[_15627]
            require mem[_15627] == mem[_15627 + 12 len 20]
            if not 70 * _14595 / 100:
                _16275 = mem[64]
                mem[64] = mem[64] + 64
                mem[_16275] = 26
                mem[_16275 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = 0
                require ext_code.size(address(_15735))
                staticcall address(_15735).0xb20bd1ee with:
                        gas gas_remaining wei
                       args 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16954 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _17112 = mem[_16954]
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) == 2:
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17721 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_17721] == mem[_17721 + 12 len 20]
                    if not mem[_17721 + 12 len 20]:
                        mem[mem[64] + 36] = 70 * _14595 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14595 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18878 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _19048 = mem[_18878 + 32]
                        mem[mem[64] + 36] = _17112
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17112
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19481 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _19048 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19481 + 32] + _19048 < _19048:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19481 + 32] + _19048 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_19481 + 32] + _19048 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18793 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _18963 = mem[_18793]
                    if mem[_18793] + _17112 < _17112:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 70 * _14595 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14595 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19799 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _19938 = mem[_19799 + 32]
                    mem[mem[64] + 36] = _18963 + _17112
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18963 + _17112
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20263 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _19938 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20263 + 32] + _19938 < _19938:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20263 + 32] + _19938 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_20263 + 32] + _19938 + s
                    continue 
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) != 3:
                    mem[mem[64] + 36] = 70 * _14595 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14595 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18236 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _18416 = mem[_18236 + 32]
                    mem[mem[64] + 36] = _17112
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17112
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18879 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _18416 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18879 + 32] + _18416 < _18416:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18879 + 32] + _18416 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_18879 + 32] + _18416 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _17895 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_17895] == mem[_17895 + 12 len 20]
                if not mem[_17895 + 12 len 20]:
                    mem[mem[64] + 36] = 70 * _14595 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14595 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19051 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _19226 = mem[_19051 + 32]
                    mem[mem[64] + 36] = _17112
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17112
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19649 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _19226 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19649 + 32] + _19226 < _19226:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19649 + 32] + _19226 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_19649 + 32] + _19226 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18964 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _19134 = mem[_18964]
                if mem[_18964] + _17112 < _17112:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = 70 * _14595 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14595 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19939 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _20070 = mem[_19939 + 32]
                mem[mem[64] + 36] = _19134 + _17112
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _19134 + _17112
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20381 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _20070 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20381 + 32] + _20070 < _20070:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20381 + 32] + _20070 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_20381 + 32] + _20070 + s
                continue 
            if 30 * 70 * _14595 / 100 / 70 * _14595 / 100 != 30:
                revert with 0, 'SafeMath: multiplication overflow'
            _16343 = mem[64]
            mem[64] = mem[64] + 64
            mem[_16343] = 26
            mem[_16343 + 32] = 'SafeMath: division by zero'
            mem[mem[64] + 4] = 30 * 70 * _14595 / 100 / 100
            require ext_code.size(address(_15735))
            staticcall address(_15735).0xb20bd1ee with:
                    gas gas_remaining wei
                   args (30 * 70 * _14595 / 100 / 100)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _17032 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _17190 = mem[_17032]
            mem[0] = address(_14079)
            mem[32] = 101
            require uint8(poolTypes[address(_14079)]) <= 6
            if uint8(poolTypes[address(_14079)]) == 2:
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _17804 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_17804] == mem[_17804 + 12 len 20]
                if not mem[_17804 + 12 len 20]:
                    mem[mem[64] + 36] = 70 * _14595 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14595 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18960 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _19129 = mem[_18960 + 32]
                    mem[mem[64] + 36] = _17190
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17190
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19563 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _19129 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19563 + 32] + _19129 < _19129:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19563 + 32] + _19129 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_19563 + 32] + _19129 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18876 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _19045 = mem[_18876]
                if mem[_18876] + _17190 < _17190:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = 70 * _14595 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14595 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19868 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _20002 = mem[_19868 + 32]
                mem[mem[64] + 36] = _19045 + _17190
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _19045 + _17190
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20318 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _20002 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20318 + 32] + _20002 < _20002:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20318 + 32] + _20002 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_20318 + 32] + _20002 + s
                continue 
            mem[0] = address(_14079)
            mem[32] = 101
            require uint8(poolTypes[address(_14079)]) <= 6
            if uint8(poolTypes[address(_14079)]) != 3:
                mem[mem[64] + 36] = 70 * _14595 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14595 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18321 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _18510 = mem[_18321 + 32]
                mem[mem[64] + 36] = _17190
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17190
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18961 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _18510 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_18961 + 32] + _18510 < _18510:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_18961 + 32] + _18510 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_18961 + 32] + _18510 + s
                continue 
            require ext_code.size(address(_14079))
            staticcall address(_14079).0x972313c0 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _17972 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_17972] == mem[_17972 + 12 len 20]
            if not mem[_17972 + 12 len 20]:
                mem[mem[64] + 36] = 70 * _14595 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14595 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19132 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _19306 = mem[_19132 + 32]
                mem[mem[64] + 36] = _17190
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17190
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19725 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _19306 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_19725 + 32] + _19306 < _19306:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_19725 + 32] + _19306 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_19725 + 32] + _19306 + s
                continue 
            mem[mem[64] + 4] = address(_14079)
            mem[mem[64] + 36] = address(cd[4])
            require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
            staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                    gas gas_remaining wei
                   args address(_14079), address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _19046 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _19223 = mem[_19046]
            if mem[_19046] + _17190 < _17190:
                revert with 0, 'SafeMath: addition overflow'
            mem[mem[64] + 36] = 70 * _14595 / 100
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14595 / 100
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _20003 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _20134 = mem[_20003 + 32]
            mem[mem[64] + 36] = _19223 + _17190
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _19223 + _17190
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _20429 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            if _20134 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_20429 + 32] + _20134 < _20134:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_20429 + 32] + _20134 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = mem[_20429 + 32] + _20134 + s
            continue 
        require ext_code.size(address(_14079))
        staticcall address(_14079).0x72f702f3 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _14087 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _14089 = mem[_14087]
        require mem[_14087] == mem[_14087 + 12 len 20]
        mem[mem[64] + 4] = address(cd[4])
        require ext_code.size(address(_14079))
        staticcall address(_14079).0x61e20a1c with:
                gas gas_remaining wei
               args address(cd[4])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _14100 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _14107 = mem[_14100]
        mem[mem[64] + 36] = mem[_14100]
        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args address(_14089), _14107
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _14129 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _14139 = mem[_14129 + 32]
        mem[0] = address(_14079)
        mem[32] = 101
        require uint8(poolTypes[address(_14079)]) <= 6
        if uint8(poolTypes[address(_14079)]):
            require uint8(poolTypes[address(_14079)]) <= 6
            if uint8(poolTypes[address(_14079)]) == 2:
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14191 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _14210 = mem[_14191]
                mem[mem[64] + 36] = mem[_14191]
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _14210
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14273 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _14302 = mem[_14273]
                mem[0] = address(_14079)
                mem[32] = 102
                if stor102[address(_14079)]:
                    mem[mem[64] + 36] = _14302
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14302
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14426 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _14468 = mem[_14426 + 32]
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14575 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _14468 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_14575 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_14575 + 32] + _14468 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_14575 + 32] + _14468 + _14139 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).minter() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14389 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_14389] == mem[_14389 + 12 len 20]
                if not mem[_14389 + 12 len 20]:
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) == 2:
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14666 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_14666] == mem[_14666 + 12 len 20]
                        if not mem[_14666 + 12 len 20]:
                            mem[mem[64] + 36] = _14302
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14302
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15119 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _15206 = mem[_15119 + 32]
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15438 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _15206 + _14139 < _14139:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_15438 + 32] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_15438 + 32] + _15206 + _14139 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_15438 + 32] + _15206 + _14139 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15070 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _15158 = mem[_15070]
                        if mem[_15070] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = _14302
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14302
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15641 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _15752 = mem[_15641 + 32]
                        mem[mem[64] + 36] = _15158
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15158
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16048 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _15752 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16048 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16048 + 32] + _15752 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_16048 + 32] + _15752 + _14139 + s
                        continue 
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) != 3:
                        mem[mem[64] + 36] = _14302
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14302
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14862 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _14926 = mem[_14862 + 32]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15120 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _14926 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15120 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15120 + 32] + _14926 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_15120 + 32] + _14926 + _14139 + s
                        continue 
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14736 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_14736] == mem[_14736 + 12 len 20]
                    if not mem[_14736 + 12 len 20]:
                        mem[mem[64] + 36] = _14302
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14302
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15209 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _15294 = mem[_15209 + 32]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15542 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _15294 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15542 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15542 + 32] + _15294 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_15542 + 32] + _15294 + _14139 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15159 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _15251 = mem[_15159]
                    if mem[_15159] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = _14302
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14302
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15753 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _15865 = mem[_15753 + 32]
                    mem[mem[64] + 36] = _15251
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15251
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16172 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _15865 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_16172 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_16172 + 32] + _15865 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_16172 + 32] + _15865 + _14139 + s
                    continue 
                if not _14302:
                    _14669 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14669] = 26
                    mem[_14669 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).minter() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14888 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14960 = mem[_14888]
                    require mem[_14888] == mem[_14888 + 12 len 20]
                    _15346 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15346] = 26
                    mem[_15346 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = 0
                    require ext_code.size(address(_14960))
                    staticcall address(_14960).0xb20bd1ee with:
                            gas gas_remaining wei
                           args 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15810 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _15932 = mem[_15810]
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) == 2:
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16362 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_16362] == mem[_16362 + 12 len 20]
                        if not mem[_16362 + 12 len 20]:
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17389 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _17571 = mem[_17389 + 32]
                            mem[mem[64] + 36] = _15932
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15932
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18002 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _17571 + _14139 < _14139:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_18002 + 32] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_18002 + 32] + _17571 + _14139 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_18002 + 32] + _17571 + _14139 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17298 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _17478 = mem[_17298]
                        if mem[_17298] + _15932 < _15932:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18357 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _18550 = mem[_18357 + 32]
                        mem[mem[64] + 36] = _17478 + _15932
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17478 + _15932
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19004 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _18550 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19004 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19004 + 32] + _18550 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_19004 + 32] + _18550 + _14139 + s
                        continue 
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) != 3:
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16814 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _16974 = mem[_16814 + 32]
                        mem[mem[64] + 36] = _15932
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15932
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17390 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _16974 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17390 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17390 + 32] + _16974 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_17390 + 32] + _16974 + _14139 + s
                        continue 
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16506 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_16506] == mem[_16506 + 12 len 20]
                    if not mem[_16506 + 12 len 20]:
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17574 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _17753 = mem[_17574 + 32]
                        mem[mem[64] + 36] = _15932
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15932
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18177 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _17753 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18177 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18177 + 32] + _17753 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_18177 + 32] + _17753 + _14139 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17479 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _17666 = mem[_17479]
                    if mem[_17479] + _15932 < _15932:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18551 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _18741 = mem[_18551 + 32]
                    mem[mem[64] + 36] = _17666 + _15932
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17666 + _15932
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19174 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _18741 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19174 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19174 + 32] + _18741 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_19174 + 32] + _18741 + _14139 + s
                    continue 
                if 70 * _14302 / _14302 != 70:
                    revert with 0, 'SafeMath: multiplication overflow'
                _14697 = mem[64]
                mem[64] = mem[64] + 64
                mem[_14697] = 26
                mem[_14697 + 32] = 'SafeMath: division by zero'
                require ext_code.size(address(_14079))
                staticcall address(_14079).minter() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14927 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _14992 = mem[_14927]
                require mem[_14927] == mem[_14927 + 12 len 20]
                if not 70 * _14302 / 100:
                    _15391 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15391] = 26
                    mem[_15391 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = 0
                    require ext_code.size(address(_14992))
                    staticcall address(_14992).0xb20bd1ee with:
                            gas gas_remaining wei
                           args 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15866 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _15983 = mem[_15866]
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) == 2:
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16425 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_16425] == mem[_16425 + 12 len 20]
                        if not mem[_16425 + 12 len 20]:
                            mem[mem[64] + 36] = 70 * _14302 / 100
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14302 / 100
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17475 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _17661 = mem[_17475 + 32]
                            mem[mem[64] + 36] = _15983
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15983
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18087 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _17661 + _14139 < _14139:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_18087 + 32] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_18087 + 32] + _17661 + _14139 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_18087 + 32] + _17661 + _14139 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17387 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _17568 = mem[_17387]
                        if mem[_17387] + _15983 < _15983:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = 70 * _14302 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14302 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18447 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _18640 = mem[_18447 + 32]
                        mem[mem[64] + 36] = _17568 + _15983
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17568 + _15983
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19082 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _18640 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19082 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19082 + 32] + _18640 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_19082 + 32] + _18640 + _14139 + s
                        continue 
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) != 3:
                        mem[mem[64] + 36] = 70 * _14302 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14302 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16890 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _17051 = mem[_16890 + 32]
                        mem[mem[64] + 36] = _15983
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15983
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17476 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _17051 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17476 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17476 + 32] + _17051 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_17476 + 32] + _17051 + _14139 + s
                        continue 
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16582 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_16582] == mem[_16582 + 12 len 20]
                    if not mem[_16582 + 12 len 20]:
                        mem[mem[64] + 36] = 70 * _14302 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14302 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17664 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _17834 = mem[_17664 + 32]
                        mem[mem[64] + 36] = _15983
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15983
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18268 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _17834 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18268 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18268 + 32] + _17834 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_18268 + 32] + _17834 + _14139 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17569 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _17750 = mem[_17569]
                    if mem[_17569] + _15983 < _15983:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 70 * _14302 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14302 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18641 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _18831 = mem[_18641 + 32]
                    mem[mem[64] + 36] = _17750 + _15983
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17750 + _15983
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19257 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _18831 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19257 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19257 + 32] + _18831 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_19257 + 32] + _18831 + _14139 + s
                    continue 
                if 30 * 70 * _14302 / 100 / 70 * _14302 / 100 != 30:
                    revert with 0, 'SafeMath: multiplication overflow'
                _15442 = mem[64]
                mem[64] = mem[64] + 64
                mem[_15442] = 26
                mem[_15442 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = 30 * 70 * _14302 / 100 / 100
                require ext_code.size(address(_14992))
                staticcall address(_14992).0xb20bd1ee with:
                        gas gas_remaining wei
                       args (30 * 70 * _14302 / 100 / 100)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15931 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _16050 = mem[_15931]
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) == 2:
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16501 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_16501] == mem[_16501 + 12 len 20]
                    if not mem[_16501 + 12 len 20]:
                        mem[mem[64] + 36] = 70 * _14302 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14302 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17565 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _17745 = mem[_17565 + 32]
                        mem[mem[64] + 36] = _16050
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16050
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18168 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _17745 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18168 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18168 + 32] + _17745 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_18168 + 32] + _17745 + _14139 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17473 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _17658 = mem[_17473]
                    if mem[_17473] + _16050 < _16050:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 70 * _14302 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14302 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18543 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _18733 = mem[_18543 + 32]
                    mem[mem[64] + 36] = _17658 + _16050
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17658 + _16050
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19168 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _18733 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19168 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19168 + 32] + _18733 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_19168 + 32] + _18733 + _14139 + s
                    continue 
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) != 3:
                    mem[mem[64] + 36] = 70 * _14302 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14302 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16971 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _17132 = mem[_16971 + 32]
                    mem[mem[64] + 36] = _16050
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16050
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17566 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _17132 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_17566 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_17566 + 32] + _17132 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_17566 + 32] + _17132 + _14139 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16656 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_16656] == mem[_16656 + 12 len 20]
                if not mem[_16656 + 12 len 20]:
                    mem[mem[64] + 36] = 70 * _14302 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14302 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17748 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _17917 = mem[_17748 + 32]
                    mem[mem[64] + 36] = _16050
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16050
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18354 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _17917 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18354 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18354 + 32] + _17917 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_18354 + 32] + _17917 + _14139 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _17659 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _17831 = mem[_17659]
                if mem[_17659] + _16050 < _16050:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = 70 * _14302 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14302 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18734 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _18913 = mem[_18734 + 32]
                mem[mem[64] + 36] = _17831 + _16050
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17831 + _16050
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19343 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _18913 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_19343 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_19343 + 32] + _18913 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_19343 + 32] + _18913 + _14139 + s
                continue 
            require uint8(poolTypes[address(_14079)]) <= 6
            if uint8(poolTypes[address(_14079)]) == 3:
                mem[mem[64] + 4] = address(cd[4])
                require ext_code.size(address(_14079))
                staticcall address(_14079).earned(address rg1) with:
                        gas gas_remaining wei
                       args address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14214 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _14238 = mem[_14214]
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x72f702f3 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14289 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_14289] == mem[_14289 + 12 len 20]
                mem[mem[64] + 4] = mem[_14289 + 12 len 20]
                mem[mem[64] + 36] = _14238
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], _14238
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14444 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _14489 = mem[_14444]
                mem[0] = address(_14079)
                mem[32] = 102
                if stor102[address(_14079)]:
                    mem[mem[64] + 36] = _14489
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14489
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14689 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _14758 = mem[_14689 + 32]
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14916 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _14758 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_14916 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_14916 + 32] + _14758 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_14916 + 32] + _14758 + _14139 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).minter() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14626 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_14626] == mem[_14626 + 12 len 20]
                if not mem[_14626 + 12 len 20]:
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) == 2:
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15026 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_15026] == mem[_15026 + 12 len 20]
                        if not mem[_15026 + 12 len 20]:
                            mem[mem[64] + 36] = _14489
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14489
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15630 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _15739 = mem[_15630 + 32]
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16035 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _15739 + _14139 < _14139:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_16035 + 32] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_16035 + 32] + _15739 + _14139 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_16035 + 32] + _15739 + _14139 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15583 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _15689 = mem[_15583]
                        if mem[_15583] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = _14489
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14489
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16279 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _16413 = mem[_16279 + 32]
                        mem[mem[64] + 36] = _15689
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15689
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16801 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _16413 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16801 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16801 + 32] + _16413 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_16801 + 32] + _16413 + _14139 + s
                        continue 
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) != 3:
                        mem[mem[64] + 36] = _14489
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14489
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15281 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _15380 = mem[_15281 + 32]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15631 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _15380 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15631 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15631 + 32] + _15380 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_15631 + 32] + _15380 + _14139 + s
                        continue 
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15112 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_15112] == mem[_15112 + 12 len 20]
                    if not mem[_15112 + 12 len 20]:
                        mem[mem[64] + 36] = _14489
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14489
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15742 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _15852 = mem[_15742 + 32]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16160 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _15852 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16160 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16160 + 32] + _15852 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_16160 + 32] + _15852 + _14139 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15690 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _15802 = mem[_15690]
                    if mem[_15690] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = _14489
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14489
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16414 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _16570 = mem[_16414 + 32]
                    mem[mem[64] + 36] = _15802
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15802
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16961 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _16570 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_16961 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_16961 + 32] + _16570 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_16961 + 32] + _16570 + _14139 + s
                    continue 
                if not _14489:
                    _15029 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15029] = 26
                    mem[_15029 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).minter() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15335 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _15433 = mem[_15335]
                    require mem[_15335] == mem[_15335 + 12 len 20]
                    _15924 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15924] = 26
                    mem[_15924 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = 0
                    require ext_code.size(address(_15433))
                    staticcall address(_15433).0xb20bd1ee with:
                            gas gas_remaining wei
                           args 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16492 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _16644 = mem[_16492]
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) == 2:
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17200 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_17200] == mem[_17200 + 12 len 20]
                        if not mem[_17200 + 12 len 20]:
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18338 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _18529 = mem[_18338 + 32]
                            mem[mem[64] + 36] = _16644
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16644
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18985 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _18529 + _14139 < _14139:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_18985 + 32] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_18985 + 32] + _18529 + _14139 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_18985 + 32] + _18529 + _14139 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18251 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _18435 = mem[_18251]
                        if mem[_18251] + _16644 < _16644:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19324 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _19501 = mem[_19324 + 32]
                        mem[mem[64] + 36] = _18435 + _16644
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18435 + _16644
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19885 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _19501 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19885 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19885 + 32] + _19501 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_19885 + 32] + _19501 + _14139 + s
                        continue 
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) != 3:
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17733 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _17908 = mem[_17733 + 32]
                        mem[mem[64] + 36] = _16644
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16644
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18339 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _17908 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18339 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18339 + 32] + _17908 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_18339 + 32] + _17908 + _14139 + s
                        continue 
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17375 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_17375] == mem[_17375 + 12 len 20]
                    if not mem[_17375 + 12 len 20]:
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18532 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _18719 = mem[_18532 + 32]
                        mem[mem[64] + 36] = _16644
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16644
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19155 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _18719 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19155 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19155 + 32] + _18719 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_19155 + 32] + _18719 + _14139 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18436 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _18629 = mem[_18436]
                    if mem[_18436] + _16644 < _16644:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19502 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _19667 = mem[_19502 + 32]
                    mem[mem[64] + 36] = _18629 + _16644
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18629 + _16644
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20021 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _19667 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20021 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20021 + 32] + _19667 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_20021 + 32] + _19667 + _14139 + s
                    continue 
                if 70 * _14489 / _14489 != 70:
                    revert with 0, 'SafeMath: multiplication overflow'
                _15060 = mem[64]
                mem[64] = mem[64] + 64
                mem[_15060] = 26
                mem[_15060 + 32] = 'SafeMath: division by zero'
                require ext_code.size(address(_14079))
                staticcall address(_14079).minter() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15381 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _15483 = mem[_15381]
                require mem[_15381] == mem[_15381 + 12 len 20]
                if not 70 * _14489 / 100:
                    _15974 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15974] = 26
                    mem[_15974 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = 0
                    require ext_code.size(address(_15483))
                    staticcall address(_15483).0xb20bd1ee with:
                            gas gas_remaining wei
                           args 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16571 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _16724 = mem[_16571]
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) == 2:
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17280 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_17280] == mem[_17280 + 12 len 20]
                        if not mem[_17280 + 12 len 20]:
                            mem[mem[64] + 36] = 70 * _14489 / 100
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14489 / 100
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18432 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _18624 = mem[_18432 + 32]
                            mem[mem[64] + 36] = _16724
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16724
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _19066 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _18624 + _14139 < _14139:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_19066 + 32] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_19066 + 32] + _18624 + _14139 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_19066 + 32] + _18624 + _14139 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18336 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _18526 = mem[_18336]
                        if mem[_18336] + _16724 < _16724:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = 70 * _14489 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14489 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19414 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _19584 = mem[_19414 + 32]
                        mem[mem[64] + 36] = _18526 + _16724
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18526 + _16724
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19950 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _19584 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19950 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19950 + 32] + _19584 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_19950 + 32] + _19584 + _14139 + s
                        continue 
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) != 3:
                        mem[mem[64] + 36] = 70 * _14489 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14489 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17822 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _17989 = mem[_17822 + 32]
                        mem[mem[64] + 36] = _16724
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16724
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18433 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _17989 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18433 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_18433 + 32] + _17989 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_18433 + 32] + _17989 + _14139 + s
                        continue 
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17465 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_17465] == mem[_17465 + 12 len 20]
                    if not mem[_17465 + 12 len 20]:
                        mem[mem[64] + 36] = 70 * _14489 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14489 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18627 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _18811 = mem[_18627 + 32]
                        mem[mem[64] + 36] = _16724
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16724
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19242 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _18811 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19242 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19242 + 32] + _18811 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_19242 + 32] + _18811 + _14139 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18527 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _18716 = mem[_18527]
                    if mem[_18527] + _16724 < _16724:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 70 * _14489 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14489 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19585 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _19742 = mem[_19585 + 32]
                    mem[mem[64] + 36] = _18716 + _16724
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18716 + _16724
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20081 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _19742 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20081 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20081 + 32] + _19742 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_20081 + 32] + _19742 + _14139 + s
                    continue 
                if 30 * 70 * _14489 / 100 / 70 * _14489 / 100 != 30:
                    revert with 0, 'SafeMath: multiplication overflow'
                _16039 = mem[64]
                mem[64] = mem[64] + 64
                mem[_16039] = 26
                mem[_16039 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = 30 * 70 * _14489 / 100 / 100
                require ext_code.size(address(_15483))
                staticcall address(_15483).0xb20bd1ee with:
                        gas gas_remaining wei
                       args (30 * 70 * _14489 / 100 / 100)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16643 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _16803 = mem[_16643]
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) == 2:
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17370 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_17370] == mem[_17370 + 12 len 20]
                    if not mem[_17370 + 12 len 20]:
                        mem[mem[64] + 36] = 70 * _14489 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14489 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18523 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _18711 = mem[_18523 + 32]
                        mem[mem[64] + 36] = _16803
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16803
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19146 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _18711 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19146 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19146 + 32] + _18711 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_19146 + 32] + _18711 + _14139 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18430 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _18621 = mem[_18430]
                    if mem[_18430] + _16803 < _16803:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 70 * _14489 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14489 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19494 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _19659 = mem[_19494 + 32]
                    mem[mem[64] + 36] = _18621 + _16803
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18621 + _16803
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20015 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _19659 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20015 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20015 + 32] + _19659 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_20015 + 32] + _19659 + _14139 + s
                    continue 
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) != 3:
                    mem[mem[64] + 36] = 70 * _14489 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14489 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17905 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _18074 = mem[_17905 + 32]
                    mem[mem[64] + 36] = _16803
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16803
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18524 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _18074 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18524 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18524 + 32] + _18074 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_18524 + 32] + _18074 + _14139 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _17552 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_17552] == mem[_17552 + 12 len 20]
                if not mem[_17552 + 12 len 20]:
                    mem[mem[64] + 36] = 70 * _14489 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14489 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18714 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _18894 = mem[_18714 + 32]
                    mem[mem[64] + 36] = _16803
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16803
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19321 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _18894 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19321 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19321 + 32] + _18894 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_19321 + 32] + _18894 + _14139 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18622 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _18808 = mem[_18622]
                if mem[_18622] + _16803 < _16803:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = 70 * _14489 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14489 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19660 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _19811 = mem[_19660 + 32]
                mem[mem[64] + 36] = _18808 + _16803
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18808 + _16803
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20146 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _19811 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20146 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20146 + 32] + _19811 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_20146 + 32] + _19811 + _14139 + s
                continue 
            require uint8(poolTypes[address(_14079)]) <= 6
            if uint8(poolTypes[address(_14079)]) != 1:
                mem[0] = address(_14079)
                mem[32] = 102
                if stor102[address(_14079)]:
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14270 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _14301 = mem[_14270 + 32]
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14368 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _14301 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_14368 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_14368 + 32] + _14301 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_14368 + 32] + _14301 + _14139 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).minter() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14240 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_14240] == mem[_14240 + 12 len 20]
                if not mem[_14240 + 12 len 20]:
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) == 2:
                        require ext_code.size(address(_14079))
                        staticcall address(_14079).0x972313c0 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14422 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_14422] == mem[_14422 + 12 len 20]
                        if not mem[_14422 + 12 len 20]:
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14759 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _14820 = mem[_14759 + 32]
                            mem[mem[64] + 36] = 0
                            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14984 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            if _14820 + _14139 < _14139:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_14984 + 32] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_14984 + 32] + _14820 + _14139 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = mem[_14984 + 32] + _14820 + _14139 + s
                            continue 
                        mem[mem[64] + 4] = address(_14079)
                        mem[mem[64] + 36] = address(cd[4])
                        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                                gas gas_remaining wei
                               args address(_14079), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14731 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _14795 = mem[_14731]
                        if mem[_14731] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15152 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _15248 = mem[_15152 + 32]
                        mem[mem[64] + 36] = _14795
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _14795
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15484 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _15248 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15484 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15484 + 32] + _15248 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_15484 + 32] + _15248 + _14139 + s
                        continue 
                    mem[0] = address(_14079)
                    mem[32] = 101
                    require uint8(poolTypes[address(_14079)]) <= 6
                    if uint8(poolTypes[address(_14079)]) != 3:
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14551 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _14601 = mem[_14551 + 32]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14760 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _14601 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_14760 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_14760 + 32] + _14601 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_14760 + 32] + _14601 + _14139 + s
                        continue 
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14466 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_14466] == mem[_14466 + 12 len 20]
                    if not mem[_14466 + 12 len 20]:
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14823 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _14886 = mem[_14823 + 32]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15065 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _14886 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15065 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_15065 + 32] + _14886 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_15065 + 32] + _14886 + _14139 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14796 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14860 = mem[_14796]
                    if mem[_14796] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15249 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _15338 = mem[_15249 + 32]
                    mem[mem[64] + 36] = _14860
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _14860
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15587 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _15338 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_15587 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_15587 + 32] + _15338 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_15587 + 32] + _15338 + _14139 + s
                    continue 
                _14425 = mem[64]
                mem[64] = mem[64] + 64
                mem[_14425] = 26
                mem[_14425 + 32] = 'SafeMath: division by zero'
                require ext_code.size(address(_14079))
                staticcall address(_14079).minter() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14574 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _14630 = mem[_14574]
                require mem[_14574] == mem[_14574 + 12 len 20]
                _14921 = mem[64]
                mem[64] = mem[64] + 64
                mem[_14921] = 26
                mem[_14921 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = 0
                require ext_code.size(address(_14630))
                staticcall address(_14630).0xb20bd1ee with:
                        gas gas_remaining wei
                       args 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15288 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _15385 = mem[_15288]
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) == 2:
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15745 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_15745] == mem[_15745 + 12 len 20]
                    if not mem[_15745 + 12 len 20]:
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16572 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _16726 = mem[_16572 + 32]
                        mem[mem[64] + 36] = _15385
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15385
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17121 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _16726 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17121 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17121 + 32] + _16726 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_17121 + 32] + _16726 + _14139 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16493 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _16645 = mem[_16493]
                    if mem[_16493] + _15385 < _15385:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17466 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _17652 = mem[_17466 + 32]
                    mem[mem[64] + 36] = _16645 + _15385
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16645 + _15385
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18079 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _17652 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18079 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18079 + 32] + _17652 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_18079 + 32] + _17652 + _14139 + s
                    continue 
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) != 3:
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16103 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _16230 = mem[_16103 + 32]
                    mem[mem[64] + 36] = _15385
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15385
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16573 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _16230 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_16573 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_16573 + 32] + _16230 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_16573 + 32] + _16230 + _14139 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15857 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_15857] == mem[_15857 + 12 len 20]
                if not mem[_15857 + 12 len 20]:
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16729 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _16884 = mem[_16729 + 32]
                    mem[mem[64] + 36] = _15385
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15385
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17286 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _16884 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_17286 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_17286 + 32] + _16884 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_17286 + 32] + _16884 + _14139 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16646 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _16806 = mem[_16646]
                if mem[_16646] + _15385 < _15385:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = 0
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _17653 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _17825 = mem[_17653 + 32]
                mem[mem[64] + 36] = _16806 + _15385
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16806 + _15385
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18255 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _17825 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_18255 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_18255 + 32] + _17825 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_18255 + 32] + _17825 + _14139 + s
                continue 
            mem[mem[64] + 4] = address(cd[4])
            require ext_code.size(address(_14079))
            staticcall address(_14079).earned(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _14241 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _14272 = mem[_14241]
            require ext_code.size(address(_14079))
            staticcall address(_14079).0x72f702f3 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _14318 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_14318] == mem[_14318 + 12 len 20]
            mem[mem[64] + 4] = mem[_14318 + 12 len 20]
            mem[mem[64] + 36] = _14272
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], _14272
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _14491 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _14533 = mem[_14491]
            mem[0] = address(_14079)
            mem[32] = 102
            if stor102[address(_14079)]:
                mem[mem[64] + 36] = _14533
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14533
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14762 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _14825 = mem[_14762 + 32]
                mem[mem[64] + 36] = 0
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14988 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _14825 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_14988 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_14988 + 32] + _14825 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_14988 + 32] + _14825 + _14139 + s
                continue 
            require ext_code.size(address(_14079))
            staticcall address(_14079).minter() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _14696 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_14696] == mem[_14696 + 12 len 20]
            if not mem[_14696 + 12 len 20]:
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) == 2:
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15115 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_15115] == mem[_15115 + 12 len 20]
                    if not mem[_15115 + 12 len 20]:
                        mem[mem[64] + 36] = _14533
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14533
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15748 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _15859 = mem[_15748 + 32]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16164 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _15859 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16164 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16164 + 32] + _15859 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_16164 + 32] + _15859 + _14139 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15693 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _15803 = mem[_15693]
                    if mem[_15693] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = _14533
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14533
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16420 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _16576 = mem[_16420 + 32]
                    mem[mem[64] + 36] = _15803
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15803
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16967 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _16576 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_16967 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_16967 + 32] + _16576 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_16967 + 32] + _16576 + _14139 + s
                    continue 
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) != 3:
                    mem[mem[64] + 36] = _14533
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14533
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15386 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _15489 = mem[_15386 + 32]
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15749 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _15489 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_15749 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_15749 + 32] + _15489 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_15749 + 32] + _15489 + _14139 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15204 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_15204] == mem[_15204 + 12 len 20]
                if not mem[_15204 + 12 len 20]:
                    mem[mem[64] + 36] = _14533
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14533
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15862 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _15980 = mem[_15862 + 32]
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16291 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _15980 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_16291 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_16291 + 32] + _15980 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_16291 + 32] + _15980 + _14139 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15804 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _15927 = mem[_15804]
                if mem[_15804] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = _14533
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14533
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16577 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _16732 = mem[_16577 + 32]
                mem[mem[64] + 36] = _15927
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15927
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _17127 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _16732 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_17127 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_17127 + 32] + _16732 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_17127 + 32] + _16732 + _14139 + s
                continue 
            if not _14533:
                _15118 = mem[64]
                mem[64] = mem[64] + 64
                mem[_15118] = 26
                mem[_15118 + 32] = 'SafeMath: division by zero'
                require ext_code.size(address(_14079))
                staticcall address(_14079).minter() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15437 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _15538 = mem[_15437]
                require mem[_15437] == mem[_15437 + 12 len 20]
                _16047 = mem[64]
                mem[64] = mem[64] + 64
                mem[_16047] = 26
                mem[_16047 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = 0
                require ext_code.size(address(_15538))
                staticcall address(_15538).0xb20bd1ee with:
                        gas gas_remaining wei
                       args 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16652 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _16811 = mem[_16652]
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) == 2:
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17381 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_17381] == mem[_17381 + 12 len 20]
                    if not mem[_17381 + 12 len 20]:
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18540 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _18728 = mem[_18540 + 32]
                        mem[mem[64] + 36] = _16811
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16811
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19164 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _18728 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19164 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19164 + 32] + _18728 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_19164 + 32] + _18728 + _14139 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18444 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _18635 = mem[_18444]
                    if mem[_18444] + _16811 < _16811:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19510 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _19675 = mem[_19510 + 32]
                    mem[mem[64] + 36] = _18635 + _16811
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18635 + _16811
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20027 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _19675 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20027 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20027 + 32] + _19675 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_20027 + 32] + _19675 + _14139 + s
                    continue 
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) != 3:
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17914 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _18084 = mem[_17914 + 32]
                    mem[mem[64] + 36] = _16811
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16811
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18541 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _18084 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18541 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18541 + 32] + _18084 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_18541 + 32] + _18084 + _14139 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _17564 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_17564] == mem[_17564 + 12 len 20]
                if not mem[_17564 + 12 len 20]:
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18731 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _18910 = mem[_18731 + 32]
                    mem[mem[64] + 36] = _16811
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16811
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19339 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _18910 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19339 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19339 + 32] + _18910 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_19339 + 32] + _18910 + _14139 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18636 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _18824 = mem[_18636]
                if mem[_18636] + _16811 < _16811:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = 0
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19676 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _19826 = mem[_19676 + 32]
                mem[mem[64] + 36] = _18824 + _16811
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18824 + _16811
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20157 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _19826 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20157 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20157 + 32] + _19826 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_20157 + 32] + _19826 + _14139 + s
                continue 
            if 70 * _14533 / _14533 != 70:
                revert with 0, 'SafeMath: multiplication overflow'
            _15156 = mem[64]
            mem[64] = mem[64] + 64
            mem[_15156] = 26
            mem[_15156 + 32] = 'SafeMath: division by zero'
            require ext_code.size(address(_14079))
            staticcall address(_14079).minter() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _15490 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _15591 = mem[_15490]
            require mem[_15490] == mem[_15490 + 12 len 20]
            if not 70 * _14533 / 100:
                _16106 = mem[64]
                mem[64] = mem[64] + 64
                mem[_16106] = 26
                mem[_16106 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = 0
                require ext_code.size(address(_15591))
                staticcall address(_15591).0xb20bd1ee with:
                        gas gas_remaining wei
                       args 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16733 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _16887 = mem[_16733]
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) == 2:
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17470 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_17470] == mem[_17470 + 12 len 20]
                    if not mem[_17470 + 12 len 20]:
                        mem[mem[64] + 36] = 70 * _14533 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14533 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18632 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _18819 = mem[_18632 + 32]
                        mem[mem[64] + 36] = _16887
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16887
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19247 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _18819 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19247 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19247 + 32] + _18819 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_19247 + 32] + _18819 + _14139 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18538 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _18725 = mem[_18538]
                    if mem[_18538] + _16887 < _16887:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 70 * _14533 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14533 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19591 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _19749 = mem[_19591 + 32]
                    mem[mem[64] + 36] = _18725 + _16887
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18725 + _16887
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20086 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _19749 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20086 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20086 + 32] + _19749 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_20086 + 32] + _19749 + _14139 + s
                    continue 
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) != 3:
                    mem[mem[64] + 36] = 70 * _14533 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14533 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17996 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _18165 = mem[_17996 + 32]
                    mem[mem[64] + 36] = _16887
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16887
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18633 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _18165 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18633 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18633 + 32] + _18165 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_18633 + 32] + _18165 + _14139 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _17657 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_17657] == mem[_17657 + 12 len 20]
                if not mem[_17657 + 12 len 20]:
                    mem[mem[64] + 36] = 70 * _14533 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14533 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18822 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _18995 = mem[_18822 + 32]
                    mem[mem[64] + 36] = _16887
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16887
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19425 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _18995 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19425 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19425 + 32] + _18995 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_19425 + 32] + _18995 + _14139 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18726 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _18907 = mem[_18726]
                if mem[_18726] + _16887 < _16887:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = 70 * _14533 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14533 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19750 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _19893 = mem[_19750 + 32]
                mem[mem[64] + 36] = _18907 + _16887
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18907 + _16887
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20215 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _19893 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20215 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20215 + 32] + _19893 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_20215 + 32] + _19893 + _14139 + s
                continue 
            if 30 * 70 * _14533 / 100 / 70 * _14533 / 100 != 30:
                revert with 0, 'SafeMath: multiplication overflow'
            _16168 = mem[64]
            mem[64] = mem[64] + 64
            mem[_16168] = 26
            mem[_16168 + 32] = 'SafeMath: division by zero'
            mem[mem[64] + 4] = 30 * 70 * _14533 / 100 / 100
            require ext_code.size(address(_15591))
            staticcall address(_15591).0xb20bd1ee with:
                    gas gas_remaining wei
                   args (30 * 70 * _14533 / 100 / 100)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _16810 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _16969 = mem[_16810]
            mem[0] = address(_14079)
            mem[32] = 101
            require uint8(poolTypes[address(_14079)]) <= 6
            if uint8(poolTypes[address(_14079)]) == 2:
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _17559 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_17559] == mem[_17559 + 12 len 20]
                if not mem[_17559 + 12 len 20]:
                    mem[mem[64] + 36] = 70 * _14533 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14533 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18722 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _18902 = mem[_18722 + 32]
                    mem[mem[64] + 36] = _16969
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16969
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19330 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _18902 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19330 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19330 + 32] + _18902 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_19330 + 32] + _18902 + _14139 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18630 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _18816 = mem[_18630]
                if mem[_18630] + _16969 < _16969:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = 70 * _14533 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14533 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19668 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _19818 = mem[_19668 + 32]
                mem[mem[64] + 36] = _18816 + _16969
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18816 + _16969
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20151 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _19818 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20151 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20151 + 32] + _19818 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_20151 + 32] + _19818 + _14139 + s
                continue 
            mem[0] = address(_14079)
            mem[32] = 101
            require uint8(poolTypes[address(_14079)]) <= 6
            if uint8(poolTypes[address(_14079)]) != 3:
                mem[mem[64] + 36] = 70 * _14533 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14533 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18081 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _18258 = mem[_18081 + 32]
                mem[mem[64] + 36] = _16969
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16969
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18723 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _18258 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_18723 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_18723 + 32] + _18258 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_18723 + 32] + _18258 + _14139 + s
                continue 
            require ext_code.size(address(_14079))
            staticcall address(_14079).0x972313c0 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _17741 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_17741] == mem[_17741 + 12 len 20]
            if not mem[_17741 + 12 len 20]:
                mem[mem[64] + 36] = 70 * _14533 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14533 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18905 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _19074 = mem[_18905 + 32]
                mem[mem[64] + 36] = _16969
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16969
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19507 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _19074 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_19507 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_19507 + 32] + _19074 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_19507 + 32] + _19074 + _14139 + s
                continue 
            mem[mem[64] + 4] = address(_14079)
            mem[mem[64] + 36] = address(cd[4])
            require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
            staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                    gas gas_remaining wei
                   args address(_14079), address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _18817 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _18992 = mem[_18817]
            if mem[_18817] + _16969 < _16969:
                revert with 0, 'SafeMath: addition overflow'
            mem[mem[64] + 36] = 70 * _14533 / 100
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14533 / 100
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _19819 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _19956 = mem[_19819 + 32]
            mem[mem[64] + 36] = _18992 + _16969
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18992 + _16969
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _20277 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            if _19956 + _14139 < _14139:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_20277 + 32] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_20277 + 32] + _19956 + _14139 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = mem[_20277 + 32] + _19956 + _14139 + s
            continue 
        mem[mem[64] + 4] = address(cd[4])
        require ext_code.size(address(_14079))
        staticcall address(_14079).earned(address rg1) with:
                gas gas_remaining wei
               args address(cd[4])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _14178 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _14192 = mem[_14178]
        require ext_code.size(address(_14079))
        staticcall address(_14079).0xd1af0c7d with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _14220 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_14220] == mem[_14220 + 12 len 20]
        mem[mem[64] + 4] = mem[_14220 + 12 len 20]
        mem[mem[64] + 36] = _14192
        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], _14192
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _14361 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _14390 = mem[_14361]
        require uint8(poolTypes[address(_14079)]) <= 6
        if uint8(poolTypes[address(_14079)]) == 2:
            mem[mem[64] + 4] = address(_14079)
            mem[mem[64] + 36] = address(cd[4])
            require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
            staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                    gas gas_remaining wei
                   args address(_14079), address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _14552 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _14606 = mem[_14552]
            mem[mem[64] + 36] = mem[_14552]
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _14606
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _14767 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _14831 = mem[_14767]
            mem[0] = address(_14079)
            mem[32] = 102
            if stor102[address(_14079)]:
                mem[mem[64] + 36] = _14831
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14831
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15126 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _15215 = mem[_15126 + 32]
                mem[mem[64] + 36] = 0
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15449 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _15215 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_15449 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_15449 + 32] + _15215 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_15449 + 32] + _15215 + _14139 + s
                continue 
            require ext_code.size(address(_14079))
            staticcall address(_14079).minter() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _15041 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_15041] == mem[_15041 + 12 len 20]
            if not mem[_15041 + 12 len 20]:
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) == 2:
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15597 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_15597] == mem[_15597 + 12 len 20]
                    if not mem[_15597 + 12 len 20]:
                        mem[mem[64] + 36] = _14831
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14831
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16375 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _16519 = mem[_16375 + 32]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16900 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _16519 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16900 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16900 + 32] + _16519 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_16900 + 32] + _16519 + _14139 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16308 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _16435 = mem[_16308]
                    if mem[_16308] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = _14831
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14831
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17230 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _17408 = mem[_17230 + 32]
                    mem[mem[64] + 36] = _16435
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16435
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17853 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _17408 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_17853 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_17853 + 32] + _17408 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_17853 + 32] + _17408 + _14139 + s
                    continue 
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) != 3:
                    mem[mem[64] + 36] = _14831
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14831
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15938 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _16063 = mem[_15938 + 32]
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16376 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _16063 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_16376 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_16376 + 32] + _16063 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_16376 + 32] + _16063 + _14139 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15704 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_15704] == mem[_15704 + 12 len 20]
                if not mem[_15704 + 12 len 20]:
                    mem[mem[64] + 36] = _14831
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14831
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16522 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _16673 = mem[_16522 + 32]
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17068 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _16673 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_17068 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_17068 + 32] + _16673 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_17068 + 32] + _16673 + _14139 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16436 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _16591 = mem[_16436]
                if mem[_16436] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = _14831
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14831
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _17409 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _17593 = mem[_17409 + 32]
                mem[mem[64] + 36] = _16591
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16591
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18022 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _17593 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_18022 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_18022 + 32] + _17593 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_18022 + 32] + _17593 + _14139 + s
                continue 
            if not _14831:
                _15600 = mem[64]
                mem[64] = mem[64] + 64
                mem[_15600] = 26
                mem[_15600 + 32] = 'SafeMath: division by zero'
                require ext_code.size(address(_14079))
                staticcall address(_14079).minter() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15988 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _16118 = mem[_15988]
                require mem[_15988] == mem[_15988 + 12 len 20]
                _16751 = mem[64]
                mem[64] = mem[64] + 64
                mem[_16751] = 26
                mem[_16751 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = 0
                require ext_code.size(address(_16118))
                staticcall address(_16118).0xb20bd1ee with:
                        gas gas_remaining wei
                       args 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _17492 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _17682 = mem[_17492]
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) == 2:
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18288 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_18288] == mem[_18288 + 12 len 20]
                    if not mem[_18288 + 12 len 20]:
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19462 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _19628 = mem[_19462 + 32]
                        mem[mem[64] + 36] = _17682
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17682
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19989 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _19628 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19989 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19989 + 32] + _19628 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_19989 + 32] + _19628 + _14139 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19372 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _19540 = mem[_19372]
                    if mem[_19372] + _17682 < _17682:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20250 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _20369 = mem[_20250 + 32]
                    mem[mem[64] + 36] = _19540 + _17682
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _19540 + _17682
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20611 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _20369 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20611 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20611 + 32] + _20369 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_20611 + 32] + _20369 + _14139 + s
                    continue 
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) != 3:
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18855 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _19026 = mem[_18855 + 32]
                    mem[mem[64] + 36] = _17682
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17682
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19463 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _19026 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19463 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19463 + 32] + _19026 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_19463 + 32] + _19026 + _14139 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18477 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_18477] == mem[_18477 + 12 len 20]
                if not mem[_18477 + 12 len 20]:
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19631 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _19786 = mem[_19631 + 32]
                    mem[mem[64] + 36] = _17682
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17682
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20124 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _19786 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20124 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20124 + 32] + _19786 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_20124 + 32] + _19786 + _14139 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19541 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _19705 = mem[_19541]
                if mem[_19541] + _17682 < _17682:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = 0
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20370 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _20476 = mem[_20370 + 32]
                mem[mem[64] + 36] = _19705 + _17682
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _19705 + _17682
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20695 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _20476 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20695 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20695 + 32] + _20476 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_20695 + 32] + _20476 + _14139 + s
                continue 
            if 70 * _14831 / _14831 != 70:
                revert with 0, 'SafeMath: multiplication overflow'
            _15654 = mem[64]
            mem[64] = mem[64] + 64
            mem[_15654] = 26
            mem[_15654 + 32] = 'SafeMath: division by zero'
            require ext_code.size(address(_14079))
            staticcall address(_14079).minter() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _16064 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _16188 = mem[_16064]
            require mem[_16064] == mem[_16064 + 12 len 20]
            if not 70 * _14831 / 100:
                _16829 = mem[64]
                mem[64] = mem[64] + 64
                mem[_16829] = 26
                mem[_16829 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = 0
                require ext_code.size(address(_16188))
                staticcall address(_16188).0xb20bd1ee with:
                        gas gas_remaining wei
                       args 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _17594 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _17768 = mem[_17594]
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) == 2:
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18378 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_18378] == mem[_18378 + 12 len 20]
                    if not mem[_18378 + 12 len 20]:
                        mem[mem[64] + 36] = 70 * _14831 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14831 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19537 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _19700 = mem[_19537 + 32]
                        mem[mem[64] + 36] = _17768
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17768
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _20051 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _19700 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_20051 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_20051 + 32] + _19700 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_20051 + 32] + _19700 + _14139 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19460 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _19625 = mem[_19460]
                    if mem[_19460] + _17768 < _17768:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 70 * _14831 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14831 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20305 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _20417 = mem[_20305 + 32]
                    mem[mem[64] + 36] = _19625 + _17768
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _19625 + _17768
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20646 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _20417 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20646 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20646 + 32] + _20417 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_20646 + 32] + _20417 + _14139 + s
                    continue 
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) != 3:
                    mem[mem[64] + 36] = 70 * _14831 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14831 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18937 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _19106 = mem[_18937 + 32]
                    mem[mem[64] + 36] = _17768
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17768
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19538 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _19106 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19538 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19538 + 32] + _19106 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_19538 + 32] + _19106 + _14139 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18571 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_18571] == mem[_18571 + 12 len 20]
                if not mem[_18571 + 12 len 20]:
                    mem[mem[64] + 36] = 70 * _14831 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14831 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19703 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _19852 = mem[_19703 + 32]
                    mem[mem[64] + 36] = _17768
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17768
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20186 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _19852 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20186 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20186 + 32] + _19852 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_20186 + 32] + _19852 + _14139 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19626 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _19783 = mem[_19626]
                if mem[_19626] + _17768 < _17768:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = 70 * _14831 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14831 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20418 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _20521 = mem[_20418 + 32]
                mem[mem[64] + 36] = _19783 + _17768
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _19783 + _17768
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20730 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _20521 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20730 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20730 + 32] + _20521 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_20730 + 32] + _20521 + _14139 + s
                continue 
            if 30 * 70 * _14831 / 100 / 70 * _14831 / 100 != 30:
                revert with 0, 'SafeMath: multiplication overflow'
            _16904 = mem[64]
            mem[64] = mem[64] + 64
            mem[_16904] = 26
            mem[_16904 + 32] = 'SafeMath: division by zero'
            mem[mem[64] + 4] = 30 * 70 * _14831 / 100 / 100
            require ext_code.size(address(_16188))
            staticcall address(_16188).0xb20bd1ee with:
                    gas gas_remaining wei
                   args (30 * 70 * _14831 / 100 / 100)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _17681 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _17855 = mem[_17681]
            mem[0] = address(_14079)
            mem[32] = 101
            require uint8(poolTypes[address(_14079)]) <= 6
            if uint8(poolTypes[address(_14079)]) == 2:
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18472 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_18472] == mem[_18472 + 12 len 20]
                if not mem[_18472 + 12 len 20]:
                    mem[mem[64] + 36] = 70 * _14831 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14831 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19622 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _19778 = mem[_19622 + 32]
                    mem[mem[64] + 36] = _17855
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17855
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20115 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _19778 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20115 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20115 + 32] + _19778 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_20115 + 32] + _19778 + _14139 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19535 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _19697 = mem[_19535]
                if mem[_19535] + _17855 < _17855:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = 70 * _14831 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14831 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20362 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _20468 = mem[_20362 + 32]
                mem[mem[64] + 36] = _19697 + _17855
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _19697 + _17855
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20689 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _20468 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20689 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20689 + 32] + _20468 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_20689 + 32] + _20468 + _14139 + s
                continue 
            mem[0] = address(_14079)
            mem[32] = 101
            require uint8(poolTypes[address(_14079)]) <= 6
            if uint8(poolTypes[address(_14079)]) != 3:
                mem[mem[64] + 36] = 70 * _14831 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14831 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19023 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _19196 = mem[_19023 + 32]
                mem[mem[64] + 36] = _17855
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17855
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19623 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _19196 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_19623 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_19623 + 32] + _19196 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_19623 + 32] + _19196 + _14139 + s
                continue 
            require ext_code.size(address(_14079))
            staticcall address(_14079).0x972313c0 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _18667 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_18667] == mem[_18667 + 12 len 20]
            if not mem[_18667 + 12 len 20]:
                mem[mem[64] + 36] = 70 * _14831 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14831 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19781 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _19919 = mem[_19781 + 32]
                mem[mem[64] + 36] = _17855
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17855
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20247 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _19919 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20247 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20247 + 32] + _19919 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_20247 + 32] + _19919 + _14139 + s
                continue 
            mem[mem[64] + 4] = address(_14079)
            mem[mem[64] + 36] = address(cd[4])
            require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
            staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                    gas gas_remaining wei
                   args address(_14079), address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _19698 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _19849 = mem[_19698]
            if mem[_19698] + _17855 < _17855:
                revert with 0, 'SafeMath: addition overflow'
            mem[mem[64] + 36] = 70 * _14831 / 100
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14831 / 100
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _20469 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _20563 = mem[_20469 + 32]
            mem[mem[64] + 36] = _19849 + _17855
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _19849 + _17855
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _20772 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            if _20563 + _14139 < _14139:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_20772 + 32] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_20772 + 32] + _20563 + _14139 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = mem[_20772 + 32] + _20563 + _14139 + s
            continue 
        require uint8(poolTypes[address(_14079)]) <= 6
        if uint8(poolTypes[address(_14079)]) == 3:
            mem[mem[64] + 4] = address(cd[4])
            require ext_code.size(address(_14079))
            staticcall address(_14079).earned(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _14637 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _14699 = mem[_14637]
            require ext_code.size(address(_14079))
            staticcall address(_14079).0x72f702f3 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _14800 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_14800] == mem[_14800 + 12 len 20]
            mem[mem[64] + 4] = mem[_14800 + 12 len 20]
            mem[mem[64] + 36] = _14699
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], _14699
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _15160 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _15252 = mem[_15160]
            mem[0] = address(_14079)
            mem[32] = 102
            if stor102[address(_14079)]:
                mem[mem[64] + 36] = _15252
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _15252
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15646 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _15756 = mem[_15646 + 32]
                mem[mem[64] + 36] = 0
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16052 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _15756 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_16052 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_16052 + 32] + _15756 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_16052 + 32] + _15756 + _14139 + s
                continue 
            require ext_code.size(address(_14079))
            staticcall address(_14079).minter() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _15545 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_15545] == mem[_15545 + 12 len 20]
            if not mem[_15545 + 12 len 20]:
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) == 2:
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16238 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_16238] == mem[_16238 + 12 len 20]
                    if not mem[_16238 + 12 len 20]:
                        mem[mem[64] + 36] = _15252
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _15252
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17218 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _17393 = mem[_17218 + 32]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17838 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _17393 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17838 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_17838 + 32] + _17393 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_17838 + 32] + _17393 + _14139 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17137 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _17300 = mem[_17137]
                    if mem[_17137] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = _15252
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _15252
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18179 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _18362 = mem[_18179 + 32]
                    mem[mem[64] + 36] = _17300
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17300
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18835 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _18362 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18835 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18835 + 32] + _18362 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_18835 + 32] + _18362 + _14139 + s
                    continue 
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) != 3:
                    mem[mem[64] + 36] = _15252
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _15252
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16659 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _16817 = mem[_16659 + 32]
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17219 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _16817 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_17219 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_17219 + 32] + _16817 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_17219 + 32] + _16817 + _14139 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16368 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_16368] == mem[_16368 + 12 len 20]
                if not mem[_16368 + 12 len 20]:
                    mem[mem[64] + 36] = _15252
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _15252
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17396 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _17577 = mem[_17396 + 32]
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18009 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _17577 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18009 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18009 + 32] + _17577 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_18009 + 32] + _17577 + _14139 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _17301 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _17481 = mem[_17301]
                if mem[_17301] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = _15252
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _15252
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18363 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _18554 = mem[_18363 + 32]
                mem[mem[64] + 36] = _17481
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17481
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19008 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _18554 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_19008 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_19008 + 32] + _18554 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_19008 + 32] + _18554 + _14139 + s
                continue 
            if not _15252:
                _16241 = mem[64]
                mem[64] = mem[64] + 64
                mem[_16241] = 26
                mem[_16241 + 32] = 'SafeMath: division by zero'
                require ext_code.size(address(_14079))
                staticcall address(_14079).minter() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16739 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _16894 = mem[_16739]
                require mem[_16739] == mem[_16739 + 12 len 20]
                _17671 = mem[64]
                mem[64] = mem[64] + 64
                mem[_17671] = 26
                mem[_17671 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = 0
                require ext_code.size(address(_16894))
                staticcall address(_16894).0xb20bd1ee with:
                        gas gas_remaining wei
                       args 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18458 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _18650 = mem[_18458]
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) == 2:
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19264 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_19264] == mem[_19264 + 12 len 20]
                    if not mem[_19264 + 12 len 20]:
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _20226 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _20344 = mem[_20226 + 32]
                        mem[mem[64] + 36] = _18650
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18650
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _20590 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _20344 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_20590 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_20590 + 32] + _20344 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_20590 + 32] + _20344 + _14139 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20165 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _20288 = mem[_20165]
                    if mem[_20165] + _18650 < _18650:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20751 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _20826 = mem[_20751 + 32]
                    mem[mem[64] + 36] = _20288 + _18650
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _20288 + _18650
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20957 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _20826 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20957 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20957 + 32] + _20826 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_20957 + 32] + _20826 + _14139 + s
                    continue 
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) != 3:
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19761 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _19903 = mem[_19761 + 32]
                    mem[mem[64] + 36] = _18650
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18650
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20227 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _19903 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20227 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20227 + 32] + _19903 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_20227 + 32] + _19903 + _14139 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19441 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_19441] == mem[_19441 + 12 len 20]
                if not mem[_19441 + 12 len 20]:
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20347 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _20452 = mem[_20347 + 32]
                    mem[mem[64] + 36] = _18650
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18650
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20674 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _20452 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20674 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20674 + 32] + _20452 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_20674 + 32] + _20452 + _14139 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20289 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _20402 = mem[_20289]
                if mem[_20289] + _18650 < _18650:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = 0
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20827 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _20887 = mem[_20827 + 32]
                mem[mem[64] + 36] = _20402 + _18650
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _20402 + _18650
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20996 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _20887 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20996 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20996 + 32] + _20887 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_20996 + 32] + _20887 + _14139 + s
                continue 
            if 70 * _15252 / _15252 != 70:
                revert with 0, 'SafeMath: multiplication overflow'
            _16298 = mem[64]
            mem[64] = mem[64] + 64
            mem[_16298] = 26
            mem[_16298 + 32] = 'SafeMath: division by zero'
            require ext_code.size(address(_14079))
            staticcall address(_14079).minter() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _16818 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _16977 = mem[_16818]
            require mem[_16818] == mem[_16818 + 12 len 20]
            if not 70 * _15252 / 100:
                _17756 = mem[64]
                mem[64] = mem[64] + 64
                mem[_17756] = 26
                mem[_17756 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = 0
                require ext_code.size(address(_16977))
                staticcall address(_16977).0xb20bd1ee with:
                        gas gas_remaining wei
                       args 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18555 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _18744 = mem[_18555]
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) == 2:
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19348 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_19348] == mem[_19348 + 12 len 20]
                    if not mem[_19348 + 12 len 20]:
                        mem[mem[64] + 36] = 70 * _15252 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _15252 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _20285 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _20397 = mem[_20285 + 32]
                        mem[mem[64] + 36] = _18744
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18744
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _20627 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _20397 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_20627 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_20627 + 32] + _20397 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_20627 + 32] + _20397 + _14139 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20224 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _20341 = mem[_20224]
                    if mem[_20224] + _18744 < _18744:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 70 * _15252 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _15252 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20789 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _20856 = mem[_20789 + 32]
                    mem[mem[64] + 36] = _20341 + _18744
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _20341 + _18744
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20974 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _20856 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20974 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20974 + 32] + _20856 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_20974 + 32] + _20856 + _14139 + s
                    continue 
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) != 3:
                    mem[mem[64] + 36] = 70 * _15252 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _15252 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19833 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _19970 = mem[_19833 + 32]
                    mem[mem[64] + 36] = _18744
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18744
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20286 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _19970 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20286 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20286 + 32] + _19970 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_20286 + 32] + _19970 + _14139 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19521 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_19521] == mem[_19521 + 12 len 20]
                if not mem[_19521 + 12 len 20]:
                    mem[mem[64] + 36] = 70 * _15252 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _15252 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20400 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _20499 = mem[_20400 + 32]
                    mem[mem[64] + 36] = _18744
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18744
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20713 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _20499 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20713 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20713 + 32] + _20499 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_20713 + 32] + _20499 + _14139 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20342 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _20449 = mem[_20342]
                if mem[_20342] + _18744 < _18744:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = 70 * _15252 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _15252 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20857 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _20911 = mem[_20857 + 32]
                mem[mem[64] + 36] = _20449 + _18744
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _20449 + _18744
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _21010 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _20911 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_21010 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_21010 + 32] + _20911 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_21010 + 32] + _20911 + _14139 + s
                continue 
            if 30 * 70 * _15252 / 100 / 70 * _15252 / 100 != 30:
                revert with 0, 'SafeMath: multiplication overflow'
            _17842 = mem[64]
            mem[64] = mem[64] + 64
            mem[_17842] = 26
            mem[_17842 + 32] = 'SafeMath: division by zero'
            mem[mem[64] + 4] = 30 * 70 * _15252 / 100 / 100
            require ext_code.size(address(_16977))
            staticcall address(_16977).0xb20bd1ee with:
                    gas gas_remaining wei
                   args (30 * 70 * _15252 / 100 / 100)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _18649 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _18837 = mem[_18649]
            mem[0] = address(_14079)
            mem[32] = 101
            require uint8(poolTypes[address(_14079)]) <= 6
            if uint8(poolTypes[address(_14079)]) == 2:
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19436 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_19436] == mem[_19436 + 12 len 20]
                if not mem[_19436 + 12 len 20]:
                    mem[mem[64] + 36] = 70 * _15252 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _15252 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20338 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _20444 = mem[_20338 + 32]
                    mem[mem[64] + 36] = _18837
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18837
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20665 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _20444 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20665 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20665 + 32] + _20444 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_20665 + 32] + _20444 + _14139 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20283 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _20394 = mem[_20283]
                if mem[_20283] + _18837 < _18837:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = 70 * _15252 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _15252 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20819 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _20879 = mem[_20819 + 32]
                mem[mem[64] + 36] = _20394 + _18837
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _20394 + _18837
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20990 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _20879 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20990 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20990 + 32] + _20879 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_20990 + 32] + _20879 + _14139 + s
                continue 
            mem[0] = address(_14079)
            mem[32] = 101
            require uint8(poolTypes[address(_14079)]) <= 6
            if uint8(poolTypes[address(_14079)]) != 3:
                mem[mem[64] + 36] = 70 * _15252 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _15252 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19900 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _20033 = mem[_19900 + 32]
                mem[mem[64] + 36] = _18837
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18837
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20339 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _20033 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20339 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20339 + 32] + _20033 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_20339 + 32] + _20033 + _14139 + s
                continue 
            require ext_code.size(address(_14079))
            staticcall address(_14079).0x972313c0 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _19604 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_19604] == mem[_19604 + 12 len 20]
            if not mem[_19604 + 12 len 20]:
                mem[mem[64] + 36] = 70 * _15252 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _15252 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20447 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _20541 = mem[_20447 + 32]
                mem[mem[64] + 36] = _18837
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18837
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20748 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _20541 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20748 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20748 + 32] + _20541 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_20748 + 32] + _20541 + _14139 + s
                continue 
            mem[mem[64] + 4] = address(_14079)
            mem[mem[64] + 36] = address(cd[4])
            require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
            staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                    gas gas_remaining wei
                   args address(_14079), address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _20395 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _20496 = mem[_20395]
            if mem[_20395] + _18837 < _18837:
                revert with 0, 'SafeMath: addition overflow'
            mem[mem[64] + 36] = 70 * _15252 / 100
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _15252 / 100
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _20880 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _20931 = mem[_20880 + 32]
            mem[mem[64] + 36] = _20496 + _18837
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _20496 + _18837
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _21025 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            if _20931 + _14139 < _14139:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_21025 + 32] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_21025 + 32] + _20931 + _14139 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = mem[_21025 + 32] + _20931 + _14139 + s
            continue 
        require uint8(poolTypes[address(_14079)]) <= 6
        if uint8(poolTypes[address(_14079)]) != 1:
            mem[0] = address(_14079)
            mem[32] = 102
            if stor102[address(_14079)]:
                mem[mem[64] + 36] = _14390
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14390
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14764 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _14830 = mem[_14764 + 32]
                mem[mem[64] + 36] = 0
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14994 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _14830 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_14994 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_14994 + 32] + _14830 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_14994 + 32] + _14830 + _14139 + s
                continue 
            require ext_code.size(address(_14079))
            staticcall address(_14079).minter() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _14701 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_14701] == mem[_14701 + 12 len 20]
            if not mem[_14701 + 12 len 20]:
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) == 2:
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15122 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_15122] == mem[_15122 + 12 len 20]
                    if not mem[_15122 + 12 len 20]:
                        mem[mem[64] + 36] = _14390
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14390
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15757 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _15868 = mem[_15757 + 32]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16178 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _15868 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16178 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_16178 + 32] + _15868 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_16178 + 32] + _15868 + _14139 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15699 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _15812 = mem[_15699]
                    if mem[_15699] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = _14390
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14390
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16428 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _16587 = mem[_16428 + 32]
                    mem[mem[64] + 36] = _15812
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15812
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16978 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _16587 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_16978 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_16978 + 32] + _16587 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_16978 + 32] + _16587 + _14139 + s
                    continue 
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) != 3:
                    mem[mem[64] + 36] = _14390
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14390
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15393 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _15495 = mem[_15393 + 32]
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15758 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _15495 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_15758 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_15758 + 32] + _15495 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_15758 + 32] + _15495 + _14139 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15213 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_15213] == mem[_15213 + 12 len 20]
                if not mem[_15213 + 12 len 20]:
                    mem[mem[64] + 36] = _14390
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14390
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15871 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _15986 = mem[_15871 + 32]
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16303 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _15986 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_16303 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_16303 + 32] + _15986 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_16303 + 32] + _15986 + _14139 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15813 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _15936 = mem[_15813]
                if mem[_15813] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = _14390
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _14390
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16588 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _16742 = mem[_16588 + 32]
                mem[mem[64] + 36] = _15936
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _15936
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _17141 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _16742 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_17141 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_17141 + 32] + _16742 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_17141 + 32] + _16742 + _14139 + s
                continue 
            if not _14390:
                _15125 = mem[64]
                mem[64] = mem[64] + 64
                mem[_15125] = 26
                mem[_15125 + 32] = 'SafeMath: division by zero'
                require ext_code.size(address(_14079))
                staticcall address(_14079).minter() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15448 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _15549 = mem[_15448]
                require mem[_15448] == mem[_15448 + 12 len 20]
                _16058 = mem[64]
                mem[64] = mem[64] + 64
                mem[_16058] = 26
                mem[_16058 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = 0
                require ext_code.size(address(_15549))
                staticcall address(_15549).0xb20bd1ee with:
                        gas gas_remaining wei
                       args 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16667 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _16823 = mem[_16667]
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) == 2:
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17401 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_17401] == mem[_17401 + 12 len 20]
                    if not mem[_17401 + 12 len 20]:
                        mem[mem[64] + 36] = 0
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18561 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _18751 = mem[_18561 + 32]
                        mem[mem[64] + 36] = _16823
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16823
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19185 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _18751 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19185 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19185 + 32] + _18751 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_19185 + 32] + _18751 + _14139 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18464 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _18656 = mem[_18464]
                    if mem[_18464] + _16823 < _16823:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19528 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _19691 = mem[_19528 + 32]
                    mem[mem[64] + 36] = _18656 + _16823
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18656 + _16823
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20043 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _19691 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20043 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20043 + 32] + _19691 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_20043 + 32] + _19691 + _14139 + s
                    continue 
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) != 3:
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17927 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _18098 = mem[_17927 + 32]
                    mem[mem[64] + 36] = _16823
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16823
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18562 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _18098 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18562 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18562 + 32] + _18098 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_18562 + 32] + _18098 + _14139 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _17585 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_17585] == mem[_17585 + 12 len 20]
                if not mem[_17585 + 12 len 20]:
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18754 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _18931 = mem[_18754 + 32]
                    mem[mem[64] + 36] = _16823
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16823
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19360 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _18931 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19360 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19360 + 32] + _18931 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_19360 + 32] + _18931 + _14139 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18657 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _18847 = mem[_18657]
                if mem[_18657] + _16823 < _16823:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = 0
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19692 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _19843 = mem[_19692 + 32]
                mem[mem[64] + 36] = _18847 + _16823
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18847 + _16823
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20173 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _19843 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20173 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20173 + 32] + _19843 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_20173 + 32] + _19843 + _14139 + s
                continue 
            if 70 * _14390 / _14390 != 70:
                revert with 0, 'SafeMath: multiplication overflow'
            _15161 = mem[64]
            mem[64] = mem[64] + 64
            mem[_15161] = 26
            mem[_15161 + 32] = 'SafeMath: division by zero'
            require ext_code.size(address(_14079))
            staticcall address(_14079).minter() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _15496 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _15596 = mem[_15496]
            require mem[_15496] == mem[_15496 + 12 len 20]
            if not 70 * _14390 / 100:
                _16114 = mem[64]
                mem[64] = mem[64] + 64
                mem[_16114] = 26
                mem[_16114 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = 0
                require ext_code.size(address(_15596))
                staticcall address(_15596).0xb20bd1ee with:
                        gas gas_remaining wei
                       args 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16743 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _16897 = mem[_16743]
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) == 2:
                    require ext_code.size(address(_14079))
                    staticcall address(_14079).0x972313c0 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17482 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_17482] == mem[_17482 + 12 len 20]
                    if not mem[_17482 + 12 len 20]:
                        mem[mem[64] + 36] = 70 * _14390 / 100
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14390 / 100
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18653 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _18842 = mem[_18653 + 32]
                        mem[mem[64] + 36] = _16897
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16897
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19269 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if _18842 + _14139 < _14139:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19269 + 32] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_19269 + 32] + _18842 + _14139 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = mem[_19269 + 32] + _18842 + _14139 + s
                        continue 
                    mem[mem[64] + 4] = address(_14079)
                    mem[mem[64] + 36] = address(cd[4])
                    require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                    staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                            gas gas_remaining wei
                           args address(_14079), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18559 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _18748 = mem[_18559]
                    if mem[_18559] + _16897 < _16897:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64] + 36] = 70 * _14390 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14390 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19608 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _19765 = mem[_19608 + 32]
                    mem[mem[64] + 36] = _18748 + _16897
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18748 + _16897
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20104 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _19765 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20104 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20104 + 32] + _19765 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_20104 + 32] + _19765 + _14139 + s
                    continue 
                mem[0] = address(_14079)
                mem[32] = 101
                require uint8(poolTypes[address(_14079)]) <= 6
                if uint8(poolTypes[address(_14079)]) != 3:
                    mem[mem[64] + 36] = 70 * _14390 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14390 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18013 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _18188 = mem[_18013 + 32]
                    mem[mem[64] + 36] = _16897
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16897
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18654 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _18188 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18654 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18654 + 32] + _18188 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_18654 + 32] + _18188 + _14139 + s
                    continue 
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _17675 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_17675] == mem[_17675 + 12 len 20]
                if not mem[_17675 + 12 len 20]:
                    mem[mem[64] + 36] = 70 * _14390 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14390 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18845 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _19015 = mem[_18845 + 32]
                    mem[mem[64] + 36] = _16897
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16897
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19447 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _19015 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19447 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19447 + 32] + _19015 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_19447 + 32] + _19015 + _14139 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18749 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _18928 = mem[_18749]
                if mem[_18749] + _16897 < _16897:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = 70 * _14390 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14390 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19766 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _19910 = mem[_19766 + 32]
                mem[mem[64] + 36] = _18928 + _16897
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18928 + _16897
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20233 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _19910 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20233 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20233 + 32] + _19910 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_20233 + 32] + _19910 + _14139 + s
                continue 
            if 30 * 70 * _14390 / 100 / 70 * _14390 / 100 != 30:
                revert with 0, 'SafeMath: multiplication overflow'
            _16182 = mem[64]
            mem[64] = mem[64] + 64
            mem[_16182] = 26
            mem[_16182 + 32] = 'SafeMath: division by zero'
            mem[mem[64] + 4] = 30 * 70 * _14390 / 100 / 100
            require ext_code.size(address(_15596))
            staticcall address(_15596).0xb20bd1ee with:
                    gas gas_remaining wei
                   args (30 * 70 * _14390 / 100 / 100)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _16822 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _16980 = mem[_16822]
            mem[0] = address(_14079)
            mem[32] = 101
            require uint8(poolTypes[address(_14079)]) <= 6
            if uint8(poolTypes[address(_14079)]) == 2:
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _17580 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_17580] == mem[_17580 + 12 len 20]
                if not mem[_17580 + 12 len 20]:
                    mem[mem[64] + 36] = 70 * _14390 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14390 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18745 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _18923 = mem[_18745 + 32]
                    mem[mem[64] + 36] = _16980
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16980
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19351 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _18923 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19351 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_19351 + 32] + _18923 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_19351 + 32] + _18923 + _14139 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18651 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _18839 = mem[_18651]
                if mem[_18651] + _16980 < _16980:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = 70 * _14390 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14390 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19684 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _19835 = mem[_19684 + 32]
                mem[mem[64] + 36] = _18839 + _16980
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18839 + _16980
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20167 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _19835 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20167 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20167 + 32] + _19835 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_20167 + 32] + _19835 + _14139 + s
                continue 
            mem[0] = address(_14079)
            mem[32] = 101
            require uint8(poolTypes[address(_14079)]) <= 6
            if uint8(poolTypes[address(_14079)]) != 3:
                mem[mem[64] + 36] = 70 * _14390 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14390 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18095 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _18277 = mem[_18095 + 32]
                mem[mem[64] + 36] = _16980
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16980
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18746 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _18277 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_18746 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_18746 + 32] + _18277 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_18746 + 32] + _18277 + _14139 + s
                continue 
            require ext_code.size(address(_14079))
            staticcall address(_14079).0x972313c0 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _17760 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_17760] == mem[_17760 + 12 len 20]
            if not mem[_17760 + 12 len 20]:
                mem[mem[64] + 36] = 70 * _14390 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14390 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18926 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _19093 = mem[_18926 + 32]
                mem[mem[64] + 36] = _16980
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _16980
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19525 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _19093 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_19525 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_19525 + 32] + _19093 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_19525 + 32] + _19093 + _14139 + s
                continue 
            mem[mem[64] + 4] = address(_14079)
            mem[mem[64] + 36] = address(cd[4])
            require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
            staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                    gas gas_remaining wei
                   args address(_14079), address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _18840 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _19012 = mem[_18840]
            if mem[_18840] + _16980 < _16980:
                revert with 0, 'SafeMath: addition overflow'
            mem[mem[64] + 36] = 70 * _14390 / 100
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _14390 / 100
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _19836 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _19975 = mem[_19836 + 32]
            mem[mem[64] + 36] = _19012 + _16980
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _19012 + _16980
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _20292 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            if _19975 + _14139 < _14139:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_20292 + 32] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_20292 + 32] + _19975 + _14139 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = mem[_20292 + 32] + _19975 + _14139 + s
            continue 
        mem[mem[64] + 4] = address(cd[4])
        require ext_code.size(address(_14079))
        staticcall address(_14079).earned(address rg1) with:
                gas gas_remaining wei
               args address(cd[4])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _14702 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _14766 = mem[_14702]
        require ext_code.size(address(_14079))
        staticcall address(_14079).0x72f702f3 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _14867 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_14867] == mem[_14867 + 12 len 20]
        mem[mem[64] + 4] = mem[_14867 + 12 len 20]
        mem[mem[64] + 36] = _14766
        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], _14766
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15254 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _15350 = mem[_15254]
        mem[0] = address(_14079)
        mem[32] = 102
        if stor102[address(_14079)]:
            mem[mem[64] + 36] = _15350
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _15350
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _15760 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _15873 = mem[_15760 + 32]
            mem[mem[64] + 36] = 0
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _16184 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            if _15873 + _14139 < _14139:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_16184 + 32] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_16184 + 32] + _15873 + _14139 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = mem[_16184 + 32] + _15873 + _14139 + s
            continue 
        require ext_code.size(address(_14079))
        staticcall address(_14079).minter() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15653 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_15653] == mem[_15653 + 12 len 20]
        if not mem[_15653 + 12 len 20]:
            mem[0] = address(_14079)
            mem[32] = 101
            require uint8(poolTypes[address(_14079)]) <= 6
            if uint8(poolTypes[address(_14079)]) == 2:
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16371 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_16371] == mem[_16371 + 12 len 20]
                if not mem[_16371 + 12 len 20]:
                    mem[mem[64] + 36] = _15350
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _15350
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17404 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _17587 = mem[_17404 + 32]
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18014 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _17587 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18014 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_18014 + 32] + _17587 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_18014 + 32] + _17587 + _14139 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _17307 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _17485 = mem[_17307]
                if mem[_17307] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = _15350
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _15350
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18373 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _18565 = mem[_18373 + 32]
                mem[mem[64] + 36] = _17485
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17485
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19019 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _18565 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_19019 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_19019 + 32] + _18565 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_19019 + 32] + _18565 + _14139 + s
                continue 
            mem[0] = address(_14079)
            mem[32] = 101
            require uint8(poolTypes[address(_14079)]) <= 6
            if uint8(poolTypes[address(_14079)]) != 3:
                mem[mem[64] + 36] = _15350
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _15350
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16824 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _16984 = mem[_16824 + 32]
                mem[mem[64] + 36] = 0
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _17405 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _16984 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_17405 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_17405 + 32] + _16984 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_17405 + 32] + _16984 + _14139 + s
                continue 
            require ext_code.size(address(_14079))
            staticcall address(_14079).0x972313c0 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _16517 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_16517] == mem[_16517 + 12 len 20]
            if not mem[_16517 + 12 len 20]:
                mem[mem[64] + 36] = _15350
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _15350
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _17590 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _17765 = mem[_17590 + 32]
                mem[mem[64] + 36] = 0
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18194 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _17765 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_18194 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_18194 + 32] + _17765 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_18194 + 32] + _17765 + _14139 + s
                continue 
            mem[mem[64] + 4] = address(_14079)
            mem[mem[64] + 36] = address(cd[4])
            require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
            staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                    gas gas_remaining wei
                   args address(_14079), address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _17486 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _17677 = mem[_17486]
            if mem[_17486] < 0:
                revert with 0, 'SafeMath: addition overflow'
            mem[mem[64] + 36] = _15350
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _15350
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _18566 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _18757 = mem[_18566 + 32]
            mem[mem[64] + 36] = _17677
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _17677
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _19191 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            if _18757 + _14139 < _14139:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_19191 + 32] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_19191 + 32] + _18757 + _14139 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = mem[_19191 + 32] + _18757 + _14139 + s
            continue 
        if not _15350:
            _16374 = mem[64]
            mem[64] = mem[64] + 64
            mem[_16374] = 26
            mem[_16374 + 32] = 'SafeMath: division by zero'
            require ext_code.size(address(_14079))
            staticcall address(_14079).minter() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _16899 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _17064 = mem[_16899]
            require mem[_16899] == mem[_16899 + 12 len 20]
            _17852 = mem[64]
            mem[64] = mem[64] + 64
            mem[_17852] = 26
            mem[_17852 + 32] = 'SafeMath: division by zero'
            mem[mem[64] + 4] = 0
            require ext_code.size(address(_17064))
            staticcall address(_17064).0xb20bd1ee with:
                    gas gas_remaining wei
                   args 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _18663 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _18852 = mem[_18663]
            mem[0] = address(_14079)
            mem[32] = 101
            require uint8(poolTypes[address(_14079)]) <= 6
            if uint8(poolTypes[address(_14079)]) == 2:
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19454 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_19454] == mem[_19454 + 12 len 20]
                if not mem[_19454 + 12 len 20]:
                    mem[mem[64] + 36] = 0
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20359 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _20463 = mem[_20359 + 32]
                    mem[mem[64] + 36] = _18852
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18852
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20685 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _20463 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20685 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20685 + 32] + _20463 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_20685 + 32] + _20463 + _14139 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20302 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _20412 = mem[_20302]
                if mem[_20302] + _18852 < _18852:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = 0
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20837 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _20896 = mem[_20837 + 32]
                mem[mem[64] + 36] = _20412 + _18852
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _20412 + _18852
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _21002 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _20896 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_21002 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_21002 + 32] + _20896 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_21002 + 32] + _20896 + _14139 + s
                continue 
            mem[0] = address(_14079)
            mem[32] = 101
            require uint8(poolTypes[address(_14079)]) <= 6
            if uint8(poolTypes[address(_14079)]) != 3:
                mem[mem[64] + 36] = 0
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19916 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _20048 = mem[_19916 + 32]
                mem[mem[64] + 36] = _18852
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18852
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20360 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _20048 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20360 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20360 + 32] + _20048 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_20360 + 32] + _20048 + _14139 + s
                continue 
            require ext_code.size(address(_14079))
            staticcall address(_14079).0x972313c0 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _19621 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_19621] == mem[_19621 + 12 len 20]
            if not mem[_19621 + 12 len 20]:
                mem[mem[64] + 36] = 0
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20466 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _20560 = mem[_20466 + 32]
                mem[mem[64] + 36] = _18852
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18852
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20768 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _20560 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20768 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20768 + 32] + _20560 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_20768 + 32] + _20560 + _14139 + s
                continue 
            mem[mem[64] + 4] = address(_14079)
            mem[mem[64] + 36] = address(cd[4])
            require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
            staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                    gas gas_remaining wei
                   args address(_14079), address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _20413 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _20514 = mem[_20413]
            if mem[_20413] + _18852 < _18852:
                revert with 0, 'SafeMath: addition overflow'
            mem[mem[64] + 36] = 0
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _20897 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _20946 = mem[_20897 + 32]
            mem[mem[64] + 36] = _20514 + _18852
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _20514 + _18852
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _21036 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            if _20946 + _14139 < _14139:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_21036 + 32] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_21036 + 32] + _20946 + _14139 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = mem[_21036 + 32] + _20946 + _14139 + s
            continue 
        if 70 * _15350 / _15350 != 70:
            revert with 0, 'SafeMath: multiplication overflow'
        _16433 = mem[64]
        mem[64] = mem[64] + 64
        mem[_16433] = 26
        mem[_16433 + 32] = 'SafeMath: division by zero'
        require ext_code.size(address(_14079))
        staticcall address(_14079).minter() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16985 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _17146 = mem[_16985]
        require mem[_16985] == mem[_16985 + 12 len 20]
        if not 70 * _15350 / 100:
            _17930 = mem[64]
            mem[64] = mem[64] + 64
            mem[_17930] = 26
            mem[_17930 + 32] = 'SafeMath: division by zero'
            mem[mem[64] + 4] = 0
            require ext_code.size(address(_17146))
            staticcall address(_17146).0xb20bd1ee with:
                    gas gas_remaining wei
                   args 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _18758 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _18934 = mem[_18758]
            mem[0] = address(_14079)
            mem[32] = 101
            require uint8(poolTypes[address(_14079)]) <= 6
            if uint8(poolTypes[address(_14079)]) == 2:
                require ext_code.size(address(_14079))
                staticcall address(_14079).0x972313c0 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19532 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_19532] == mem[_19532 + 12 len 20]
                if not mem[_19532 + 12 len 20]:
                    mem[mem[64] + 36] = 70 * _15350 / 100
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _15350 / 100
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20409 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _20509 = mem[_20409 + 32]
                    mem[mem[64] + 36] = _18934
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18934
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20720 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if _20509 + _14139 < _14139:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20720 + 32] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_20720 + 32] + _20509 + _14139 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[_20720 + 32] + _20509 + _14139 + s
                    continue 
                mem[mem[64] + 4] = address(_14079)
                mem[mem[64] + 36] = address(cd[4])
                require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
                staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                        gas gas_remaining wei
                       args address(_14079), address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20357 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _20460 = mem[_20357]
                if mem[_20357] + _18934 < _18934:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 36] = 70 * _15350 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _15350 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20864 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _20918 = mem[_20864 + 32]
                mem[mem[64] + 36] = _20460 + _18934
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _20460 + _18934
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _21015 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _20918 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_21015 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_21015 + 32] + _20918 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_21015 + 32] + _20918 + _14139 + s
                continue 
            mem[0] = address(_14079)
            mem[32] = 101
            require uint8(poolTypes[address(_14079)]) <= 6
            if uint8(poolTypes[address(_14079)]) != 3:
                mem[mem[64] + 36] = 70 * _15350 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _15350 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19983 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _20112 = mem[_19983 + 32]
                mem[mem[64] + 36] = _18934
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18934
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20410 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _20112 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20410 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20410 + 32] + _20112 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_20410 + 32] + _20112 + _14139 + s
                continue 
            require ext_code.size(address(_14079))
            staticcall address(_14079).0x972313c0 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _19696 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_19696] == mem[_19696 + 12 len 20]
            if not mem[_19696 + 12 len 20]:
                mem[mem[64] + 36] = 70 * _15350 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _15350 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20512 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _20602 = mem[_20512 + 32]
                mem[mem[64] + 36] = _18934
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _18934
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20802 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _20602 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20802 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20802 + 32] + _20602 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_20802 + 32] + _20602 + _14139 + s
                continue 
            mem[mem[64] + 4] = address(_14079)
            mem[mem[64] + 36] = address(cd[4])
            require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
            staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                    gas gas_remaining wei
                   args address(_14079), address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _20461 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _20557 = mem[_20461]
            if mem[_20461] + _18934 < _18934:
                revert with 0, 'SafeMath: addition overflow'
            mem[mem[64] + 36] = 70 * _15350 / 100
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _15350 / 100
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _20919 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _20965 = mem[_20919 + 32]
            mem[mem[64] + 36] = _20557 + _18934
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _20557 + _18934
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _21049 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            if _20965 + _14139 < _14139:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_21049 + 32] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_21049 + 32] + _20965 + _14139 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = mem[_21049 + 32] + _20965 + _14139 + s
            continue 
        if 30 * 70 * _15350 / 100 / 70 * _15350 / 100 != 30:
            revert with 0, 'SafeMath: multiplication overflow'
        _18018 = mem[64]
        mem[64] = mem[64] + 64
        mem[_18018] = 26
        mem[_18018 + 32] = 'SafeMath: division by zero'
        mem[mem[64] + 4] = 30 * 70 * _15350 / 100 / 100
        require ext_code.size(address(_17146))
        staticcall address(_17146).0xb20bd1ee with:
                gas gas_remaining wei
               args (30 * 70 * _15350 / 100 / 100)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _18851 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _19021 = mem[_18851]
        mem[0] = address(_14079)
        mem[32] = 101
        require uint8(poolTypes[address(_14079)]) <= 6
        if uint8(poolTypes[address(_14079)]) == 2:
            require ext_code.size(address(_14079))
            staticcall address(_14079).0x972313c0 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _19616 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_19616] == mem[_19616 + 12 len 20]
            if not mem[_19616 + 12 len 20]:
                mem[mem[64] + 36] = 70 * _15350 / 100
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _15350 / 100
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20457 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _20552 = mem[_20457 + 32]
                mem[mem[64] + 36] = _19021
                require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _19021
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20759 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if _20552 + _14139 < _14139:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20759 + 32] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_20759 + 32] + _20552 + _14139 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_20759 + 32] + _20552 + _14139 + s
                continue 
            mem[mem[64] + 4] = address(_14079)
            mem[mem[64] + 36] = address(cd[4])
            require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
            staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                    gas gas_remaining wei
                   args address(_14079), address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _20407 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _20506 = mem[_20407]
            if mem[_20407] + _19021 < _19021:
                revert with 0, 'SafeMath: addition overflow'
            mem[mem[64] + 36] = 70 * _15350 / 100
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _15350 / 100
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _20889 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _20938 = mem[_20889 + 32]
            mem[mem[64] + 36] = _20506 + _19021
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _20506 + _19021
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _21030 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            if _20938 + _14139 < _14139:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_21030 + 32] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_21030 + 32] + _20938 + _14139 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = mem[_21030 + 32] + _20938 + _14139 + s
            continue 
        mem[0] = address(_14079)
        mem[32] = 101
        require uint8(poolTypes[address(_14079)]) <= 6
        if uint8(poolTypes[address(_14079)]) != 3:
            mem[mem[64] + 36] = 70 * _15350 / 100
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _15350 / 100
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _20045 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _20176 = mem[_20045 + 32]
            mem[mem[64] + 36] = _19021
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _19021
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _20458 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            if _20176 + _14139 < _14139:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_20458 + 32] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_20458 + 32] + _20176 + _14139 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = mem[_20458 + 32] + _20176 + _14139 + s
            continue 
        require ext_code.size(address(_14079))
        staticcall address(_14079).0x972313c0 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19774 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_19774] == mem[_19774 + 12 len 20]
        if not mem[_19774 + 12 len 20]:
            mem[mem[64] + 36] = 70 * _15350 / 100
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _15350 / 100
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _20555 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _20638 = mem[_20555 + 32]
            mem[mem[64] + 36] = _19021
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _19021
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _20834 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            if _20638 + _14139 < _14139:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_20834 + 32] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_20834 + 32] + _20638 + _14139 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = mem[_20834 + 32] + _20638 + _14139 + s
            continue 
        mem[mem[64] + 4] = address(_14079)
        mem[mem[64] + 36] = address(cd[4])
        require ext_code.size(0x628ea503b1248e344db1726469ba3edf09acdddd)
        staticcall 0x628ea503b1248e344db1726469ba3edf09acdddd.0x4fabe169 with:
                gas gas_remaining wei
               args address(_14079), address(cd[4])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _20507 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _20599 = mem[_20507]
        if mem[_20507] + _19021 < _19021:
            revert with 0, 'SafeMath: addition overflow'
        mem[mem[64] + 36] = 70 * _15350 / 100
        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 70 * _15350 / 100
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _20939 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _20980 = mem[_20939 + 32]
        mem[mem[64] + 36] = _20599 + _19021
        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, _20599 + _19021
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _21061 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        if _20980 + _14139 < _14139:
            revert with 0, 'SafeMath: addition overflow'
        if mem[_21061 + 32] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if mem[_21061 + 32] + _20980 + _14139 + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = mem[_21061 + 32] + _20980 + _14139 + s
        continue 
    return s
}



}
