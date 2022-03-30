contract main {




// =====================  Runtime code  =====================


const PERCENTAGE_BASE = 10000


address owner;
mapping of struct assetPrice;
mapping of uint8 stor2;

function isSybilWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[address(arg1)])
}

function owner() payable {
    return owner
}

function getAssetPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return assetPrice[address(arg1)].field_128
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

function authorizeSybil(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = 1
    emit SybilAuthorized(arg1);
}

function unauthorizeSybil(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = 0
    emit SybilUnauthorized(arg1);
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

function submitPrices(address[] arg1, uint128[] arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[0] = msg.sender
    if not stor2[address(msg.sender)]:
        revert with 0, 'INVALID_SYBIL'
    if arg2.length != arg1.length:
        revert with 0, 'INCONSISTENT_PARAMS_LENGTH'
    idx = 0
    while idx < arg1.length:
        _14 = mem[64]
        mem[64] = mem[64] + 96
        mem[_14] = uint64(block.number)
        mem[_14 + 32] = uint64(block.timestamp)
        require idx < arg2.length
        require cd[((32 * idx) + arg2 + 36)] == uint128(cd[((32 * idx) + arg2 + 36)])
        mem[_14 + 64] = uint128(cd[((32 * idx) + arg2 + 36)])
        require idx < arg1.length
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        assetPrice[address(cd[((32 * idx) + arg1 + 36)])].field_0 = uint64(block.number)
        assetPrice[address(cd[((32 * idx) + arg1 + 36)])].field_64 = uint64(block.timestamp)
        assetPrice[address(cd[((32 * idx) + arg1 + 36)])].field_128 = uint128(cd[((32 * idx) + arg2 + 36)])
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = msg.sender
    mem[mem[64] + 32] = 96
    mem[mem[64] + 96] = arg1.length
    idx = 0
    s = mem[64] + 128
    t = arg1 + 36
    while idx < arg1.length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_13 + 64] = (32 * arg1.length) + 128
    mem[_13 + (32 * arg1.length) + 128] = arg2.length
    idx = 0
    s = arg2 + 36
    t = _13 + (32 * arg1.length) + 160
    while idx < arg2.length:
        require cd[s] == uint128(cd[s])
        mem[t] = uint128(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit PricesSubmitted(address rg1, address[] rg2, uint128[] rg3):
                         mem[mem[64] len _13 + (32 * arg1.length) + (32 * arg2.length) + -mem[64] + 160],
}

function getPricesData(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg1.length <= test266151307()
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 1
            _32 = mem[64]
            mem[64] = mem[64] + 96
            mem[_32] = assetPrice[address(cd[((32 * idx) + arg1 + 36)])].field_0
            mem[_32 + 32] = assetPrice[address(cd[((32 * idx) + arg1 + 36)])].field_64
            mem[_32 + 64] = assetPrice[address(cd[((32 * idx) + arg1 + 36)])].field_128
            require idx < mem[96]
            mem[(32 * idx) + 128] = _32
            idx = idx + 1
            continue 
        _24 = mem[64]
        mem[mem[64]] = 32
        _25 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _25:
            _45 = mem[s]
            mem[t] = mem[mem[s] + 24 len 8]
            mem[t + 32] = mem[_45 + 56 len 8]
            mem[t + 64] = mem[_45 + 80 len 16]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _24 + (96 * _25) + -mem[64] + 64
    mem[64] = (32 * arg1.length) + 224
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    mem[(32 * arg1.length) + 192] = 0
    mem[var17001] = (32 * arg1.length) + 128
    s = var17001
    idx = var17002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * arg1.length) + 128] = 0
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 192] = 0
        mem[s + 32] = (32 * arg1.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        _68 = mem[64]
        mem[64] = mem[64] + 96
        mem[_68] = assetPrice[address(cd[((32 * idx) + arg1 + 36)])].field_0
        mem[_68 + 32] = assetPrice[address(cd[((32 * idx) + arg1 + 36)])].field_64
        mem[_68 + 64] = assetPrice[address(cd[((32 * idx) + arg1 + 36)])].field_128
        require idx < mem[96]
        mem[(32 * idx) + 128] = _68
        idx = idx + 1
        continue 
    _60 = mem[64]
    mem[mem[64]] = 32
    _61 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _61:
        _70 = mem[s]
        mem[t] = mem[mem[s] + 24 len 8]
        mem[t + 32] = mem[_70 + 56 len 8]
        mem[t + 64] = mem[_70 + 80 len 16]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _60 + (96 * _61) + -mem[64] + 64
}

