contract main {




// =====================  Runtime code  =====================


const ETH = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const USDT = 0xc7198437980c041c805a1edcba50c1ce5db95118


address owner;
mapping of address tokenFeeds;
address unirouterAddress;
uint8 stor3; offset 160
uint128 stor3; offset 160
address keeperAddress;
mapping of struct prices;
address stor5C4D;

function unirouter() payable {
    return unirouterAddress
}

function isManualMode() payable {
    return bool(uint8(stor3.field_160))
}

function owner() payable {
    return owner
}

function keeper() payable {
    return keeperAddress
}

function prices(address arg1) payable {
    require calldata.size - 4 >= 32
    return prices[arg1].field_0, prices[arg1].field_256, prices[arg1].field_512
}

function tokenFeeds(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokenFeeds[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setUnirouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    unirouterAddress = arg1
}

function setTokenFeed(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    tokenFeeds[address(arg1)] = arg2
}

function setManualMode(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    Mask(96, 0, stor3.field_160) = Mask(96, 0, arg1)
}

function setTokenPrice(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!keeper'
    if bool(uint8(stor3.field_160)) != 1:
        revert with 0, 'Should be manual mode'
    prices[address(arg1)].field_0 = arg2
    prices[address(arg1)].field_256 = arg3
    prices[address(arg1)].field_512 = block.timestamp
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function priceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    mem[0] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[32] = 1
    if not stor5C4D:
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            mem[160] = 0xc7198437980c041c805a1edcba50c1ce5db95118
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = 10^uint8(ext_call.return_data[0] - 2)
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(unirouterAddress)
            staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _199 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
            require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_199 + 192])] = mem[_199 + 224 len floor32(mem[_199 + 192])]
            if 1 < mem[ceil32(return_data.size) + 192]:
                return 10^18, 10^14 * mem[ceil32(return_data.size) + 256]
        else:
            if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg1:
                mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                mem[228] = 64
                mem[260] = 2
                mem[292 len 0] = None
                require ext_code.size(unirouterAddress)
                staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _197 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                _214 = mem[_197 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_197 + 192])] = mem[_197 + 224 len floor32(mem[_197 + 192])]
                require 1 < mem[ceil32(return_data.size) + 192]
                mem[(32 * _214) + ceil32(return_data.size) + 224] = 100 * mem[ceil32(return_data.size) + 256]
                return mem[(32 * _214) + ceil32(return_data.size) + 224], 10^18
            mem[96] = 2
            mem[128] = arg1
            mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[192] = 3
            mem[224] = arg1
            mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[288] = 0xc7198437980c041c805a1edcba50c1ce5db95118
            mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[324] = 10^uint8(ext_call.return_data[0] - 2)
            mem[356] = 64
            mem[388] = 2
            mem[420 len 0] = None
            require ext_code.size(unirouterAddress)
            staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[420 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 320
            require return_data.size >= 32
            _195 = mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
            require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
            require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
            require mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]
            _213 = mem[_195 + 320]
            mem[ceil32(return_data.size) + 352 len floor32(mem[_195 + 320])] = mem[_195 + 352 len floor32(mem[_195 + 320])]
            if 1 < mem[ceil32(return_data.size) + 320]:
                _287 = mem[ceil32(return_data.size) + 384]
                mem[(32 * _213) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _213) + ceil32(return_data.size) + 356] = 10^uint8(ext_call.return_data[0] - 2)
                mem[(32 * _213) + ceil32(return_data.size) + 388] = 64
                mem[(32 * _213) + ceil32(return_data.size) + 420] = 3
                mem[(32 * _213) + ceil32(return_data.size) + 452 len 0] = None
                require ext_code.size(unirouterAddress)
                staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^uint8(ext_call.return_data[0] - 2), Array(len=3, data=mem[(32 * _213) + ceil32(return_data.size) + 452 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _213) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _213) + (2 * ceil32(return_data.size)) + 352
                require return_data.size >= 32
                _337 = mem[(32 * _213) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                require mem[(32 * _213) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                require mem[(32 * _213) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                require mem[(32 * _213) + ceil32(return_data.size) + mem[(32 * _213) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352] <= 4294967296 and mem[(32 * _213) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[(32 * _213) + ceil32(return_data.size) + mem[(32 * _213) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]) + 32 <= return_data.size
                mem[(32 * _213) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _213) + ceil32(return_data.size) + mem[(32 * _213) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]
                mem[(32 * _213) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _213) + ceil32(return_data.size) + _337 + 352])] = mem[(32 * _213) + ceil32(return_data.size) + _337 + 384 len floor32(mem[(32 * _213) + ceil32(return_data.size) + _337 + 352])]
                if 2 < mem[(32 * _213) + (2 * ceil32(return_data.size)) + 352]:
                    return 100 * _287, 10^14 * mem[(32 * _213) + (2 * ceil32(return_data.size)) + 448]
    else:
        mem[0] = arg1
        mem[32] = 1
        if tokenFeeds[address(arg1)]:
            require ext_code.size(tokenFeeds[address(arg1)])
            staticcall tokenFeeds[address(arg1)].latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_code.size(stor5C4D)
            staticcall stor5C4D.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            if not ext_call.return_data[32]:
                if ext_call.return_data[32] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[32]:
                    return 0 / ext_call.return_data[32], 0
            else:
                if 10^10 * ext_call.return_data[32] / ext_call.return_data[32] != 10^10:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 31]
                if not 10^10 * ext_call.return_data[32]:
                    if ext_call.return_data[32] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[32]:
                        return 0 / ext_call.return_data[32], 10^10 * ext_call.return_data[32]
                else:
                    if 10^18 * ext_call.return_data[32] / 10^10 * ext_call.return_data[32] != 100 * 10^6:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 31]
                    if ext_call.return_data[32] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[32]:
                        return 10^18 * ext_call.return_data[32] / ext_call.return_data[32], 10^10 * ext_call.return_data[32]
            ('iszero', ('ext_call.return_data', 32, 32))
        else:
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                mem[160] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                mem[228] = 64
                mem[260] = 2
                mem[292 len 0] = None
                require ext_code.size(unirouterAddress)
                staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _205 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_205 + 192])] = mem[_205 + 224 len floor32(mem[_205 + 192])]
                if 1 < mem[ceil32(return_data.size) + 192]:
                    return 10^18, 10^14 * mem[ceil32(return_data.size) + 256]
            else:
                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg1:
                    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                    mem[228] = 64
                    mem[260] = 2
                    mem[292 len 0] = None
                    require ext_code.size(unirouterAddress)
                    staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _203 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                    require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                    _217 = mem[_203 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_203 + 192])] = mem[_203 + 224 len floor32(mem[_203 + 192])]
                    require 1 < mem[ceil32(return_data.size) + 192]
                    mem[(32 * _217) + ceil32(return_data.size) + 224] = 100 * mem[ceil32(return_data.size) + 256]
                    return mem[(32 * _217) + ceil32(return_data.size) + 224], 10^18
                mem[96] = 2
                mem[128] = arg1
                mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[192] = 3
                mem[224] = arg1
                mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[288] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[324] = 10^uint8(ext_call.return_data[0] - 2)
                mem[356] = 64
                mem[388] = 2
                mem[420 len 0] = None
                require ext_code.size(unirouterAddress)
                staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[420 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 320
                require return_data.size >= 32
                _201 = mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                require mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]
                _216 = mem[_201 + 320]
                mem[ceil32(return_data.size) + 352 len floor32(mem[_201 + 320])] = mem[_201 + 352 len floor32(mem[_201 + 320])]
                if 1 < mem[ceil32(return_data.size) + 320]:
                    _293 = mem[ceil32(return_data.size) + 384]
                    mem[(32 * _216) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _216) + ceil32(return_data.size) + 356] = 10^uint8(ext_call.return_data[0] - 2)
                    mem[(32 * _216) + ceil32(return_data.size) + 388] = 64
                    mem[(32 * _216) + ceil32(return_data.size) + 420] = 3
                    mem[(32 * _216) + ceil32(return_data.size) + 452 len 0] = None
                    require ext_code.size(unirouterAddress)
                    staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^uint8(ext_call.return_data[0] - 2), Array(len=3, data=mem[(32 * _216) + ceil32(return_data.size) + 452 len 96])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _216) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _216) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _339 = mem[(32 * _216) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                    require mem[(32 * _216) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                    require mem[(32 * _216) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                    require mem[(32 * _216) + ceil32(return_data.size) + mem[(32 * _216) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352] <= 4294967296 and mem[(32 * _216) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[(32 * _216) + ceil32(return_data.size) + mem[(32 * _216) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]) + 32 <= return_data.size
                    mem[(32 * _216) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _216) + ceil32(return_data.size) + mem[(32 * _216) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]
                    mem[(32 * _216) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _216) + ceil32(return_data.size) + _339 + 352])] = mem[(32 * _216) + ceil32(return_data.size) + _339 + 384 len floor32(mem[(32 * _216) + ceil32(return_data.size) + _339 + 352])]
                    if 2 < mem[(32 * _216) + (2 * ceil32(return_data.size)) + 352]:
                        return 100 * _293, 10^14 * mem[(32 * _216) + (2 * ceil32(return_data.size)) + 448]
    revert
}

function valueOfLP(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor3.field_160):
        return arg2 * prices[address(arg1)].field_0 / 10^18, arg2 * prices[address(arg1)].field_256 / 10^18
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    mem[0] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[32] = 1
    if not stor5C4D:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            mem[160] = 0xc7198437980c041c805a1edcba50c1ce5db95118
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = 10^uint8(ext_call.return_data[0] - 2)
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(unirouterAddress)
            staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _286 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
            require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_286 + 192])] = mem[_286 + 224 len floor32(mem[_286 + 192])]
            if 1 < mem[ceil32(return_data.size) + 192]:
                require ext_code.size(arg1)
                staticcall arg1.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(arg1)
                    staticcall arg1.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        return 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * arg2 / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18), 
                               2 * 10^14 * Mask(112, 0, ext_call.return_data[0]) * mem[ceil32(return_data.size) + 256] * arg2 / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
        else:
            if 0xc7198437980c041c805a1edcba50c1ce5db95118 == address(ext_call.return_data[0]):
                mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                mem[228] = 64
                mem[260] = 2
                mem[292 len 0] = None
                require ext_code.size(unirouterAddress)
                staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _284 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_284 + 192])] = mem[_284 + 224 len floor32(mem[_284 + 192])]
                if 1 < mem[ceil32(return_data.size) + 192]:
                    require ext_code.size(arg1)
                    staticcall arg1.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(arg1)
                        staticcall arg1.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            return 2 * 100 * Mask(112, 0, ext_call.return_data[0]) * mem[ceil32(return_data.size) + 256] * arg2 / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18), 
                                   2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * arg2 / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
            else:
                mem[96] = 2
                mem[128] = address(ext_call.return_data[0])
                mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[192] = 3
                mem[224] = address(ext_call.return_data[0])
                mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[288] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[324] = 10^uint8(ext_call.return_data[0] - 2)
                mem[356] = 64
                mem[388] = 2
                mem[420 len 0] = None
                require ext_code.size(unirouterAddress)
                staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[420 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 320
                require return_data.size >= 32
                _282 = mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                require mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]
                _300 = mem[_282 + 320]
                mem[ceil32(return_data.size) + 352 len floor32(mem[_282 + 320])] = mem[_282 + 352 len floor32(mem[_282 + 320])]
                if 1 < mem[ceil32(return_data.size) + 320]:
                    _422 = mem[ceil32(return_data.size) + 384]
                    mem[(32 * _300) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _300) + ceil32(return_data.size) + 356] = 10^uint8(ext_call.return_data[0] - 2)
                    mem[(32 * _300) + ceil32(return_data.size) + 388] = 64
                    mem[(32 * _300) + ceil32(return_data.size) + 420] = 3
                    mem[(32 * _300) + ceil32(return_data.size) + 452 len 0] = None
                    require ext_code.size(unirouterAddress)
                    staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^uint8(ext_call.return_data[0] - 2), Array(len=3, data=mem[(32 * _300) + ceil32(return_data.size) + 452 len 96])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _300) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _300) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _520 = mem[(32 * _300) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                    require mem[(32 * _300) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                    require mem[(32 * _300) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                    require mem[(32 * _300) + ceil32(return_data.size) + mem[(32 * _300) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352] <= 4294967296 and mem[(32 * _300) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[(32 * _300) + ceil32(return_data.size) + mem[(32 * _300) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]) + 32 <= return_data.size
                    mem[(32 * _300) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _300) + ceil32(return_data.size) + mem[(32 * _300) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]
                    mem[(32 * _300) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _300) + ceil32(return_data.size) + _520 + 352])] = mem[(32 * _300) + ceil32(return_data.size) + _520 + 384 len floor32(mem[(32 * _300) + ceil32(return_data.size) + _520 + 352])]
                    if 2 < mem[(32 * _300) + (2 * ceil32(return_data.size)) + 352]:
                        require ext_code.size(arg1)
                        staticcall arg1.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(arg1)
                            staticcall arg1.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                return 2 * 100 * Mask(112, 0, ext_call.return_data[0]) * _422 * arg2 / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18), 
                                       2 * 10^14 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * _300) + (2 * ceil32(return_data.size)) + 448] * arg2 / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
    else:
        mem[0] = address(ext_call.return_data[0])
        mem[32] = 1
        if tokenFeeds[address(ext_call.return_data[0])]:
            require ext_code.size(tokenFeeds[address(ext_call.return_data[0])])
            staticcall tokenFeeds[address(ext_call.return_data[0])].latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_code.size(stor5C4D)
            staticcall stor5C4D.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            if not ext_call.return_data[32]:
                if ext_call.return_data[32] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[32]:
                    require ext_code.size(arg1)
                    staticcall arg1.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(arg1)
                        staticcall arg1.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            return 2 * Mask(112, 0, ext_call.return_data[0]) * 0 / ext_call.return_data[32] * arg2 / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18), 
                                   0 / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
            else:
                if 10^10 * ext_call.return_data[32] / ext_call.return_data[32] != 10^10:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 31]
                if not 10^10 * ext_call.return_data[32]:
                    if ext_call.return_data[32] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[32]:
                        require ext_code.size(arg1)
                        staticcall arg1.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(arg1)
                            staticcall arg1.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                return 2 * Mask(112, 0, ext_call.return_data[0]) * 0 / ext_call.return_data[32] * arg2 / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18), 
                                       2 * 10^10 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[32] * arg2 / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                else:
                    if 10^18 * ext_call.return_data[32] / 10^10 * ext_call.return_data[32] != 100 * 10^6:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 31]
                    if ext_call.return_data[32] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[32]:
                        require ext_code.size(arg1)
                        staticcall arg1.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(arg1)
                            staticcall arg1.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                return 2 * Mask(112, 0, ext_call.return_data[0]) * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * arg2 / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18), 
                                       2 * 10^10 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[32] * arg2 / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                mem[160] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                mem[228] = 64
                mem[260] = 2
                mem[292 len 0] = None
                require ext_code.size(unirouterAddress)
                staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _292 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_292 + 192])] = mem[_292 + 224 len floor32(mem[_292 + 192])]
                if 1 < mem[ceil32(return_data.size) + 192]:
                    require ext_code.size(arg1)
                    staticcall arg1.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(arg1)
                        staticcall arg1.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            return 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * arg2 / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18), 
                                   2 * 10^14 * Mask(112, 0, ext_call.return_data[0]) * mem[ceil32(return_data.size) + 256] * arg2 / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
            else:
                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == address(ext_call.return_data[0]):
                    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                    mem[228] = 64
                    mem[260] = 2
                    mem[292 len 0] = None
                    require ext_code.size(unirouterAddress)
                    staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _290 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                    require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_290 + 192])] = mem[_290 + 224 len floor32(mem[_290 + 192])]
                    if 1 < mem[ceil32(return_data.size) + 192]:
                        require ext_code.size(arg1)
                        staticcall arg1.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(arg1)
                            staticcall arg1.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                return 2 * 100 * Mask(112, 0, ext_call.return_data[0]) * mem[ceil32(return_data.size) + 256] * arg2 / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18), 
                                       2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * arg2 / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                else:
                    mem[96] = 2
                    mem[128] = address(ext_call.return_data[0])
                    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[192] = 3
                    mem[224] = address(ext_call.return_data[0])
                    mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[288] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                    mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[324] = 10^uint8(ext_call.return_data[0] - 2)
                    mem[356] = 64
                    mem[388] = 2
                    mem[420 len 0] = None
                    require ext_code.size(unirouterAddress)
                    staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[420 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 320
                    require return_data.size >= 32
                    _288 = mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                    require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                    require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                    require mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]
                    _303 = mem[_288 + 320]
                    mem[ceil32(return_data.size) + 352 len floor32(mem[_288 + 320])] = mem[_288 + 352 len floor32(mem[_288 + 320])]
                    if 1 < mem[ceil32(return_data.size) + 320]:
                        _428 = mem[ceil32(return_data.size) + 384]
                        mem[(32 * _303) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _303) + ceil32(return_data.size) + 356] = 10^uint8(ext_call.return_data[0] - 2)
                        mem[(32 * _303) + ceil32(return_data.size) + 388] = 64
                        mem[(32 * _303) + ceil32(return_data.size) + 420] = 3
                        mem[(32 * _303) + ceil32(return_data.size) + 452 len 0] = None
                        require ext_code.size(unirouterAddress)
                        staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0] - 2), Array(len=3, data=mem[(32 * _303) + ceil32(return_data.size) + 452 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _303) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _303) + (2 * ceil32(return_data.size)) + 352
                        require return_data.size >= 32
                        _522 = mem[(32 * _303) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                        require mem[(32 * _303) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                        require mem[(32 * _303) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                        require mem[(32 * _303) + ceil32(return_data.size) + mem[(32 * _303) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352] <= 4294967296 and mem[(32 * _303) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[(32 * _303) + ceil32(return_data.size) + mem[(32 * _303) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]) + 32 <= return_data.size
                        mem[(32 * _303) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _303) + ceil32(return_data.size) + mem[(32 * _303) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]
                        mem[(32 * _303) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _303) + ceil32(return_data.size) + _522 + 352])] = mem[(32 * _303) + ceil32(return_data.size) + _522 + 384 len floor32(mem[(32 * _303) + ceil32(return_data.size) + _522 + 352])]
                        if 2 < mem[(32 * _303) + (2 * ceil32(return_data.size)) + 352]:
                            require ext_code.size(arg1)
                            staticcall arg1.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(arg1)
                                staticcall arg1.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    return 2 * 100 * Mask(112, 0, ext_call.return_data[0]) * _428 * arg2 / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18), 
                                           2 * 10^14 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * _303) + (2 * ceil32(return_data.size)) + 448] * arg2 / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
    revert
}

function valueOfToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if bool(uint8(stor3.field_160)) != 1:
        mem[0] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[32] = 1
        if not stor5C4D:
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                mem[160] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                mem[228] = 64
                mem[260] = 2
                mem[292 len 0] = None
                require ext_code.size(unirouterAddress)
                staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _400 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_400 + 192])] = mem[_400 + 224 len floor32(mem[_400 + 192])]
                if 1 < mem[ceil32(return_data.size) + 192]:
                    return 10^18 * arg2 / 10^18, 10^14 * arg2 * mem[ceil32(return_data.size) + 256] / 10^18
            else:
                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg1:
                    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                    mem[228] = 64
                    mem[260] = 2
                    mem[292 len 0] = None
                    require ext_code.size(unirouterAddress)
                    staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _398 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                    require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                    _433 = mem[_398 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_398 + 192])] = mem[_398 + 224 len floor32(mem[_398 + 192])]
                    require 1 < mem[ceil32(return_data.size) + 192]
                    mem[(32 * _433) + ceil32(return_data.size) + 224] = 100 * arg2 * mem[ceil32(return_data.size) + 256] / 10^18
                    return mem[(32 * _433) + ceil32(return_data.size) + 224], 10^18 * arg2 / 10^18
                mem[96] = 2
                mem[128] = arg1
                mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[192] = 3
                mem[224] = arg1
                mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[288] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[324] = 10^uint8(ext_call.return_data[0] - 2)
                mem[356] = 64
                mem[388] = 2
                mem[420 len 0] = None
                require ext_code.size(unirouterAddress)
                staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[420 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 320
                require return_data.size >= 32
                _396 = mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                require mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]
                _432 = mem[_396 + 320]
                mem[ceil32(return_data.size) + 352 len floor32(mem[_396 + 320])] = mem[_396 + 352 len floor32(mem[_396 + 320])]
                if 1 < mem[ceil32(return_data.size) + 320]:
                    _580 = mem[ceil32(return_data.size) + 384]
                    mem[(32 * _432) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _432) + ceil32(return_data.size) + 356] = 10^uint8(ext_call.return_data[0] - 2)
                    mem[(32 * _432) + ceil32(return_data.size) + 388] = 64
                    mem[(32 * _432) + ceil32(return_data.size) + 420] = 3
                    mem[(32 * _432) + ceil32(return_data.size) + 452 len 0] = None
                    require ext_code.size(unirouterAddress)
                    staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^uint8(ext_call.return_data[0] - 2), Array(len=3, data=mem[(32 * _432) + ceil32(return_data.size) + 452 len 96])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _432) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _432) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _680 = mem[(32 * _432) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                    require mem[(32 * _432) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                    require mem[(32 * _432) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                    require mem[(32 * _432) + ceil32(return_data.size) + mem[(32 * _432) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352] <= 4294967296 and mem[(32 * _432) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[(32 * _432) + ceil32(return_data.size) + mem[(32 * _432) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]) + 32 <= return_data.size
                    mem[(32 * _432) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _432) + ceil32(return_data.size) + mem[(32 * _432) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]
                    mem[(32 * _432) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _432) + ceil32(return_data.size) + _680 + 352])] = mem[(32 * _432) + ceil32(return_data.size) + _680 + 384 len floor32(mem[(32 * _432) + ceil32(return_data.size) + _680 + 352])]
                    if 2 < mem[(32 * _432) + (2 * ceil32(return_data.size)) + 352]:
                        return 100 * arg2 * _580 / 10^18, 10^14 * arg2 * mem[(32 * _432) + (2 * ceil32(return_data.size)) + 448] / 10^18
        else:
            mem[0] = arg1
            mem[32] = 1
            if tokenFeeds[address(arg1)]:
                require ext_code.size(tokenFeeds[address(arg1)])
                staticcall tokenFeeds[address(arg1)].latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_code.size(stor5C4D)
                staticcall stor5C4D.latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                if not ext_call.return_data[32]:
                    if ext_call.return_data[32] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[32]:
                        return arg2 * 0 / ext_call.return_data[32] / 10^18, 0
                else:
                    if 10^10 * ext_call.return_data[32] / ext_call.return_data[32] != 10^10:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 31]
                    if not 10^10 * ext_call.return_data[32]:
                        if ext_call.return_data[32] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[32]:
                            return arg2 * 0 / ext_call.return_data[32] / 10^18, 10^10 * arg2 * ext_call.return_data[32] / 10^18
                    else:
                        if 10^18 * ext_call.return_data[32] / 10^10 * ext_call.return_data[32] != 100 * 10^6:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 31]
                        if ext_call.return_data[32] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[32]:
                            return arg2 * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / 10^18, 
                                   10^10 * arg2 * ext_call.return_data[32] / 10^18
                ('iszero', ('ext_call.return_data', 32, 32))
            else:
                require ext_code.size(arg1)
                staticcall arg1.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    mem[160] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                    mem[228] = 64
                    mem[260] = 2
                    mem[292 len 0] = None
                    require ext_code.size(unirouterAddress)
                    staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _406 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                    require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_406 + 192])] = mem[_406 + 224 len floor32(mem[_406 + 192])]
                    if 1 < mem[ceil32(return_data.size) + 192]:
                        return 10^18 * arg2 / 10^18, 10^14 * arg2 * mem[ceil32(return_data.size) + 256] / 10^18
                else:
                    if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg1:
                        mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                        mem[228] = 64
                        mem[260] = 2
                        mem[292 len 0] = None
                        require ext_code.size(unirouterAddress)
                        staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _404 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                        require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                        _436 = mem[_404 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_404 + 192])] = mem[_404 + 224 len floor32(mem[_404 + 192])]
                        require 1 < mem[ceil32(return_data.size) + 192]
                        mem[(32 * _436) + ceil32(return_data.size) + 224] = 100 * arg2 * mem[ceil32(return_data.size) + 256] / 10^18
                        return mem[(32 * _436) + ceil32(return_data.size) + 224], 10^18 * arg2 / 10^18
                    mem[96] = 2
                    mem[128] = arg1
                    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[192] = 3
                    mem[224] = arg1
                    mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[288] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                    mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[324] = 10^uint8(ext_call.return_data[0] - 2)
                    mem[356] = 64
                    mem[388] = 2
                    mem[420 len 0] = None
                    require ext_code.size(unirouterAddress)
                    staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[420 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 320
                    require return_data.size >= 32
                    _402 = mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                    require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                    require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                    require mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]
                    _435 = mem[_402 + 320]
                    mem[ceil32(return_data.size) + 352 len floor32(mem[_402 + 320])] = mem[_402 + 352 len floor32(mem[_402 + 320])]
                    if 1 < mem[ceil32(return_data.size) + 320]:
                        _586 = mem[ceil32(return_data.size) + 384]
                        mem[(32 * _435) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _435) + ceil32(return_data.size) + 356] = 10^uint8(ext_call.return_data[0] - 2)
                        mem[(32 * _435) + ceil32(return_data.size) + 388] = 64
                        mem[(32 * _435) + ceil32(return_data.size) + 420] = 3
                        mem[(32 * _435) + ceil32(return_data.size) + 452 len 0] = None
                        require ext_code.size(unirouterAddress)
                        staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0] - 2), Array(len=3, data=mem[(32 * _435) + ceil32(return_data.size) + 452 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _435) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _435) + (2 * ceil32(return_data.size)) + 352
                        require return_data.size >= 32
                        _682 = mem[(32 * _435) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                        require mem[(32 * _435) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                        require mem[(32 * _435) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                        require mem[(32 * _435) + ceil32(return_data.size) + mem[(32 * _435) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352] <= 4294967296 and mem[(32 * _435) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[(32 * _435) + ceil32(return_data.size) + mem[(32 * _435) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]) + 32 <= return_data.size
                        mem[(32 * _435) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _435) + ceil32(return_data.size) + mem[(32 * _435) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]
                        mem[(32 * _435) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _435) + ceil32(return_data.size) + _682 + 352])] = mem[(32 * _435) + ceil32(return_data.size) + _682 + 384 len floor32(mem[(32 * _435) + ceil32(return_data.size) + _682 + 352])]
                        if 2 < mem[(32 * _435) + (2 * ceil32(return_data.size)) + 352]:
                            return 100 * arg2 * _586 / 10^18, 10^14 * arg2 * mem[(32 * _435) + (2 * ceil32(return_data.size)) + 448] / 10^18
    else:
        if not stor5C4D:
            return arg2 * prices[address(arg1)].field_0 / 10^18, arg2 * prices[address(arg1)].field_256 / 10^18
        if not tokenFeeds[address(arg1)]:
            return arg2 * prices[address(arg1)].field_0 / 10^18, arg2 * prices[address(arg1)].field_256 / 10^18
        mem[0] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[32] = 1
        if not stor5C4D:
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                mem[160] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                mem[228] = 64
                mem[260] = 2
                mem[292 len 0] = None
                require ext_code.size(unirouterAddress)
                staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _412 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_412 + 192])] = mem[_412 + 224 len floor32(mem[_412 + 192])]
                if 1 < mem[ceil32(return_data.size) + 192]:
                    return 10^18 * arg2 / 10^18, 10^14 * arg2 * mem[ceil32(return_data.size) + 256] / 10^18
            else:
                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg1:
                    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                    mem[228] = 64
                    mem[260] = 2
                    mem[292 len 0] = None
                    require ext_code.size(unirouterAddress)
                    staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _410 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                    require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                    _439 = mem[_410 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_410 + 192])] = mem[_410 + 224 len floor32(mem[_410 + 192])]
                    require 1 < mem[ceil32(return_data.size) + 192]
                    mem[(32 * _439) + ceil32(return_data.size) + 224] = 100 * arg2 * mem[ceil32(return_data.size) + 256] / 10^18
                    return mem[(32 * _439) + ceil32(return_data.size) + 224], 10^18 * arg2 / 10^18
                mem[96] = 2
                mem[128] = arg1
                mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[192] = 3
                mem[224] = arg1
                mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[288] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[324] = 10^uint8(ext_call.return_data[0] - 2)
                mem[356] = 64
                mem[388] = 2
                mem[420 len 0] = None
                require ext_code.size(unirouterAddress)
                staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[420 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 320
                require return_data.size >= 32
                _408 = mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                require mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]
                _438 = mem[_408 + 320]
                mem[ceil32(return_data.size) + 352 len floor32(mem[_408 + 320])] = mem[_408 + 352 len floor32(mem[_408 + 320])]
                if 1 < mem[ceil32(return_data.size) + 320]:
                    _592 = mem[ceil32(return_data.size) + 384]
                    mem[(32 * _438) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _438) + ceil32(return_data.size) + 356] = 10^uint8(ext_call.return_data[0] - 2)
                    mem[(32 * _438) + ceil32(return_data.size) + 388] = 64
                    mem[(32 * _438) + ceil32(return_data.size) + 420] = 3
                    mem[(32 * _438) + ceil32(return_data.size) + 452 len 0] = None
                    require ext_code.size(unirouterAddress)
                    staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^uint8(ext_call.return_data[0] - 2), Array(len=3, data=mem[(32 * _438) + ceil32(return_data.size) + 452 len 96])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _438) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _438) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _684 = mem[(32 * _438) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                    require mem[(32 * _438) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                    require mem[(32 * _438) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                    require mem[(32 * _438) + ceil32(return_data.size) + mem[(32 * _438) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352] <= 4294967296 and mem[(32 * _438) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[(32 * _438) + ceil32(return_data.size) + mem[(32 * _438) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]) + 32 <= return_data.size
                    mem[(32 * _438) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _438) + ceil32(return_data.size) + mem[(32 * _438) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]
                    mem[(32 * _438) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _438) + ceil32(return_data.size) + _684 + 352])] = mem[(32 * _438) + ceil32(return_data.size) + _684 + 384 len floor32(mem[(32 * _438) + ceil32(return_data.size) + _684 + 352])]
                    if 2 < mem[(32 * _438) + (2 * ceil32(return_data.size)) + 352]:
                        return 100 * arg2 * _592 / 10^18, 10^14 * arg2 * mem[(32 * _438) + (2 * ceil32(return_data.size)) + 448] / 10^18
        else:
            mem[0] = arg1
            mem[32] = 1
            if tokenFeeds[address(arg1)]:
                require ext_code.size(tokenFeeds[address(arg1)])
                staticcall tokenFeeds[address(arg1)].latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_code.size(stor5C4D)
                staticcall stor5C4D.latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                if not ext_call.return_data[32]:
                    if ext_call.return_data[32] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[32]:
                        return arg2 * 0 / ext_call.return_data[32] / 10^18, 0
                else:
                    if 10^10 * ext_call.return_data[32] / ext_call.return_data[32] != 10^10:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 31]
                    if not 10^10 * ext_call.return_data[32]:
                        if ext_call.return_data[32] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[32]:
                            return arg2 * 0 / ext_call.return_data[32] / 10^18, 10^10 * arg2 * ext_call.return_data[32] / 10^18
                    else:
                        if 10^18 * ext_call.return_data[32] / 10^10 * ext_call.return_data[32] != 100 * 10^6:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 31]
                        if ext_call.return_data[32] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[32]:
                            return arg2 * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / 10^18, 
                                   10^10 * arg2 * ext_call.return_data[32] / 10^18
                ('iszero', ('ext_call.return_data', 32, 32))
            else:
                require ext_code.size(arg1)
                staticcall arg1.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    mem[160] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                    mem[228] = 64
                    mem[260] = 2
                    mem[292 len 0] = None
                    require ext_code.size(unirouterAddress)
                    staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _418 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                    require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_418 + 192])] = mem[_418 + 224 len floor32(mem[_418 + 192])]
                    if 1 < mem[ceil32(return_data.size) + 192]:
                        return 10^18 * arg2 / 10^18, 10^14 * arg2 * mem[ceil32(return_data.size) + 256] / 10^18
                else:
                    if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg1:
                        mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                        mem[228] = 64
                        mem[260] = 2
                        mem[292 len 0] = None
                        require ext_code.size(unirouterAddress)
                        staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _416 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                        require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                        _442 = mem[_416 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_416 + 192])] = mem[_416 + 224 len floor32(mem[_416 + 192])]
                        require 1 < mem[ceil32(return_data.size) + 192]
                        mem[(32 * _442) + ceil32(return_data.size) + 224] = 100 * arg2 * mem[ceil32(return_data.size) + 256] / 10^18
                        return mem[(32 * _442) + ceil32(return_data.size) + 224], 10^18 * arg2 / 10^18
                    mem[96] = 2
                    mem[128] = arg1
                    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[192] = 3
                    mem[224] = arg1
                    mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[288] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                    mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[324] = 10^uint8(ext_call.return_data[0] - 2)
                    mem[356] = 64
                    mem[388] = 2
                    mem[420 len 0] = None
                    require ext_code.size(unirouterAddress)
                    staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[420 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 320
                    require return_data.size >= 32
                    _414 = mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                    require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                    require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                    require mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]
                    _441 = mem[_414 + 320]
                    mem[ceil32(return_data.size) + 352 len floor32(mem[_414 + 320])] = mem[_414 + 352 len floor32(mem[_414 + 320])]
                    if 1 < mem[ceil32(return_data.size) + 320]:
                        _598 = mem[ceil32(return_data.size) + 384]
                        mem[(32 * _441) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _441) + ceil32(return_data.size) + 356] = 10^uint8(ext_call.return_data[0] - 2)
                        mem[(32 * _441) + ceil32(return_data.size) + 388] = 64
                        mem[(32 * _441) + ceil32(return_data.size) + 420] = 3
                        mem[(32 * _441) + ceil32(return_data.size) + 452 len 0] = None
                        require ext_code.size(unirouterAddress)
                        staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0] - 2), Array(len=3, data=mem[(32 * _441) + ceil32(return_data.size) + 452 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _441) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _441) + (2 * ceil32(return_data.size)) + 352
                        require return_data.size >= 32
                        _686 = mem[(32 * _441) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                        require mem[(32 * _441) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                        require mem[(32 * _441) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                        require mem[(32 * _441) + ceil32(return_data.size) + mem[(32 * _441) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352] <= 4294967296 and mem[(32 * _441) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[(32 * _441) + ceil32(return_data.size) + mem[(32 * _441) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]) + 32 <= return_data.size
                        mem[(32 * _441) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _441) + ceil32(return_data.size) + mem[(32 * _441) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]
                        mem[(32 * _441) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _441) + ceil32(return_data.size) + _686 + 352])] = mem[(32 * _441) + ceil32(return_data.size) + _686 + 384 len floor32(mem[(32 * _441) + ceil32(return_data.size) + _686 + 352])]
                        if 2 < mem[(32 * _441) + (2 * ceil32(return_data.size)) + 352]:
                            return 100 * arg2 * _598 / 10^18, 10^14 * arg2 * mem[(32 * _441) + (2 * ceil32(return_data.size)) + 448] / 10^18
    revert
}

function updateTokenPrice(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if msg.sender == owner:
        if bool(uint8(stor3.field_160)) != 1:
            revert with 0, 'Should be manual mode'
        if arg2 != 1:
            mem[0] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[32] = 1
            if not stor5C4D:
                require ext_code.size(arg1)
                staticcall arg1.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    mem[160] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                    mem[228] = 64
                    mem[260] = 2
                    mem[292 len 0] = None
                    require ext_code.size(unirouterAddress)
                    staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _919 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                    require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_919 + 192])] = mem[_919 + 224 len floor32(mem[_919 + 192])]
                    require 1 < mem[ceil32(return_data.size) + 192]
                    prices[address(arg1)].field_0 = 10^18
                    prices[address(arg1)].field_256 = 100000000000000 * 10^18 * mem[ceil32(return_data.size) + 256] / 10^18
                else:
                    if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg1:
                        mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                        mem[228] = 64
                        mem[260] = 2
                        mem[292 len 0] = None
                        require ext_code.size(unirouterAddress)
                        staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _917 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                        require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_917 + 192])] = mem[_917 + 224 len floor32(mem[_917 + 192])]
                        require 1 < mem[ceil32(return_data.size) + 192]
                        prices[address(arg1)].field_0 = 100 * 10^18 * mem[ceil32(return_data.size) + 256] / 10^18
                        prices[address(arg1)].field_256 = 10^18
                    else:
                        mem[96] = 2
                        mem[128] = arg1
                        mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[192] = 3
                        mem[224] = arg1
                        mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[288] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                        mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[324] = 10^uint8(ext_call.return_data[0] - 2)
                        mem[356] = 64
                        mem[388] = 2
                        mem[420 len 0] = None
                        require ext_code.size(unirouterAddress)
                        staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[420 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        _915 = mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                        require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                        require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                        require mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]
                        _987 = mem[_915 + 320]
                        mem[ceil32(return_data.size) + 352 len floor32(mem[_915 + 320])] = mem[_915 + 352 len floor32(mem[_915 + 320])]
                        require 1 < mem[ceil32(return_data.size) + 320]
                        _1355 = mem[ceil32(return_data.size) + 384]
                        mem[(32 * _987) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _987) + ceil32(return_data.size) + 356] = 10^uint8(ext_call.return_data[0] - 2)
                        mem[(32 * _987) + ceil32(return_data.size) + 388] = 64
                        mem[(32 * _987) + ceil32(return_data.size) + 420] = 3
                        mem[(32 * _987) + ceil32(return_data.size) + 452 len 0] = None
                        require ext_code.size(unirouterAddress)
                        staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0] - 2), Array(len=3, data=mem[(32 * _987) + ceil32(return_data.size) + 452 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _987) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _987) + (2 * ceil32(return_data.size)) + 352
                        require return_data.size >= 32
                        _1627 = mem[(32 * _987) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                        require mem[(32 * _987) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                        require mem[(32 * _987) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                        require mem[(32 * _987) + ceil32(return_data.size) + mem[(32 * _987) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352] <= 4294967296 and mem[(32 * _987) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[(32 * _987) + ceil32(return_data.size) + mem[(32 * _987) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]) + 32 <= return_data.size
                        mem[(32 * _987) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _987) + ceil32(return_data.size) + mem[(32 * _987) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]
                        mem[(32 * _987) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _987) + ceil32(return_data.size) + _1627 + 352])] = mem[(32 * _987) + ceil32(return_data.size) + _1627 + 384 len floor32(mem[(32 * _987) + ceil32(return_data.size) + _1627 + 352])]
                        require 2 < mem[(32 * _987) + (2 * ceil32(return_data.size)) + 352]
                        prices[address(arg1)].field_0 = 100 * 10^18 * _1355 / 10^18
                        prices[address(arg1)].field_256 = 100000000000000 * 10^18 * mem[(32 * _987) + (2 * ceil32(return_data.size)) + 448] / 10^18
            else:
                mem[0] = arg1
                mem[32] = 1
                if tokenFeeds[address(arg1)]:
                    require ext_code.size(tokenFeeds[address(arg1)])
                    staticcall tokenFeeds[address(arg1)].latestRoundData() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 160
                    require ext_code.size(stor5C4D)
                    staticcall stor5C4D.latestRoundData() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 160
                    if not ext_call.return_data[32]:
                        if ext_call.return_data[32] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[32]
                        prices[address(arg1)].field_0 = 10^18 * 0 / ext_call.return_data[32] / 10^18
                        prices[address(arg1)].field_256 = 0
                    else:
                        if 10^10 * ext_call.return_data[32] / ext_call.return_data[32] != 10^10:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 31]
                        if not 10^10 * ext_call.return_data[32]:
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[32]
                            prices[address(arg1)].field_0 = 10^18 * 0 / ext_call.return_data[32] / 10^18
                        else:
                            if 10^18 * ext_call.return_data[32] / 10^10 * ext_call.return_data[32] != 100 * 10^6:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 31]
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[32]
                            prices[address(arg1)].field_0 = 10^18 * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / 10^18
                        prices[address(arg1)].field_256 = 10000000000 * 10^18 * ext_call.return_data[32] / 10^18
                else:
                    require ext_code.size(arg1)
                    staticcall arg1.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[160] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                        mem[228] = 64
                        mem[260] = 2
                        mem[292 len 0] = None
                        require ext_code.size(unirouterAddress)
                        staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _925 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                        require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_925 + 192])] = mem[_925 + 224 len floor32(mem[_925 + 192])]
                        require 1 < mem[ceil32(return_data.size) + 192]
                        prices[address(arg1)].field_0 = 10^18
                        prices[address(arg1)].field_256 = 100000000000000 * 10^18 * mem[ceil32(return_data.size) + 256] / 10^18
                    else:
                        if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg1:
                            mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                            mem[228] = 64
                            mem[260] = 2
                            mem[292 len 0] = None
                            require ext_code.size(unirouterAddress)
                            staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _923 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                            require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_923 + 192])] = mem[_923 + 224 len floor32(mem[_923 + 192])]
                            require 1 < mem[ceil32(return_data.size) + 192]
                            prices[address(arg1)].field_0 = 100 * 10^18 * mem[ceil32(return_data.size) + 256] / 10^18
                            prices[address(arg1)].field_256 = 10^18
                        else:
                            mem[96] = 2
                            mem[128] = arg1
                            mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            mem[192] = 3
                            mem[224] = arg1
                            mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            mem[288] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                            mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[324] = 10^uint8(ext_call.return_data[0] - 2)
                            mem[356] = 64
                            mem[388] = 2
                            mem[420 len 0] = None
                            require ext_code.size(unirouterAddress)
                            staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[420 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 320
                            require return_data.size >= 32
                            _921 = mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                            require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                            require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                            require mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]
                            _990 = mem[_921 + 320]
                            mem[ceil32(return_data.size) + 352 len floor32(mem[_921 + 320])] = mem[_921 + 352 len floor32(mem[_921 + 320])]
                            require 1 < mem[ceil32(return_data.size) + 320]
                            _1361 = mem[ceil32(return_data.size) + 384]
                            mem[(32 * _990) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _990) + ceil32(return_data.size) + 356] = 10^uint8(ext_call.return_data[0] - 2)
                            mem[(32 * _990) + ceil32(return_data.size) + 388] = 64
                            mem[(32 * _990) + ceil32(return_data.size) + 420] = 3
                            mem[(32 * _990) + ceil32(return_data.size) + 452 len 0] = None
                            require ext_code.size(unirouterAddress)
                            staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0] - 2), Array(len=3, data=mem[(32 * _990) + ceil32(return_data.size) + 452 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _990) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _990) + (2 * ceil32(return_data.size)) + 352
                            require return_data.size >= 32
                            _1629 = mem[(32 * _990) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                            require mem[(32 * _990) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                            require mem[(32 * _990) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                            require mem[(32 * _990) + ceil32(return_data.size) + mem[(32 * _990) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352] <= 4294967296 and mem[(32 * _990) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[(32 * _990) + ceil32(return_data.size) + mem[(32 * _990) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]) + 32 <= return_data.size
                            mem[(32 * _990) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _990) + ceil32(return_data.size) + mem[(32 * _990) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]
                            mem[(32 * _990) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _990) + ceil32(return_data.size) + _1629 + 352])] = mem[(32 * _990) + ceil32(return_data.size) + _1629 + 384 len floor32(mem[(32 * _990) + ceil32(return_data.size) + _1629 + 352])]
                            require 2 < mem[(32 * _990) + (2 * ceil32(return_data.size)) + 352]
                            prices[address(arg1)].field_0 = 100 * 10^18 * _1361 / 10^18
                            prices[address(arg1)].field_256 = 100000000000000 * 10^18 * mem[(32 * _990) + (2 * ceil32(return_data.size)) + 448] / 10^18
        else:
            require ext_code.size(arg1)
            staticcall arg1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[0] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[32] = 1
            if not stor5C4D:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    mem[160] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                    mem[228] = 64
                    mem[260] = 2
                    mem[292 len 0] = None
                    require ext_code.size(unirouterAddress)
                    staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _931 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                    require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_931 + 192])] = mem[_931 + 224 len floor32(mem[_931 + 192])]
                    require 1 < mem[ceil32(return_data.size) + 192]
                    require ext_code.size(arg1)
                    staticcall arg1.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    prices[address(arg1)].field_0 = 2 * 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                    prices[address(arg1)].field_256 = 2 * 100000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * mem[ceil32(return_data.size) + 256] / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                else:
                    if 0xc7198437980c041c805a1edcba50c1ce5db95118 == address(ext_call.return_data[0]):
                        mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                        mem[228] = 64
                        mem[260] = 2
                        mem[292 len 0] = None
                        require ext_code.size(unirouterAddress)
                        staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _929 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                        require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_929 + 192])] = mem[_929 + 224 len floor32(mem[_929 + 192])]
                        require 1 < mem[ceil32(return_data.size) + 192]
                        require ext_code.size(arg1)
                        staticcall arg1.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require ext_code.size(arg1)
                        staticcall arg1.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        prices[address(arg1)].field_0 = 2 * 100 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * mem[ceil32(return_data.size) + 256] / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                        prices[address(arg1)].field_256 = 2 * 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                    else:
                        mem[96] = 2
                        mem[128] = address(ext_call.return_data[0])
                        mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[192] = 3
                        mem[224] = address(ext_call.return_data[0])
                        mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[288] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                        mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[324] = 10^uint8(ext_call.return_data[0] - 2)
                        mem[356] = 64
                        mem[388] = 2
                        mem[420 len 0] = None
                        require ext_code.size(unirouterAddress)
                        staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[420 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        _927 = mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                        require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                        require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                        require mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]
                        _993 = mem[_927 + 320]
                        mem[ceil32(return_data.size) + 352 len floor32(mem[_927 + 320])] = mem[_927 + 352 len floor32(mem[_927 + 320])]
                        require 1 < mem[ceil32(return_data.size) + 320]
                        _1367 = mem[ceil32(return_data.size) + 384]
                        mem[(32 * _993) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _993) + ceil32(return_data.size) + 356] = 10^uint8(ext_call.return_data[0] - 2)
                        mem[(32 * _993) + ceil32(return_data.size) + 388] = 64
                        mem[(32 * _993) + ceil32(return_data.size) + 420] = 3
                        mem[(32 * _993) + ceil32(return_data.size) + 452 len 0] = None
                        require ext_code.size(unirouterAddress)
                        staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0] - 2), Array(len=3, data=mem[(32 * _993) + ceil32(return_data.size) + 452 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _993) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _993) + (2 * ceil32(return_data.size)) + 352
                        require return_data.size >= 32
                        _1631 = mem[(32 * _993) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                        require mem[(32 * _993) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                        require mem[(32 * _993) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                        require mem[(32 * _993) + ceil32(return_data.size) + mem[(32 * _993) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352] <= 4294967296 and mem[(32 * _993) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[(32 * _993) + ceil32(return_data.size) + mem[(32 * _993) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]) + 32 <= return_data.size
                        mem[(32 * _993) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _993) + ceil32(return_data.size) + mem[(32 * _993) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]
                        mem[(32 * _993) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _993) + ceil32(return_data.size) + _1631 + 352])] = mem[(32 * _993) + ceil32(return_data.size) + _1631 + 384 len floor32(mem[(32 * _993) + ceil32(return_data.size) + _1631 + 352])]
                        require 2 < mem[(32 * _993) + (2 * ceil32(return_data.size)) + 352]
                        require ext_code.size(arg1)
                        staticcall arg1.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require ext_code.size(arg1)
                        staticcall arg1.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        prices[address(arg1)].field_0 = 2 * 100 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * _1367 / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                        prices[address(arg1)].field_256 = 2 * 100000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * _993) + (2 * ceil32(return_data.size)) + 448] / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
            else:
                mem[0] = address(ext_call.return_data[0])
                mem[32] = 1
                if tokenFeeds[address(ext_call.return_data[0])]:
                    require ext_code.size(tokenFeeds[address(ext_call.return_data[0])])
                    staticcall tokenFeeds[address(ext_call.return_data[0])].latestRoundData() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 160
                    require ext_code.size(stor5C4D)
                    staticcall stor5C4D.latestRoundData() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 160
                    if not ext_call.return_data[32]:
                        if ext_call.return_data[32] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[32]
                        require ext_code.size(arg1)
                        staticcall arg1.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require ext_code.size(arg1)
                        staticcall arg1.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        prices[address(arg1)].field_0 = 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 0 / ext_call.return_data[32] / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                        prices[address(arg1)].field_256 = 0 / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                    else:
                        if 10^10 * ext_call.return_data[32] / ext_call.return_data[32] != 10^10:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 31]
                        if not 10^10 * ext_call.return_data[32]:
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[32]
                            require ext_code.size(arg1)
                            staticcall arg1.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            require ext_code.size(arg1)
                            staticcall arg1.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            prices[address(arg1)].field_0 = 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 0 / ext_call.return_data[32] / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                        else:
                            if 10^18 * ext_call.return_data[32] / 10^10 * ext_call.return_data[32] != 100 * 10^6:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 31]
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[32]
                            require ext_code.size(arg1)
                            staticcall arg1.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            require ext_code.size(arg1)
                            staticcall arg1.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            prices[address(arg1)].field_0 = 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                        prices[address(arg1)].field_256 = 2 * 10000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[32] / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[160] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                        mem[228] = 64
                        mem[260] = 2
                        mem[292 len 0] = None
                        require ext_code.size(unirouterAddress)
                        staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _937 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                        require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_937 + 192])] = mem[_937 + 224 len floor32(mem[_937 + 192])]
                        require 1 < mem[ceil32(return_data.size) + 192]
                        require ext_code.size(arg1)
                        staticcall arg1.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require ext_code.size(arg1)
                        staticcall arg1.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        prices[address(arg1)].field_0 = 2 * 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                        prices[address(arg1)].field_256 = 2 * 100000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * mem[ceil32(return_data.size) + 256] / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                    else:
                        if 0xc7198437980c041c805a1edcba50c1ce5db95118 == address(ext_call.return_data[0]):
                            mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                            mem[228] = 64
                            mem[260] = 2
                            mem[292 len 0] = None
                            require ext_code.size(unirouterAddress)
                            staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _935 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                            require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_935 + 192])] = mem[_935 + 224 len floor32(mem[_935 + 192])]
                            require 1 < mem[ceil32(return_data.size) + 192]
                            require ext_code.size(arg1)
                            staticcall arg1.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            require ext_code.size(arg1)
                            staticcall arg1.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            prices[address(arg1)].field_0 = 2 * 100 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * mem[ceil32(return_data.size) + 256] / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                            prices[address(arg1)].field_256 = 2 * 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                        else:
                            mem[96] = 2
                            mem[128] = address(ext_call.return_data[0])
                            mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            mem[192] = 3
                            mem[224] = address(ext_call.return_data[0])
                            mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            mem[288] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                            mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[324] = 10^uint8(ext_call.return_data[0] - 2)
                            mem[356] = 64
                            mem[388] = 2
                            mem[420 len 0] = None
                            require ext_code.size(unirouterAddress)
                            staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[420 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 320
                            require return_data.size >= 32
                            _933 = mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                            require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                            require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                            require mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]
                            _996 = mem[_933 + 320]
                            mem[ceil32(return_data.size) + 352 len floor32(mem[_933 + 320])] = mem[_933 + 352 len floor32(mem[_933 + 320])]
                            require 1 < mem[ceil32(return_data.size) + 320]
                            _1373 = mem[ceil32(return_data.size) + 384]
                            mem[(32 * _996) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _996) + ceil32(return_data.size) + 356] = 10^uint8(ext_call.return_data[0] - 2)
                            mem[(32 * _996) + ceil32(return_data.size) + 388] = 64
                            mem[(32 * _996) + ceil32(return_data.size) + 420] = 3
                            mem[(32 * _996) + ceil32(return_data.size) + 452 len 0] = None
                            require ext_code.size(unirouterAddress)
                            staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0] - 2), Array(len=3, data=mem[(32 * _996) + ceil32(return_data.size) + 452 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _996) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _996) + (2 * ceil32(return_data.size)) + 352
                            require return_data.size >= 32
                            _1633 = mem[(32 * _996) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                            require mem[(32 * _996) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                            require mem[(32 * _996) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                            require mem[(32 * _996) + ceil32(return_data.size) + mem[(32 * _996) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352] <= 4294967296 and mem[(32 * _996) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[(32 * _996) + ceil32(return_data.size) + mem[(32 * _996) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]) + 32 <= return_data.size
                            mem[(32 * _996) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _996) + ceil32(return_data.size) + mem[(32 * _996) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]
                            mem[(32 * _996) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _996) + ceil32(return_data.size) + _1633 + 352])] = mem[(32 * _996) + ceil32(return_data.size) + _1633 + 384 len floor32(mem[(32 * _996) + ceil32(return_data.size) + _1633 + 352])]
                            require 2 < mem[(32 * _996) + (2 * ceil32(return_data.size)) + 352]
                            require ext_code.size(arg1)
                            staticcall arg1.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            require ext_code.size(arg1)
                            staticcall arg1.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            prices[address(arg1)].field_0 = 2 * 100 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * _1373 / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                            prices[address(arg1)].field_256 = 2 * 100000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * _996) + (2 * ceil32(return_data.size)) + 448] / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
    else:
        if keeperAddress != msg.sender:
            revert with 0, '!keeper'
        if bool(uint8(stor3.field_160)) != 1:
            revert with 0, 'Should be manual mode'
        if arg2 != 1:
            mem[0] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[32] = 1
            if not stor5C4D:
                require ext_code.size(arg1)
                staticcall arg1.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    mem[160] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                    mem[228] = 64
                    mem[260] = 2
                    mem[292 len 0] = None
                    require ext_code.size(unirouterAddress)
                    staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _943 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                    require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_943 + 192])] = mem[_943 + 224 len floor32(mem[_943 + 192])]
                    require 1 < mem[ceil32(return_data.size) + 192]
                    prices[address(arg1)].field_0 = 10^18
                    prices[address(arg1)].field_256 = 100000000000000 * 10^18 * mem[ceil32(return_data.size) + 256] / 10^18
                else:
                    if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg1:
                        mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                        mem[228] = 64
                        mem[260] = 2
                        mem[292 len 0] = None
                        require ext_code.size(unirouterAddress)
                        staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _941 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                        require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_941 + 192])] = mem[_941 + 224 len floor32(mem[_941 + 192])]
                        require 1 < mem[ceil32(return_data.size) + 192]
                        prices[address(arg1)].field_0 = 100 * 10^18 * mem[ceil32(return_data.size) + 256] / 10^18
                        prices[address(arg1)].field_256 = 10^18
                    else:
                        mem[96] = 2
                        mem[128] = arg1
                        mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[192] = 3
                        mem[224] = arg1
                        mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[288] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                        mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[324] = 10^uint8(ext_call.return_data[0] - 2)
                        mem[356] = 64
                        mem[388] = 2
                        mem[420 len 0] = None
                        require ext_code.size(unirouterAddress)
                        staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[420 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        _939 = mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                        require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                        require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                        require mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]
                        _999 = mem[_939 + 320]
                        mem[ceil32(return_data.size) + 352 len floor32(mem[_939 + 320])] = mem[_939 + 352 len floor32(mem[_939 + 320])]
                        require 1 < mem[ceil32(return_data.size) + 320]
                        _1379 = mem[ceil32(return_data.size) + 384]
                        mem[(32 * _999) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _999) + ceil32(return_data.size) + 356] = 10^uint8(ext_call.return_data[0] - 2)
                        mem[(32 * _999) + ceil32(return_data.size) + 388] = 64
                        mem[(32 * _999) + ceil32(return_data.size) + 420] = 3
                        mem[(32 * _999) + ceil32(return_data.size) + 452 len 0] = None
                        require ext_code.size(unirouterAddress)
                        staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0] - 2), Array(len=3, data=mem[(32 * _999) + ceil32(return_data.size) + 452 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _999) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _999) + (2 * ceil32(return_data.size)) + 352
                        require return_data.size >= 32
                        _1635 = mem[(32 * _999) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                        require mem[(32 * _999) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                        require mem[(32 * _999) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                        require mem[(32 * _999) + ceil32(return_data.size) + mem[(32 * _999) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352] <= 4294967296 and mem[(32 * _999) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[(32 * _999) + ceil32(return_data.size) + mem[(32 * _999) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]) + 32 <= return_data.size
                        mem[(32 * _999) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _999) + ceil32(return_data.size) + mem[(32 * _999) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]
                        mem[(32 * _999) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _999) + ceil32(return_data.size) + _1635 + 352])] = mem[(32 * _999) + ceil32(return_data.size) + _1635 + 384 len floor32(mem[(32 * _999) + ceil32(return_data.size) + _1635 + 352])]
                        require 2 < mem[(32 * _999) + (2 * ceil32(return_data.size)) + 352]
                        prices[address(arg1)].field_0 = 100 * 10^18 * _1379 / 10^18
                        prices[address(arg1)].field_256 = 100000000000000 * 10^18 * mem[(32 * _999) + (2 * ceil32(return_data.size)) + 448] / 10^18
            else:
                mem[0] = arg1
                mem[32] = 1
                if tokenFeeds[address(arg1)]:
                    require ext_code.size(tokenFeeds[address(arg1)])
                    staticcall tokenFeeds[address(arg1)].latestRoundData() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 160
                    require ext_code.size(stor5C4D)
                    staticcall stor5C4D.latestRoundData() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 160
                    if not ext_call.return_data[32]:
                        if ext_call.return_data[32] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[32]
                        prices[address(arg1)].field_0 = 10^18 * 0 / ext_call.return_data[32] / 10^18
                        prices[address(arg1)].field_256 = 0
                    else:
                        if 10^10 * ext_call.return_data[32] / ext_call.return_data[32] != 10^10:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 31]
                        if not 10^10 * ext_call.return_data[32]:
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[32]
                            prices[address(arg1)].field_0 = 10^18 * 0 / ext_call.return_data[32] / 10^18
                        else:
                            if 10^18 * ext_call.return_data[32] / 10^10 * ext_call.return_data[32] != 100 * 10^6:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 31]
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[32]
                            prices[address(arg1)].field_0 = 10^18 * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / 10^18
                        prices[address(arg1)].field_256 = 10000000000 * 10^18 * ext_call.return_data[32] / 10^18
                else:
                    require ext_code.size(arg1)
                    staticcall arg1.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[160] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                        mem[228] = 64
                        mem[260] = 2
                        mem[292 len 0] = None
                        require ext_code.size(unirouterAddress)
                        staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _949 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                        require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_949 + 192])] = mem[_949 + 224 len floor32(mem[_949 + 192])]
                        require 1 < mem[ceil32(return_data.size) + 192]
                        prices[address(arg1)].field_0 = 10^18
                        prices[address(arg1)].field_256 = 100000000000000 * 10^18 * mem[ceil32(return_data.size) + 256] / 10^18
                    else:
                        if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg1:
                            mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                            mem[228] = 64
                            mem[260] = 2
                            mem[292 len 0] = None
                            require ext_code.size(unirouterAddress)
                            staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _947 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                            require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_947 + 192])] = mem[_947 + 224 len floor32(mem[_947 + 192])]
                            require 1 < mem[ceil32(return_data.size) + 192]
                            prices[address(arg1)].field_0 = 100 * 10^18 * mem[ceil32(return_data.size) + 256] / 10^18
                            prices[address(arg1)].field_256 = 10^18
                        else:
                            mem[96] = 2
                            mem[128] = arg1
                            mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            mem[192] = 3
                            mem[224] = arg1
                            mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            mem[288] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                            mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[324] = 10^uint8(ext_call.return_data[0] - 2)
                            mem[356] = 64
                            mem[388] = 2
                            mem[420 len 0] = None
                            require ext_code.size(unirouterAddress)
                            staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[420 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 320
                            require return_data.size >= 32
                            _945 = mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                            require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                            require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                            require mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]
                            _1002 = mem[_945 + 320]
                            mem[ceil32(return_data.size) + 352 len floor32(mem[_945 + 320])] = mem[_945 + 352 len floor32(mem[_945 + 320])]
                            require 1 < mem[ceil32(return_data.size) + 320]
                            _1385 = mem[ceil32(return_data.size) + 384]
                            mem[(32 * _1002) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _1002) + ceil32(return_data.size) + 356] = 10^uint8(ext_call.return_data[0] - 2)
                            mem[(32 * _1002) + ceil32(return_data.size) + 388] = 64
                            mem[(32 * _1002) + ceil32(return_data.size) + 420] = 3
                            mem[(32 * _1002) + ceil32(return_data.size) + 452 len 0] = None
                            require ext_code.size(unirouterAddress)
                            staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0] - 2), Array(len=3, data=mem[(32 * _1002) + ceil32(return_data.size) + 452 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _1002) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _1002) + (2 * ceil32(return_data.size)) + 352
                            require return_data.size >= 32
                            _1637 = mem[(32 * _1002) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                            require mem[(32 * _1002) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                            require mem[(32 * _1002) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                            require mem[(32 * _1002) + ceil32(return_data.size) + mem[(32 * _1002) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352] <= 4294967296 and mem[(32 * _1002) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[(32 * _1002) + ceil32(return_data.size) + mem[(32 * _1002) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]) + 32 <= return_data.size
                            mem[(32 * _1002) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _1002) + ceil32(return_data.size) + mem[(32 * _1002) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]
                            mem[(32 * _1002) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _1002) + ceil32(return_data.size) + _1637 + 352])] = mem[(32 * _1002) + ceil32(return_data.size) + _1637 + 384 len floor32(mem[(32 * _1002) + ceil32(return_data.size) + _1637 + 352])]
                            require 2 < mem[(32 * _1002) + (2 * ceil32(return_data.size)) + 352]
                            prices[address(arg1)].field_0 = 100 * 10^18 * _1385 / 10^18
                            prices[address(arg1)].field_256 = 100000000000000 * 10^18 * mem[(32 * _1002) + (2 * ceil32(return_data.size)) + 448] / 10^18
        else:
            require ext_code.size(arg1)
            staticcall arg1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[0] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[32] = 1
            if not stor5C4D:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    mem[160] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                    mem[228] = 64
                    mem[260] = 2
                    mem[292 len 0] = None
                    require ext_code.size(unirouterAddress)
                    staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _955 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                    require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_955 + 192])] = mem[_955 + 224 len floor32(mem[_955 + 192])]
                    require 1 < mem[ceil32(return_data.size) + 192]
                    require ext_code.size(arg1)
                    staticcall arg1.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    prices[address(arg1)].field_0 = 2 * 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                    prices[address(arg1)].field_256 = 2 * 100000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * mem[ceil32(return_data.size) + 256] / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                else:
                    if 0xc7198437980c041c805a1edcba50c1ce5db95118 == address(ext_call.return_data[0]):
                        mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                        mem[228] = 64
                        mem[260] = 2
                        mem[292 len 0] = None
                        require ext_code.size(unirouterAddress)
                        staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _953 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                        require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_953 + 192])] = mem[_953 + 224 len floor32(mem[_953 + 192])]
                        require 1 < mem[ceil32(return_data.size) + 192]
                        require ext_code.size(arg1)
                        staticcall arg1.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require ext_code.size(arg1)
                        staticcall arg1.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        prices[address(arg1)].field_0 = 2 * 100 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * mem[ceil32(return_data.size) + 256] / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                        prices[address(arg1)].field_256 = 2 * 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                    else:
                        mem[96] = 2
                        mem[128] = address(ext_call.return_data[0])
                        mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[192] = 3
                        mem[224] = address(ext_call.return_data[0])
                        mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[288] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                        mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[324] = 10^uint8(ext_call.return_data[0] - 2)
                        mem[356] = 64
                        mem[388] = 2
                        mem[420 len 0] = None
                        require ext_code.size(unirouterAddress)
                        staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[420 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        _951 = mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                        require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                        require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                        require mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]
                        _1005 = mem[_951 + 320]
                        mem[ceil32(return_data.size) + 352 len floor32(mem[_951 + 320])] = mem[_951 + 352 len floor32(mem[_951 + 320])]
                        require 1 < mem[ceil32(return_data.size) + 320]
                        _1391 = mem[ceil32(return_data.size) + 384]
                        mem[(32 * _1005) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1005) + ceil32(return_data.size) + 356] = 10^uint8(ext_call.return_data[0] - 2)
                        mem[(32 * _1005) + ceil32(return_data.size) + 388] = 64
                        mem[(32 * _1005) + ceil32(return_data.size) + 420] = 3
                        mem[(32 * _1005) + ceil32(return_data.size) + 452 len 0] = None
                        require ext_code.size(unirouterAddress)
                        staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0] - 2), Array(len=3, data=mem[(32 * _1005) + ceil32(return_data.size) + 452 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1005) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1005) + (2 * ceil32(return_data.size)) + 352
                        require return_data.size >= 32
                        _1639 = mem[(32 * _1005) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                        require mem[(32 * _1005) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                        require mem[(32 * _1005) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1005) + ceil32(return_data.size) + mem[(32 * _1005) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352] <= 4294967296 and mem[(32 * _1005) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[(32 * _1005) + ceil32(return_data.size) + mem[(32 * _1005) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]) + 32 <= return_data.size
                        mem[(32 * _1005) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _1005) + ceil32(return_data.size) + mem[(32 * _1005) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]
                        mem[(32 * _1005) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _1005) + ceil32(return_data.size) + _1639 + 352])] = mem[(32 * _1005) + ceil32(return_data.size) + _1639 + 384 len floor32(mem[(32 * _1005) + ceil32(return_data.size) + _1639 + 352])]
                        require 2 < mem[(32 * _1005) + (2 * ceil32(return_data.size)) + 352]
                        require ext_code.size(arg1)
                        staticcall arg1.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require ext_code.size(arg1)
                        staticcall arg1.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        prices[address(arg1)].field_0 = 2 * 100 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * _1391 / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                        prices[address(arg1)].field_256 = 2 * 100000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * _1005) + (2 * ceil32(return_data.size)) + 448] / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
            else:
                mem[0] = address(ext_call.return_data[0])
                mem[32] = 1
                if tokenFeeds[address(ext_call.return_data[0])]:
                    require ext_code.size(tokenFeeds[address(ext_call.return_data[0])])
                    staticcall tokenFeeds[address(ext_call.return_data[0])].latestRoundData() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 160
                    require ext_code.size(stor5C4D)
                    staticcall stor5C4D.latestRoundData() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 160
                    if not ext_call.return_data[32]:
                        if ext_call.return_data[32] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[32]
                        require ext_code.size(arg1)
                        staticcall arg1.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require ext_code.size(arg1)
                        staticcall arg1.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        prices[address(arg1)].field_0 = 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 0 / ext_call.return_data[32] / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                        prices[address(arg1)].field_256 = 0 / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                    else:
                        if 10^10 * ext_call.return_data[32] / ext_call.return_data[32] != 10^10:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 31]
                        if not 10^10 * ext_call.return_data[32]:
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[32]
                            require ext_code.size(arg1)
                            staticcall arg1.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            require ext_code.size(arg1)
                            staticcall arg1.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            prices[address(arg1)].field_0 = 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 0 / ext_call.return_data[32] / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                        else:
                            if 10^18 * ext_call.return_data[32] / 10^10 * ext_call.return_data[32] != 100 * 10^6:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 31]
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[32]
                            require ext_code.size(arg1)
                            staticcall arg1.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            require ext_code.size(arg1)
                            staticcall arg1.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            prices[address(arg1)].field_0 = 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                        prices[address(arg1)].field_256 = 2 * 10000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[32] / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[160] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                        mem[228] = 64
                        mem[260] = 2
                        mem[292 len 0] = None
                        require ext_code.size(unirouterAddress)
                        staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _961 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                        require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_961 + 192])] = mem[_961 + 224 len floor32(mem[_961 + 192])]
                        require 1 < mem[ceil32(return_data.size) + 192]
                        require ext_code.size(arg1)
                        staticcall arg1.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require ext_code.size(arg1)
                        staticcall arg1.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        prices[address(arg1)].field_0 = 2 * 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                        prices[address(arg1)].field_256 = 2 * 100000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * mem[ceil32(return_data.size) + 256] / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                    else:
                        if 0xc7198437980c041c805a1edcba50c1ce5db95118 == address(ext_call.return_data[0]):
                            mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[196] = 10^uint8(ext_call.return_data[0] - 2)
                            mem[228] = 64
                            mem[260] = 2
                            mem[292 len 0] = None
                            require ext_code.size(unirouterAddress)
                            staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _959 = mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                            require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_959 + 192])] = mem[_959 + 224 len floor32(mem[_959 + 192])]
                            require 1 < mem[ceil32(return_data.size) + 192]
                            require ext_code.size(arg1)
                            staticcall arg1.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            require ext_code.size(arg1)
                            staticcall arg1.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            prices[address(arg1)].field_0 = 2 * 100 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * mem[ceil32(return_data.size) + 256] / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                            prices[address(arg1)].field_256 = 2 * 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                        else:
                            mem[96] = 2
                            mem[128] = address(ext_call.return_data[0])
                            mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            mem[192] = 3
                            mem[224] = address(ext_call.return_data[0])
                            mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            mem[288] = 0xc7198437980c041c805a1edcba50c1ce5db95118
                            mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[324] = 10^uint8(ext_call.return_data[0] - 2)
                            mem[356] = 64
                            mem[388] = 2
                            mem[420 len 0] = None
                            require ext_code.size(unirouterAddress)
                            staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0] - 2), Array(len=2, data=mem[420 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 320
                            require return_data.size >= 32
                            _957 = mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                            require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                            require mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                            require mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 320]
                            _1008 = mem[_957 + 320]
                            mem[ceil32(return_data.size) + 352 len floor32(mem[_957 + 320])] = mem[_957 + 352 len floor32(mem[_957 + 320])]
                            require 1 < mem[ceil32(return_data.size) + 320]
                            _1397 = mem[ceil32(return_data.size) + 384]
                            mem[(32 * _1008) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _1008) + ceil32(return_data.size) + 356] = 10^uint8(ext_call.return_data[0] - 2)
                            mem[(32 * _1008) + ceil32(return_data.size) + 388] = 64
                            mem[(32 * _1008) + ceil32(return_data.size) + 420] = 3
                            mem[(32 * _1008) + ceil32(return_data.size) + 452 len 0] = None
                            require ext_code.size(unirouterAddress)
                            staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0] - 2), Array(len=3, data=mem[(32 * _1008) + ceil32(return_data.size) + 452 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _1008) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _1008) + (2 * ceil32(return_data.size)) + 352
                            require return_data.size >= 32
                            _1641 = mem[(32 * _1008) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32
                            require mem[(32 * _1008) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 <= 4294967296
                            require mem[(32 * _1008) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 32 <= return_data.size
                            require mem[(32 * _1008) + ceil32(return_data.size) + mem[(32 * _1008) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352] <= 4294967296 and mem[(32 * _1008) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + (32 * mem[(32 * _1008) + ceil32(return_data.size) + mem[(32 * _1008) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]) + 32 <= return_data.size
                            mem[(32 * _1008) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _1008) + ceil32(return_data.size) + mem[(32 * _1008) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0] - 2)) >> 32 + 352]
                            mem[(32 * _1008) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _1008) + ceil32(return_data.size) + _1641 + 352])] = mem[(32 * _1008) + ceil32(return_data.size) + _1641 + 384 len floor32(mem[(32 * _1008) + ceil32(return_data.size) + _1641 + 352])]
                            require 2 < mem[(32 * _1008) + (2 * ceil32(return_data.size)) + 352]
                            require ext_code.size(arg1)
                            staticcall arg1.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            require ext_code.size(arg1)
                            staticcall arg1.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            prices[address(arg1)].field_0 = 2 * 100 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * _1397 / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
                            prices[address(arg1)].field_256 = 2 * 100000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * _1008) + (2 * ceil32(return_data.size)) + 448] / ext_call.return_data[0] / 10^18 * 10^uint8(-ext_call.return_data[0] + 18)
    prices[address(arg1)].field_512 = block.timestamp
}



}
