contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;

function _fallback() payable {
    revert
}

function sub_517f63fb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           stor0[arg1].field_512,
           stor0[arg1].field_768,
           stor0[arg1].field_1024,
           stor0[arg1].field_1280,
           stor0[arg1].field_1536
}

function consult(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not -stor0[address(arg1)].field_1024:
        revert with 0, 'TwapOracle: Not found'
    if not arg2 - stor0[address(arg1)].field_0:
        if not arg3:
            return 0
        if stor0[address(arg1)].field_1280 and arg3 > -1 / stor0[address(arg1)].field_1280:
            revert with 0, 17
        if not arg3:
            revert with 0, 18
        if stor0[address(arg1)].field_1280 * arg3 / arg3 != stor0[address(arg1)].field_1280:
            revert with 0, 'FixedPoint: MULTIPLICATION_OVERFLOW'
        return (Mask(32, 112, stor0[address(arg1)].field_1280 * arg3) >> 112)
    if arg2 != stor0[address(arg1)].field_256:
        revert with 0, 'TwapOracle: Invalid token'
    if not arg3:
        return 0
    if stor0[address(arg1)].field_1536 and arg3 > -1 / stor0[address(arg1)].field_1536:
        revert with 0, 17
    if not arg3:
        revert with 0, 18
    if stor0[address(arg1)].field_1536 * arg3 / arg3 != stor0[address(arg1)].field_1536:
        revert with 0, 'FixedPoint: MULTIPLICATION_OVERFLOW'
    return (Mask(32, 112, stor0[address(arg1)].field_1536 * arg3) >> 112)
}

function createOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0[address(arg1)].field_1024:
        revert with 0, 'TwapOracle: Already created'
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if not ext_call.return_data[18 len 14]:
        revert with 0, 'TwapOracle: No reserves'
    if not ext_call.return_data[50 len 14]:
        revert with 0, 'TwapOracle: No reserves'
    staticcall arg1.price0CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall arg1.price1CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[92 len 4] == uint32(block.timestamp):
        stor0[address(arg1)].field_0 = address(ext_call.return_data[0])
        stor0[address(arg1)].field_256 = address(ext_call.return_data[0])
        stor0[address(arg1)].field_512 = ext_call.return_data[0]
        stor0[address(arg1)].field_768 = ext_call.return_data[0]
    else:
        if uint32(block.timestamp) < ext_call.return_data[92 len 4]:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 18
        if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) and uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])) > -1 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 17
        if ext_call.return_data[0] > !(Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        if Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) and uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])) > -1 / Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 17
        if ext_call.return_data[0] > !(Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))):
            revert with 0, 17
        stor0[address(arg1)].field_0 = address(ext_call.return_data[0])
        stor0[address(arg1)].field_256 = address(ext_call.return_data[0])
        stor0[address(arg1)].field_512 = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])))
        stor0[address(arg1)].field_768 = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])))
    stor0[address(arg1)].field_1024 = uint32(block.timestamp)
    stor0[address(arg1)].field_1280 = 0
    stor0[address(arg1)].field_1536 = 0
}

function updateOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall arg1.price0CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall arg1.price1CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[92 len 4] == uint32(block.timestamp):
        if uint32(block.timestamp) < stor0[address(arg1)].field_1024:
            revert with 0, 17
        if -uint32(uint32(block.timestamp) - stor0[address(arg1)].field_1024):
            if ext_call.return_data[0] < stor0[address(arg1)].field_512:
                revert with 0, 17
            if not uint32(uint32(block.timestamp) - stor0[address(arg1)].field_1024):
                revert with 0, 18
            stor0[address(arg1)].field_1280 = Mask(224, 0, ext_call.return_data[0] - stor0[address(arg1)].field_512 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_1024))
            if ext_call.return_data[0] < stor0[address(arg1)].field_768:
                revert with 0, 17
            if not uint32(uint32(block.timestamp) - stor0[address(arg1)].field_1024):
                revert with 0, 18
            stor0[address(arg1)].field_1536 = Mask(224, 0, ext_call.return_data[0] - stor0[address(arg1)].field_768 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_1024))
            stor0[address(arg1)].field_512 = ext_call.return_data[0]
            stor0[address(arg1)].field_768 = ext_call.return_data[0]
            stor0[address(arg1)].field_1024 = uint32(block.timestamp)
    else:
        if uint32(block.timestamp) < ext_call.return_data[92 len 4]:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 18
        if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) and uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])) > -1 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 17
        if ext_call.return_data[0] > !(Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        if Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) and uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])) > -1 / Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 17
        if ext_call.return_data[0] > !(Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))):
            revert with 0, 17
        if uint32(block.timestamp) < stor0[address(arg1)].field_1024:
            revert with 0, 17
        if -uint32(uint32(block.timestamp) - stor0[address(arg1)].field_1024):
            if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) < stor0[address(arg1)].field_512:
                revert with 0, 17
            if not uint32(uint32(block.timestamp) - stor0[address(arg1)].field_1024):
                revert with 0, 18
            stor0[address(arg1)].field_1280 = Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - stor0[address(arg1)].field_512 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_1024))
            if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) < stor0[address(arg1)].field_768:
                revert with 0, 17
            if not uint32(uint32(block.timestamp) - stor0[address(arg1)].field_1024):
                revert with 0, 18
            stor0[address(arg1)].field_1536 = Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - stor0[address(arg1)].field_768 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_1024))
            stor0[address(arg1)].field_512 = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])))
            stor0[address(arg1)].field_768 = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])))
            stor0[address(arg1)].field_1024 = uint32(block.timestamp)
}