function filterCandidatePricesByDeviation(uint256 arg1, address[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    if arg3.length != arg2.length:
        revert with 0, 'INCONSISTENT_PARAMS_LENGTH'
    require arg2.length <= test266151307()
    mem[96] = arg2.length
    if not arg2.length:
        require arg2.length <= test266151307()
        mem[(32 * arg2.length) + 128] = arg2.length
        mem[64] = (64 * arg2.length) + 160
        if not arg2.length:
            idx = 0
            s = 0
            while idx < arg2.length:
                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                mem[0] = address(cd[((32 * idx) + arg2 + 36)])
                mem[32] = 1
                if arg1 + 10000 < 10000:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < arg3.length
                if not cd[((32 * idx) + arg3 + 36)]:
                    _414 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_414] = 26
                    mem[_414 + 32] = 'SafeMath: division by zero'
                    if assetPrice[address(cd[((32 * idx) + arg2 + 36)])].field_128 <= 0:
                        _426 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_426] = 30
                        mem[_426 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 > 10000:
                            _434 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _434 + 68] = mem[idx + _426 + 32]
                                idx = idx + 32
                                continue 
                            mem[_434 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _434 + -mem[64] + 100
                        require idx < arg3.length
                        if not cd[((32 * idx) + arg3 + 36)]:
                            _492 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_492] = 26
                            mem[_492 + 32] = 'SafeMath: division by zero'
                            if assetPrice[address(cd[((32 * idx) + arg2 + 36)])].field_128 >= 0:
                                idx = idx + 1
                                s = s
                                continue 
                        else:
                            if (10000 * cd[((32 * idx) + arg3 + 36)]) - (arg1 * cd[((32 * idx) + arg3 + 36)]) / cd[((32 * idx) + arg3 + 36)] != -arg1 + 10000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _503 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_503] = 26
                            mem[_503 + 32] = 'SafeMath: division by zero'
                            if assetPrice[address(cd[((32 * idx) + arg2 + 36)])].field_128 >= (10000 * cd[((32 * idx) + arg3 + 36)]) - (arg1 * cd[((32 * idx) + arg3 + 36)]) / 10000:
                                idx = idx + 1
                                s = s
                                continue 
                else:
                    if (10000 * cd[((32 * idx) + arg3 + 36)]) + (arg1 * cd[((32 * idx) + arg3 + 36)]) / cd[((32 * idx) + arg3 + 36)] != arg1 + 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _418 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_418] = 26
                    mem[_418 + 32] = 'SafeMath: division by zero'
                    if assetPrice[address(cd[((32 * idx) + arg2 + 36)])].field_128 <= (10000 * cd[((32 * idx) + arg3 + 36)]) + (arg1 * cd[((32 * idx) + arg3 + 36)]) / 10000:
                        _430 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_430] = 30
                        mem[_430 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 > 10000:
                            _438 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _438 + 68] = mem[idx + _430 + 32]
                                idx = idx + 32
                                continue 
                            mem[_438 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _438 + -mem[64] + 100
                        require idx < arg3.length
                        if not cd[((32 * idx) + arg3 + 36)]:
                            _502 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_502] = 26
                            mem[_502 + 32] = 'SafeMath: division by zero'
                            if assetPrice[address(cd[((32 * idx) + arg2 + 36)])].field_128 >= 0:
                                idx = idx + 1
                                s = s
                                continue 
                        else:
                            if (10000 * cd[((32 * idx) + arg3 + 36)]) - (arg1 * cd[((32 * idx) + arg3 + 36)]) / cd[((32 * idx) + arg3 + 36)] != -arg1 + 10000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _514 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_514] = 26
                            mem[_514 + 32] = 'SafeMath: division by zero'
                            if assetPrice[address(cd[((32 * idx) + arg2 + 36)])].field_128 >= (10000 * cd[((32 * idx) + arg3 + 36)]) - (arg1 * cd[((32 * idx) + arg3 + 36)]) / 10000:
                                idx = idx + 1
                                s = s
                                continue 
                require idx < arg2.length
                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                require s < mem[96]
                mem[(32 * s) + 128] = address(cd[((32 * idx) + arg2 + 36)])
                require idx < arg3.length
                require s < mem[(32 * arg2.length) + 128]
                mem[(32 * s) + (32 * arg2.length) + 160] = cd[((32 * idx) + arg3 + 36)]
                idx = idx + 1
                s = s + 1
                continue 
            require s <= test266151307()
            _194 = mem[64]
            if not s:
                require s <= test266151307()
                _198 = mem[64] + (32 * s) + 32
                mem[mem[64] + (32 * s) + 32] = s
                mem[64] = _198 + (32 * s) + 32
                if not s:
                    t = 0
                    while t < s:
                        require t < mem[96]
                        require t < mem[_194]
                        mem[(32 * t) + _194 + 32] = mem[(32 * t) + 140 len 20]
                        require t < mem[(32 * arg2.length) + 128]
                        require t < mem[_198]
                        mem[(32 * t) + _198 + 32] = mem[(32 * t) + (32 * arg2.length) + 160]
                        t = t + 1
                        continue 
                    _578 = mem[64]
                    mem[mem[64]] = 64
                    _626 = mem[_194]
                    mem[mem[64] + 64] = mem[_194]
                    idx = 0
                    s = _194 + 32
                    t = mem[64] + 96
                    while idx < _626:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_578 + 32] = (32 * _626) + 96
                    _770 = mem[_198]
                    mem[_578 + (32 * _626) + 96] = mem[_198]
                    mem[_578 + (32 * _626) + 128 len 32 * _770] = mem[_198 + 32 len 32 * _770]
                    return memory
                      from mem[64]
                       len _578 + (32 * _626) + (32 * _770) + -mem[64] + 128
                mem[_198 + 32 len 32 * s] = call.data[calldata.size len 32 * s]
                t = 0
                while t < s:
                    require t < mem[96]
                    require t < mem[_194]
                    mem[(32 * t) + _194 + 32] = mem[(32 * t) + 140 len 20]
                    require t < mem[(32 * arg2.length) + 128]
                    require t < mem[_198]
                    mem[(32 * t) + _198 + 32] = mem[(32 * t) + (32 * arg2.length) + 160]
                    t = t + 1
                    continue 
                _581 = mem[64]
                mem[mem[64]] = 64
                _628 = mem[_194]
                mem[mem[64] + 64] = mem[_194]
                idx = 0
                s = _194 + 32
                t = mem[64] + 96
                while idx < _628:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_581 + 32] = (32 * _628) + 96
                _772 = mem[_198]
                mem[_581 + (32 * _628) + 96] = mem[_198]
                mem[_581 + (32 * _628) + 128 len 32 * _772] = mem[_198 + 32 len 32 * _772]
                return memory
                  from mem[64]
                   len _581 + (32 * _628) + (32 * _772) + -mem[64] + 128
            mem[mem[64] + 32 len 32 * s] = call.data[calldata.size len 32 * s]
            require s <= test266151307()
            mem[mem[64] + (32 * s) + 32] = s
            mem[64] = _194 + (64 * s) + 64
            if not s:
                t = 0
                while t < s:
                    require t < mem[96]
                    require t < mem[_194]
                    mem[(32 * t) + _194 + 32] = mem[(32 * t) + 140 len 20]
                    require t < mem[(32 * arg2.length) + 128]
                    require t < mem[_194 + (32 * s) + 32]
                    mem[(32 * t) + _194 + (32 * s) + 64] = mem[(32 * t) + (32 * arg2.length) + 160]
                    t = t + 1
                    continue 
                _584 = mem[64]
                mem[mem[64]] = 64
                _630 = mem[_194]
                mem[mem[64] + 64] = mem[_194]
                idx = 0
                t = _194 + 32
                u = mem[64] + 96
                while idx < _630:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_584 + 32] = (32 * _630) + 96
                _774 = mem[_194 + (32 * s) + 32]
                mem[_584 + (32 * _630) + 96] = mem[_194 + (32 * s) + 32]
                mem[_584 + (32 * _630) + 128 len 32 * _774] = mem[_194 + (32 * s) + 64 len 32 * _774]
                return memory
                  from mem[64]
                   len _584 + (32 * _630) + (32 * _774) + -mem[64] + 128
            mem[_194 + (32 * s) + 64 len 32 * s] = call.data[calldata.size len 32 * s]
            t = 0
            while t < s:
                require t < mem[96]
                require t < mem[_194]
                mem[(32 * t) + _194 + 32] = mem[(32 * t) + 140 len 20]
                require t < mem[(32 * arg2.length) + 128]
                require t < mem[_194 + (32 * s) + 32]
                mem[(32 * t) + _194 + (32 * s) + 64] = mem[(32 * t) + (32 * arg2.length) + 160]
                t = t + 1
                continue 
            _587 = mem[64]
            mem[mem[64]] = 64
            _632 = mem[_194]
            mem[mem[64] + 64] = mem[_194]
            idx = 0
            t = _194 + 32
            u = mem[64] + 96
            while idx < _632:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_587 + 32] = (32 * _632) + 96
            _776 = mem[_194 + (32 * s) + 32]
            mem[_587 + (32 * _632) + 96] = mem[_194 + (32 * s) + 32]
            mem[_587 + (32 * _632) + 128 len 32 * _776] = mem[_194 + (32 * s) + 64 len 32 * _776]
            return memory
              from mem[64]
               len _587 + (32 * _632) + (32 * _776) + -mem[64] + 128
        mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        idx = 0
        s = 0
        while idx < arg2.length:
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = 1
            if arg1 + 10000 < 10000:
                revert with 0, 'SafeMath: addition overflow'
            require idx < arg3.length
            if not cd[((32 * idx) + arg3 + 36)]:
                _415 = mem[64]
                mem[64] = mem[64] + 64
                mem[_415] = 26
                mem[_415 + 32] = 'SafeMath: division by zero'
                if assetPrice[address(cd[((32 * idx) + arg2 + 36)])].field_128 <= 0:
                    _427 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_427] = 30
                    mem[_427 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > 10000:
                        _435 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _435 + 68] = mem[idx + _427 + 32]
                            idx = idx + 32
                            continue 
                        mem[_435 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _435 + -mem[64] + 100
                    require idx < arg3.length
                    if not cd[((32 * idx) + arg3 + 36)]:
                        _495 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_495] = 26
                        mem[_495 + 32] = 'SafeMath: division by zero'
                        if assetPrice[address(cd[((32 * idx) + arg2 + 36)])].field_128 >= 0:
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        if (10000 * cd[((32 * idx) + arg3 + 36)]) - (arg1 * cd[((32 * idx) + arg3 + 36)]) / cd[((32 * idx) + arg3 + 36)] != -arg1 + 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _506 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_506] = 26
                        mem[_506 + 32] = 'SafeMath: division by zero'
                        if assetPrice[address(cd[((32 * idx) + arg2 + 36)])].field_128 >= (10000 * cd[((32 * idx) + arg3 + 36)]) - (arg1 * cd[((32 * idx) + arg3 + 36)]) / 10000:
                            idx = idx + 1
                            s = s
                            continue 
            else:
                if (10000 * cd[((32 * idx) + arg3 + 36)]) + (arg1 * cd[((32 * idx) + arg3 + 36)]) / cd[((32 * idx) + arg3 + 36)] != arg1 + 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                _420 = mem[64]
                mem[64] = mem[64] + 64
                mem[_420] = 26
                mem[_420 + 32] = 'SafeMath: division by zero'
                if assetPrice[address(cd[((32 * idx) + arg2 + 36)])].field_128 <= (10000 * cd[((32 * idx) + arg3 + 36)]) + (arg1 * cd[((32 * idx) + arg3 + 36)]) / 10000:
                    _431 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_431] = 30
                    mem[_431 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > 10000:
                        _440 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _440 + 68] = mem[idx + _431 + 32]
                            idx = idx + 32
                            continue 
                        mem[_440 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _440 + -mem[64] + 100
                    require idx < arg3.length
                    if not cd[((32 * idx) + arg3 + 36)]:
                        _505 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_505] = 26
                        mem[_505 + 32] = 'SafeMath: division by zero'
                        if assetPrice[address(cd[((32 * idx) + arg2 + 36)])].field_128 >= 0:
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        if (10000 * cd[((32 * idx) + arg3 + 36)]) - (arg1 * cd[((32 * idx) + arg3 + 36)]) / cd[((32 * idx) + arg3 + 36)] != -arg1 + 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _516 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_516] = 26
                        mem[_516 + 32] = 'SafeMath: division by zero'
                        if assetPrice[address(cd[((32 * idx) + arg2 + 36)])].field_128 >= (10000 * cd[((32 * idx) + arg3 + 36)]) - (arg1 * cd[((32 * idx) + arg3 + 36)]) / 10000:
                            idx = idx + 1
                            s = s
                            continue 
            require idx < arg2.length
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            require s < mem[96]
            mem[(32 * s) + 128] = address(cd[((32 * idx) + arg2 + 36)])
            require idx < arg3.length
            require s < mem[(32 * arg2.length) + 128]
            mem[(32 * s) + (32 * arg2.length) + 160] = cd[((32 * idx) + arg3 + 36)]
            idx = idx + 1
            s = s + 1
            continue 
        require s <= test266151307()
        _195 = mem[64]
        if not s:
            require s <= test266151307()
            _199 = mem[64] + (32 * s) + 32
            mem[mem[64] + (32 * s) + 32] = s
            mem[64] = _199 + (32 * s) + 32
            if not s:
                t = 0
                while t < s:
                    require t < mem[96]
                    require t < mem[_195]
                    mem[(32 * t) + _195 + 32] = mem[(32 * t) + 140 len 20]
                    require t < mem[(32 * arg2.length) + 128]
                    require t < mem[_199]
                    mem[(32 * t) + _199 + 32] = mem[(32 * t) + (32 * arg2.length) + 160]
                    t = t + 1
                    continue 
                _590 = mem[64]
                mem[mem[64]] = 64
                _636 = mem[_195]
                mem[mem[64] + 64] = mem[_195]
                idx = 0
                s = _195 + 32
                t = mem[64] + 96
                while idx < _636:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_590 + 32] = (32 * _636) + 96
                _778 = mem[_199]
                mem[_590 + (32 * _636) + 96] = mem[_199]
                mem[_590 + (32 * _636) + 128 len 32 * _778] = mem[_199 + 32 len 32 * _778]
                return memory
                  from mem[64]
                   len _590 + (32 * _636) + (32 * _778) + -mem[64] + 128
            mem[_199 + 32 len 32 * s] = call.data[calldata.size len 32 * s]
            t = 0
            while t < s:
                require t < mem[96]
                require t < mem[_195]
                mem[(32 * t) + _195 + 32] = mem[(32 * t) + 140 len 20]
                require t < mem[(32 * arg2.length) + 128]
                require t < mem[_199]
                mem[(32 * t) + _199 + 32] = mem[(32 * t) + (32 * arg2.length) + 160]
                t = t + 1
                continue 
            _593 = mem[64]
            mem[mem[64]] = 64
            _638 = mem[_195]
            mem[mem[64] + 64] = mem[_195]
            idx = 0
            s = _195 + 32
            t = mem[64] + 96
            while idx < _638:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_593 + 32] = (32 * _638) + 96
            _780 = mem[_199]
            mem[_593 + (32 * _638) + 96] = mem[_199]
            mem[_593 + (32 * _638) + 128 len 32 * _780] = mem[_199 + 32 len 32 * _780]
            return memory
              from mem[64]
               len _593 + (32 * _638) + (32 * _780) + -mem[64] + 128
        mem[mem[64] + 32 len 32 * s] = call.data[calldata.size len 32 * s]
        require s <= test266151307()
        mem[mem[64] + (32 * s) + 32] = s
        mem[64] = _195 + (64 * s) + 64
        if not s:
            t = 0
            while t < s:
                require t < mem[96]
                require t < mem[_195]
                mem[(32 * t) + _195 + 32] = mem[(32 * t) + 140 len 20]
                require t < mem[(32 * arg2.length) + 128]
                require t < mem[_195 + (32 * s) + 32]
                mem[(32 * t) + _195 + (32 * s) + 64] = mem[(32 * t) + (32 * arg2.length) + 160]
                t = t + 1
                continue 
            _596 = mem[64]
            mem[mem[64]] = 64
            _640 = mem[_195]
            mem[mem[64] + 64] = mem[_195]
            idx = 0
            t = _195 + 32
            u = mem[64] + 96
            while idx < _640:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_596 + 32] = (32 * _640) + 96
            _782 = mem[_195 + (32 * s) + 32]
            mem[_596 + (32 * _640) + 96] = mem[_195 + (32 * s) + 32]
            mem[_596 + (32 * _640) + 128 len 32 * _782] = mem[_195 + (32 * s) + 64 len 32 * _782]
            return memory
              from mem[64]
               len _596 + (32 * _640) + (32 * _782) + -mem[64] + 128
        mem[_195 + (32 * s) + 64 len 32 * s] = call.data[calldata.size len 32 * s]
        t = 0
        while t < s:
            require t < mem[96]
            require t < mem[_195]
            mem[(32 * t) + _195 + 32] = mem[(32 * t) + 140 len 20]
            require t < mem[(32 * arg2.length) + 128]
            require t < mem[_195 + (32 * s) + 32]
            mem[(32 * t) + _195 + (32 * s) + 64] = mem[(32 * t) + (32 * arg2.length) + 160]
            t = t + 1
            continue 
        _599 = mem[64]
        mem[mem[64]] = 64
        _642 = mem[_195]
        mem[mem[64] + 64] = mem[_195]
        idx = 0
        t = _195 + 32
        u = mem[64] + 96
        while idx < _642:
            mem[u] = mem[t + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_599 + 32] = (32 * _642) + 96
        _784 = mem[_195 + (32 * s) + 32]
        mem[_599 + (32 * _642) + 96] = mem[_195 + (32 * s) + 32]
        mem[_599 + (32 * _642) + 128 len 32 * _784] = mem[_195 + (32 * s) + 64 len 32 * _784]
        return memory
          from mem[64]
           len _599 + (32 * _642) + (32 * _784) + -mem[64] + 128
    mem[128 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = arg2.length
    mem[64] = (64 * arg2.length) + 160
    if not arg2.length:
        idx = 0
        s = 0
        while idx < arg2.length:
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = 1
            if arg1 + 10000 < 10000:
                revert with 0, 'SafeMath: addition overflow'
            require idx < arg3.length
            if not cd[((32 * idx) + arg3 + 36)]:
                _416 = mem[64]
                mem[64] = mem[64] + 64
                mem[_416] = 26
                mem[_416 + 32] = 'SafeMath: division by zero'
                if assetPrice[address(cd[((32 * idx) + arg2 + 36)])].field_128 <= 0:
                    _428 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_428] = 30
                    mem[_428 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > 10000:
                        _436 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _436 + 68] = mem[idx + _428 + 32]
                            idx = idx + 32
                            continue 
                        mem[_436 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _436 + -mem[64] + 100
                    require idx < arg3.length
                    if not cd[((32 * idx) + arg3 + 36)]:
                        _498 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_498] = 26
                        mem[_498 + 32] = 'SafeMath: division by zero'
                        if assetPrice[address(cd[((32 * idx) + arg2 + 36)])].field_128 >= 0:
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        if (10000 * cd[((32 * idx) + arg3 + 36)]) - (arg1 * cd[((32 * idx) + arg3 + 36)]) / cd[((32 * idx) + arg3 + 36)] != -arg1 + 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _509 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_509] = 26
                        mem[_509 + 32] = 'SafeMath: division by zero'
                        if assetPrice[address(cd[((32 * idx) + arg2 + 36)])].field_128 >= (10000 * cd[((32 * idx) + arg3 + 36)]) - (arg1 * cd[((32 * idx) + arg3 + 36)]) / 10000:
                            idx = idx + 1
                            s = s
                            continue 
            else:
                if (10000 * cd[((32 * idx) + arg3 + 36)]) + (arg1 * cd[((32 * idx) + arg3 + 36)]) / cd[((32 * idx) + arg3 + 36)] != arg1 + 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                _422 = mem[64]
                mem[64] = mem[64] + 64
                mem[_422] = 26
                mem[_422 + 32] = 'SafeMath: division by zero'
                if assetPrice[address(cd[((32 * idx) + arg2 + 36)])].field_128 <= (10000 * cd[((32 * idx) + arg3 + 36)]) + (arg1 * cd[((32 * idx) + arg3 + 36)]) / 10000:
                    _432 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_432] = 30
                    mem[_432 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > 10000:
                        _442 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _442 + 68] = mem[idx + _432 + 32]
                            idx = idx + 32
                            continue 
                        mem[_442 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _442 + -mem[64] + 100
                    require idx < arg3.length
                    if not cd[((32 * idx) + arg3 + 36)]:
                        _508 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_508] = 26
                        mem[_508 + 32] = 'SafeMath: division by zero'
                        if assetPrice[address(cd[((32 * idx) + arg2 + 36)])].field_128 >= 0:
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        if (10000 * cd[((32 * idx) + arg3 + 36)]) - (arg1 * cd[((32 * idx) + arg3 + 36)]) / cd[((32 * idx) + arg3 + 36)] != -arg1 + 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _518 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_518] = 26
                        mem[_518 + 32] = 'SafeMath: division by zero'
                        if assetPrice[address(cd[((32 * idx) + arg2 + 36)])].field_128 >= (10000 * cd[((32 * idx) + arg3 + 36)]) - (arg1 * cd[((32 * idx) + arg3 + 36)]) / 10000:
                            idx = idx + 1
                            s = s
                            continue 
            require idx < arg2.length
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            require s < mem[96]
            mem[(32 * s) + 128] = address(cd[((32 * idx) + arg2 + 36)])
            require idx < arg3.length
            require s < mem[(32 * arg2.length) + 128]
            mem[(32 * s) + (32 * arg2.length) + 160] = cd[((32 * idx) + arg3 + 36)]
            idx = idx + 1
            s = s + 1
            continue 
        require s <= test266151307()
        _196 = mem[64]
        if not s:
            require s <= test266151307()
            _200 = mem[64] + (32 * s) + 32
            mem[mem[64] + (32 * s) + 32] = s
            mem[64] = _200 + (32 * s) + 32
            if not s:
                t = 0
                while t < s:
                    require t < mem[96]
                    require t < mem[_196]
                    mem[(32 * t) + _196 + 32] = mem[(32 * t) + 140 len 20]
                    require t < mem[(32 * arg2.length) + 128]
                    require t < mem[_200]
                    mem[(32 * t) + _200 + 32] = mem[(32 * t) + (32 * arg2.length) + 160]
                    t = t + 1
                    continue 
                _602 = mem[64]
                mem[mem[64]] = 64
                _646 = mem[_196]
                mem[mem[64] + 64] = mem[_196]
                idx = 0
                s = _196 + 32
                t = mem[64] + 96
                while idx < _646:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_602 + 32] = (32 * _646) + 96
                _786 = mem[_200]
                mem[_602 + (32 * _646) + 96] = mem[_200]
                mem[_602 + (32 * _646) + 128 len 32 * _786] = mem[_200 + 32 len 32 * _786]
                return memory
                  from mem[64]
                   len _602 + (32 * _646) + (32 * _786) + -mem[64] + 128
            mem[_200 + 32 len 32 * s] = call.data[calldata.size len 32 * s]
            t = 0
            while t < s:
                require t < mem[96]
                require t < mem[_196]
                mem[(32 * t) + _196 + 32] = mem[(32 * t) + 140 len 20]
                require t < mem[(32 * arg2.length) + 128]
                require t < mem[_200]
                mem[(32 * t) + _200 + 32] = mem[(32 * t) + (32 * arg2.length) + 160]
                t = t + 1
                continue 
            _605 = mem[64]
            mem[mem[64]] = 64
            _648 = mem[_196]
            mem[mem[64] + 64] = mem[_196]
            idx = 0
            s = _196 + 32
            t = mem[64] + 96
            while idx < _648:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_605 + 32] = (32 * _648) + 96
            _788 = mem[_200]
            mem[_605 + (32 * _648) + 96] = mem[_200]
            mem[_605 + (32 * _648) + 128 len 32 * _788] = mem[_200 + 32 len 32 * _788]
            return memory
              from mem[64]
               len _605 + (32 * _648) + (32 * _788) + -mem[64] + 128
        mem[mem[64] + 32 len 32 * s] = call.data[calldata.size len 32 * s]
        require s <= test266151307()
        mem[mem[64] + (32 * s) + 32] = s
        mem[64] = _196 + (64 * s) + 64
        if not s:
            t = 0
            while t < s:
                require t < mem[96]
                require t < mem[_196]
                mem[(32 * t) + _196 + 32] = mem[(32 * t) + 140 len 20]
                require t < mem[(32 * arg2.length) + 128]
                require t < mem[_196 + (32 * s) + 32]
                mem[(32 * t) + _196 + (32 * s) + 64] = mem[(32 * t) + (32 * arg2.length) + 160]
                t = t + 1
                continue 
            _608 = mem[64]
            mem[mem[64]] = 64
            _650 = mem[_196]
            mem[mem[64] + 64] = mem[_196]
            idx = 0
            t = _196 + 32
            u = mem[64] + 96
            while idx < _650:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_608 + 32] = (32 * _650) + 96
            _790 = mem[_196 + (32 * s) + 32]
            mem[_608 + (32 * _650) + 96] = mem[_196 + (32 * s) + 32]
            mem[_608 + (32 * _650) + 128 len 32 * _790] = mem[_196 + (32 * s) + 64 len 32 * _790]
            return memory
              from mem[64]
               len _608 + (32 * _650) + (32 * _790) + -mem[64] + 128
        mem[_196 + (32 * s) + 64 len 32 * s] = call.data[calldata.size len 32 * s]
        t = 0
        while t < s:
            require t < mem[96]
            require t < mem[_196]
            mem[(32 * t) + _196 + 32] = mem[(32 * t) + 140 len 20]
            require t < mem[(32 * arg2.length) + 128]
            require t < mem[_196 + (32 * s) + 32]
            mem[(32 * t) + _196 + (32 * s) + 64] = mem[(32 * t) + (32 * arg2.length) + 160]
            t = t + 1
            continue 
        _611 = mem[64]
        mem[mem[64]] = 64
        _652 = mem[_196]
        mem[mem[64] + 64] = mem[_196]
        idx = 0
        t = _196 + 32
        u = mem[64] + 96
        while idx < _652:
            mem[u] = mem[t + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_611 + 32] = (32 * _652) + 96
        _792 = mem[_196 + (32 * s) + 32]
        mem[_611 + (32 * _652) + 96] = mem[_196 + (32 * s) + 32]
        mem[_611 + (32 * _652) + 128 len 32 * _792] = mem[_196 + (32 * s) + 64 len 32 * _792]
        return memory
          from mem[64]
           len _611 + (32 * _652) + (32 * _792) + -mem[64] + 128
    mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    idx = 0
    s = 0
    while idx < arg2.length:
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        mem[0] = address(cd[((32 * idx) + arg2 + 36)])
        mem[32] = 1
        if arg1 + 10000 < 10000:
            revert with 0, 'SafeMath: addition overflow'
        require idx < arg3.length
        if not cd[((32 * idx) + arg3 + 36)]:
            _417 = mem[64]
            mem[64] = mem[64] + 64
            mem[_417] = 26
            mem[_417 + 32] = 'SafeMath: division by zero'
            if assetPrice[address(cd[((32 * idx) + arg2 + 36)])].field_128 <= 0:
                _429 = mem[64]
                mem[64] = mem[64] + 64
                mem[_429] = 30
                mem[_429 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > 10000:
                    _437 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _437 + 68] = mem[idx + _429 + 32]
                        idx = idx + 32
                        continue 
                    mem[_437 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _437 + -mem[64] + 100
                require idx < arg3.length
                if not cd[((32 * idx) + arg3 + 36)]:
                    _501 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_501] = 26
                    mem[_501 + 32] = 'SafeMath: division by zero'
                    if assetPrice[address(cd[((32 * idx) + arg2 + 36)])].field_128 >= 0:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if (10000 * cd[((32 * idx) + arg3 + 36)]) - (arg1 * cd[((32 * idx) + arg3 + 36)]) / cd[((32 * idx) + arg3 + 36)] != -arg1 + 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _512 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_512] = 26
                    mem[_512 + 32] = 'SafeMath: division by zero'
                    if assetPrice[address(cd[((32 * idx) + arg2 + 36)])].field_128 >= (10000 * cd[((32 * idx) + arg3 + 36)]) - (arg1 * cd[((32 * idx) + arg3 + 36)]) / 10000:
                        idx = idx + 1
                        s = s
                        continue 
        else:
            if (10000 * cd[((32 * idx) + arg3 + 36)]) + (arg1 * cd[((32 * idx) + arg3 + 36)]) / cd[((32 * idx) + arg3 + 36)] != arg1 + 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            _424 = mem[64]
            mem[64] = mem[64] + 64
            mem[_424] = 26
            mem[_424 + 32] = 'SafeMath: division by zero'
            if assetPrice[address(cd[((32 * idx) + arg2 + 36)])].field_128 <= (10000 * cd[((32 * idx) + arg3 + 36)]) + (arg1 * cd[((32 * idx) + arg3 + 36)]) / 10000:
                _433 = mem[64]
                mem[64] = mem[64] + 64
                mem[_433] = 30
                mem[_433 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > 10000:
                    _444 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _444 + 68] = mem[idx + _433 + 32]
                        idx = idx + 32
                        continue 
                    mem[_444 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _444 + -mem[64] + 100
                require idx < arg3.length
                if not cd[((32 * idx) + arg3 + 36)]:
                    _511 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_511] = 26
                    mem[_511 + 32] = 'SafeMath: division by zero'
                    if assetPrice[address(cd[((32 * idx) + arg2 + 36)])].field_128 >= 0:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if (10000 * cd[((32 * idx) + arg3 + 36)]) - (arg1 * cd[((32 * idx) + arg3 + 36)]) / cd[((32 * idx) + arg3 + 36)] != -arg1 + 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _520 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_520] = 26
                    mem[_520 + 32] = 'SafeMath: division by zero'
                    if assetPrice[address(cd[((32 * idx) + arg2 + 36)])].field_128 >= (10000 * cd[((32 * idx) + arg3 + 36)]) - (arg1 * cd[((32 * idx) + arg3 + 36)]) / 10000:
                        idx = idx + 1
                        s = s
                        continue 
        require idx < arg2.length
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        require s < mem[96]
        mem[(32 * s) + 128] = address(cd[((32 * idx) + arg2 + 36)])
        require idx < arg3.length
        require s < mem[(32 * arg2.length) + 128]
        mem[(32 * s) + (32 * arg2.length) + 160] = cd[((32 * idx) + arg3 + 36)]
        idx = idx + 1
        s = s + 1
        continue 
    require s <= test266151307()
    _197 = mem[64]
    if not s:
        require s <= test266151307()
        _201 = mem[64] + (32 * s) + 32
        mem[mem[64] + (32 * s) + 32] = s
        mem[64] = _201 + (32 * s) + 32
        if not s:
            t = 0
            while t < s:
                require t < mem[96]
                require t < mem[_197]
                mem[(32 * t) + _197 + 32] = mem[(32 * t) + 140 len 20]
                require t < mem[(32 * arg2.length) + 128]
                require t < mem[_201]
                mem[(32 * t) + _201 + 32] = mem[(32 * t) + (32 * arg2.length) + 160]
                t = t + 1
                continue 
            _614 = mem[64]
            mem[mem[64]] = 64
            _656 = mem[_197]
            mem[mem[64] + 64] = mem[_197]
            idx = 0
            s = _197 + 32
            t = mem[64] + 96
            while idx < _656:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_614 + 32] = (32 * _656) + 96
            _794 = mem[_201]
            mem[_614 + (32 * _656) + 96] = mem[_201]
            mem[_614 + (32 * _656) + 128 len 32 * _794] = mem[_201 + 32 len 32 * _794]
            return memory
              from mem[64]
               len _614 + (32 * _656) + (32 * _794) + -mem[64] + 128
        mem[_201 + 32 len 32 * s] = call.data[calldata.size len 32 * s]
        t = 0
        while t < s:
            require t < mem[96]
            require t < mem[_197]
            mem[(32 * t) + _197 + 32] = mem[(32 * t) + 140 len 20]
            require t < mem[(32 * arg2.length) + 128]
            require t < mem[_201]
            mem[(32 * t) + _201 + 32] = mem[(32 * t) + (32 * arg2.length) + 160]
            t = t + 1
            continue 
        _617 = mem[64]
        mem[mem[64]] = 64
        _658 = mem[_197]
        mem[mem[64] + 64] = mem[_197]
        idx = 0
        s = _197 + 32
        t = mem[64] + 96
        while idx < _658:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_617 + 32] = (32 * _658) + 96
        _796 = mem[_201]
        mem[_617 + (32 * _658) + 96] = mem[_201]
        mem[_617 + (32 * _658) + 128 len 32 * _796] = mem[_201 + 32 len 32 * _796]
        return memory
          from mem[64]
           len _617 + (32 * _658) + (32 * _796) + -mem[64] + 128
    mem[mem[64] + 32 len 32 * s] = call.data[calldata.size len 32 * s]
    require s <= test266151307()
    mem[mem[64] + (32 * s) + 32] = s
    mem[64] = _197 + (64 * s) + 64
    if not s:
        t = 0
        while t < s:
            require t < mem[96]
            require t < mem[_197]
            mem[(32 * t) + _197 + 32] = mem[(32 * t) + 140 len 20]
            require t < mem[(32 * arg2.length) + 128]
            require t < mem[_197 + (32 * s) + 32]
            mem[(32 * t) + _197 + (32 * s) + 64] = mem[(32 * t) + (32 * arg2.length) + 160]
            t = t + 1
            continue 
        _620 = mem[64]
        mem[mem[64]] = 64
        _660 = mem[_197]
        mem[mem[64] + 64] = mem[_197]
        idx = 0
        t = _197 + 32
        u = mem[64] + 96
        while idx < _660:
            mem[u] = mem[t + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_620 + 32] = (32 * _660) + 96
        _798 = mem[_197 + (32 * s) + 32]
        mem[_620 + (32 * _660) + 96] = mem[_197 + (32 * s) + 32]
        mem[_620 + (32 * _660) + 128 len 32 * _798] = mem[_197 + (32 * s) + 64 len 32 * _798]
        return memory
          from mem[64]
           len _620 + (32 * _660) + (32 * _798) + -mem[64] + 128
    mem[_197 + (32 * s) + 64 len 32 * s] = call.data[calldata.size len 32 * s]
    t = 0
    while t < s:
        require t < mem[96]
        require t < mem[_197]
        mem[(32 * t) + _197 + 32] = mem[(32 * t) + 140 len 20]
        require t < mem[(32 * arg2.length) + 128]
        require t < mem[_197 + (32 * s) + 32]
        mem[(32 * t) + _197 + (32 * s) + 64] = mem[(32 * t) + (32 * arg2.length) + 160]
        t = t + 1
        continue 
    _623 = mem[64]
    mem[mem[64]] = 64
    _662 = mem[_197]
    mem[mem[64] + 64] = mem[_197]
    idx = 0
    t = _197 + 32
    u = mem[64] + 96
    while idx < _662:
        mem[u] = mem[t + 12 len 20]
        idx = idx + 1
        t = t + 32
        u = u + 32
        continue 
    mem[_623 + 32] = (32 * _662) + 96
    _800 = mem[_197 + (32 * s) + 32]
    mem[_623 + (32 * _662) + 96] = mem[_197 + (32 * s) + 32]
    mem[_623 + (32 * _662) + 128 len 32 * _800] = mem[_197 + (32 * s) + 64 len 32 * _800]
    return memory
      from mem[64]
       len _623 + (32 * _662) + (32 * _800) + -mem[64] + 128
}



}