function sub_bb24a449(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not -stor0[address(arg1)].field_1024:
        if stor0[address(arg1)].field_1024:
            revert with 0, 'TwapOracle: Already created'
        staticcall address(arg1).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(arg1).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(arg1).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if not ext_call.return_data[18 len 14]:
            revert with 0, 'TwapOracle: No reserves'
        if not ext_call.return_data[50 len 14]:
            revert with 0, 'TwapOracle: No reserves'
        staticcall address(arg1).price0CumulativeLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall address(arg1).price1CumulativeLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall address(arg1).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[92 len 4] == uint32(block.timestamp):
            stor0[address(arg1)].field_0 = address(ext_call.return_data[0])
            stor0[address(arg1)].field_256 = address(ext_call.return_data[0])
            stor0[address(arg1)].field_512 = ext_call.return_data[0]
            stor0[address(arg1)].field_768 = ext_call.return_data[0]
        else:
            if uint32(block.timestamp) < ext_call.return_data[92 len 4]:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 18
            if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) and uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])) > -1 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
                revert with 0, 17
            if ext_call.return_data[0] > !(Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) and uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])) > -1 / Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 17
            if ext_call.return_data[0] > !(Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))):
                revert with 0, 17
            stor0[address(arg1)].field_0 = address(ext_call.return_data[0])
            stor0[address(arg1)].field_256 = address(ext_call.return_data[0])
            stor0[address(arg1)].field_512 = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])))
            stor0[address(arg1)].field_768 = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])))
        stor0[address(arg1)].field_1024 = uint32(block.timestamp)
        stor0[address(arg1)].field_1280 = 0
        stor0[address(arg1)].field_1536 = 0
    staticcall address(arg1).price0CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(arg1).price1CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[92 len 4] == uint32(block.timestamp):
        if uint32(block.timestamp) < stor0[address(arg1)].field_1024:
            revert with 0, 17
        if -uint32(uint32(block.timestamp) - stor0[address(arg1)].field_1024):
            if ext_call.return_data[0] < stor0[address(arg1)].field_512:
                revert with 0, 17
            if not uint32(uint32(block.timestamp) - stor0[address(arg1)].field_1024):
                revert with 0, 18
            stor0[address(arg1)].field_1280 = Mask(224, 0, ext_call.return_data[0] - stor0[address(arg1)].field_512 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_1024))
            if ext_call.return_data[0] < stor0[address(arg1)].field_768:
                revert with 0, 17
            if not uint32(uint32(block.timestamp) - stor0[address(arg1)].field_1024):
                revert with 0, 18
            stor0[address(arg1)].field_1536 = Mask(224, 0, ext_call.return_data[0] - stor0[address(arg1)].field_768 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_1024))
            stor0[address(arg1)].field_512 = ext_call.return_data[0]
            stor0[address(arg1)].field_768 = ext_call.return_data[0]
            stor0[address(arg1)].field_1024 = uint32(block.timestamp)
    else:
        if uint32(block.timestamp) < ext_call.return_data[92 len 4]:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 18
        if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) and uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])) > -1 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 17
        if ext_call.return_data[0] > !(Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        if Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) and uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])) > -1 / Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 17
        if ext_call.return_data[0] > !(Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))):
            revert with 0, 17
        if uint32(block.timestamp) < stor0[address(arg1)].field_1024:
            revert with 0, 17
        if -uint32(uint32(block.timestamp) - stor0[address(arg1)].field_1024):
            if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) < stor0[address(arg1)].field_512:
                revert with 0, 17
            if not uint32(uint32(block.timestamp) - stor0[address(arg1)].field_1024):
                revert with 0, 18
            stor0[address(arg1)].field_1280 = Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - stor0[address(arg1)].field_512 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_1024))
            if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) < stor0[address(arg1)].field_768:
                revert with 0, 17
            if not uint32(uint32(block.timestamp) - stor0[address(arg1)].field_1024):
                revert with 0, 18
            stor0[address(arg1)].field_1536 = Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - stor0[address(arg1)].field_768 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_1024))
            stor0[address(arg1)].field_512 = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])))
            stor0[address(arg1)].field_768 = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])))
            stor0[address(arg1)].field_1024 = uint32(block.timestamp)
}



}
