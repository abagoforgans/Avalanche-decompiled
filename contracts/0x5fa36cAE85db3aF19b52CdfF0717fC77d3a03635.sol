contract main {




// =====================  Runtime code  =====================


#
#  - commit(address arg1)
#  - advance()
#
const name = 'Avax Crypto Coin Stake', 0

const decimals = 18

const usdc = 0x130966628846bfd36ff31a822705796e8cb8c18d

const epochTime = (block.timestamp - (455595 * 3600) / 60)

const symbol = '', 0

const advanceIncentive = 5 * 10^18


uint256 epoch;
uint256 sub_39a5e614;
uint256 sub_b8d89630;
uint256 totalSupply;
uint256 totalBonded;
uint256 totalStaged;
uint256 sub_417956d7;
address dollarAddress;
address oracleAddress;
address poolAddress;
address treasuryAddress;
mapping of struct fluidUntil;
mapping of uint256 totalBondedAt;
mapping of struct periodFor;
uint256 stor16;
mapping of uint256 stor17;
mapping of uint256 marketDebt;
address implementationAddress;
uint256 stor3608;

function periodFor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return periodFor[address(arg1)].field_256
}

function pool() payable {
    return poolAddress
}

function totalSupply() payable {
    return totalSupply
}

function rejectFor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return periodFor[address(arg1)].field_768
}

function sub_39a5e614(?) payable {
    return sub_39a5e614
}

function isNominated(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(periodFor[address(arg1)].field_0)
}

function recordedVote(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require periodFor[address(arg2)][4][address(arg1)].field_0 < 3
    return periodFor[address(arg2)][4][address(arg1)].field_0
}

function sub_417956d7(?) payable {
    return sub_417956d7
}

function totalBonded() payable {
    return totalBonded
}

function dollar() payable {
    return dollarAddress
}

function fluidUntil(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return fluidUntil[address(arg1)].field_512
}

function implementation() payable {
    return address(implementationAddress)
}

function treasury() payable {
    return treasuryAddress
}

function approveFor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return periodFor[address(arg1)].field_512
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return fluidUntil[address(arg1)].field_256
}

function oracle() payable {
    return oracleAddress
}

function balanceOfStaged(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return fluidUntil[address(arg1)].field_0
}

function epoch() payable {
    return epoch
}

function lockedUntil(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return fluidUntil[address(arg1)].field_768
}

function sub_b8d89630(?) payable {
    return sub_b8d89630
}

function totalStaged() payable {
    return totalStaged
}

function isInitialized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(periodFor[address(arg1)].field_1280)
}

function marketDebt() payable {
    return marketDebt[msg.sender]
}

function startFor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return periodFor[address(arg1)].field_0
}

function totalBondedAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalBondedAt[arg1]
}

function _fallback() payable {
    revert
}

function sub_13949d7e(?) payable {
    return (epoch - stor17[msg.sender] > 96)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 0
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 0
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    return 0
}

function statusOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if fluidUntil[address(arg1)].field_768 > epoch:
        return 2
    if epoch >= fluidUntil[address(arg1)].field_512:
        return 0
    return 1
}

function votesFor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if periodFor[address(arg1)].field_768 + periodFor[address(arg1)].field_512 < periodFor[address(arg1)].field_512:
        revert with 0, 'SafeMath: addition overflow'
    return (periodFor[address(arg1)].field_768 + periodFor[address(arg1)].field_512)
}

function totalNet() payable {
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_3d998609(?) payable {
    if epoch - stor17[msg.sender] > 96:
        revert with 0, 'Claim: Still locked'
    marketDebt[msg.sender] = 0
    require ext_code.size(treasuryAddress)
    call treasuryAddress.0x8104a2ec with:
         gas gas_remaining wei
        args msg.sender, marketDebt[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_649d5b84(?) payable {
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x70a08231 with:
            gas gas_remaining wei
           args treasuryAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return (ext_call.return_data[0] - stor16)
}

function sub_3527d6a9(?) payable {
    require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
    staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
            gas gas_remaining wei
           args treasuryAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function balanceOfBonded(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not totalSupply:
        return 0
    if not totalBonded:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply)
    if fluidUntil[address(arg1)].field_256 * totalBonded / totalBonded != fluidUntil[address(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (fluidUntil[address(arg1)].field_256 * totalBonded / totalSupply)
}

function marketBalance() payable {
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x70a08231 with:
            gas gas_remaining wei
           args treasuryAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
    staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
            gas gas_remaining wei
           args treasuryAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0] - stor16, ext_call.return_data[0]
}

function sub_a91644ee(?) payable {
    require ext_code.size(oracleAddress)
    call oracleAddress.0xd4a3e9d7 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require return_data.size >= 32
    require bool(ceil32(return_data.size) + 192 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    if ext_call.return_data[32]:
        if ext_call.return_data[0] / 10^12:
            if 80 * ext_call.return_data[0] / 10^12 / ext_call.return_data[0] / 10^12 != 80:
                revert with 0, 'SafeMath: multiplication overflow'
            if 80 * ext_call.return_data[0] / 10^12 / 100 != 10^18:
                if 80 * ext_call.return_data[0] / 10^12 / 100 > 10^18:
                    return (80 * ext_call.return_data[0] / 10^12 / 100)
    return 10^18
}

function marketSell(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
    staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
            gas gas_remaining wei
           args treasuryAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Sell: Not enough USDC balance'
    require ext_code.size(dollarAddress)
    call dollarAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, treasuryAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(treasuryAddress)
    call treasuryAddress.0xf7aaaf3f with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function marketBuy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x70a08231 with:
            gas gas_remaining wei
           args treasuryAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] - stor16 < arg1:
        revert with 0, 'Buy: Not enough ACD balance'
    require ext_code.size(oracleAddress)
    call oracleAddress.0xd4a3e9d7 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require return_data.size >= 32
    require bool((2 * ceil32(return_data.size)) + 224 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    if not ext_call.return_data[32]:
        if 10^18 * arg1 / 10^18 != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
        call 0x130966628846bfd36ff31a822705796e8cb8c18d.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, treasuryAddress, 10^18 * arg1 / 10^18
    else:
        if not ext_call.return_data[0] / 10^12:
            if 10^18 * arg1 / 10^18 != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
            call 0x130966628846bfd36ff31a822705796e8cb8c18d.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, treasuryAddress, 10^18 * arg1 / 10^18
        else:
            if 80 * ext_call.return_data[0] / 10^12 / ext_call.return_data[0] / 10^12 != 80:
                revert with 0, 'SafeMath: multiplication overflow'
            if 10^18 == 80 * ext_call.return_data[0] / 10^12 / 100:
                if 10^18 * arg1 / 10^18 != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
                call 0x130966628846bfd36ff31a822705796e8cb8c18d.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, treasuryAddress, 10^18 * arg1 / 10^18
            else:
                if 80 * ext_call.return_data[0] / 10^12 / 100 <= 10^18:
                    if 10^18 * arg1 / 10^18 != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
                    call 0x130966628846bfd36ff31a822705796e8cb8c18d.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, treasuryAddress, 10^18 * arg1 / 10^18
                else:
                    if not 80 * ext_call.return_data[0] / 10^12 / 100:
                        require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
                        call 0x130966628846bfd36ff31a822705796e8cb8c18d.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, treasuryAddress, 0
                    else:
                        if arg1 * 80 * ext_call.return_data[0] / 10^12 / 100 / 80 * ext_call.return_data[0] / 10^12 / 100 != arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
                        call 0x130966628846bfd36ff31a822705796e8cb8c18d.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, treasuryAddress, arg1 * 80 * ext_call.return_data[0] / 10^12 / 100 / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor17[msg.sender] = epoch
    marketDebt[msg.sender] += arg1
}

function initialize(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    mem[0] = address(implementationAddress)
    mem[32] = 15
    if not periodFor[address(stor3608)].field_1280:
        periodFor[address(stor3608)].field_1280 = 1
        dollarAddress = arg1
        oracleAddress = arg2
        poolAddress = arg3
        treasuryAddress = arg4
    mem[128] = 0x5065726d697373696f6e00000000000000000000000000000000000000000000
    mem[96] = 32
    mem[64] = 160
    idx = 32
    while idx:
        require idx - 1 < 32
        if not Mask(8, 248, mem[idx + 127]):
            idx = idx - 1
            continue 
        mem[96] = idx
        mem[192] = 0x416c726561647920696e697469616c697a656400000000000000000000000000
        mem[160] = 32
        mem[64] = 224
        s = 32
        while s:
            require s - 1 < 32
            if not Mask(8, 248, mem[s + 191]):
                s = s - 1
                continue 
            mem[160] = s
            s = 0
            while s < idx:
                mem[s + 256] = mem[s + 128]
                s = s + 32
                continue 
            mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            if ceil32(idx) <= idx:
                _227 = mem[160]
                s = 0
                while s < mem[160]:
                    mem[s + idx + 258] = mem[s + 192]
                    s = s + 32
                    continue 
                if ceil32(mem[160]) <= mem[160]:
                    _337 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _227 + idx + 258
                    mem[_227 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_227 + idx + 262] = 32
                    _353 = mem[_337]
                    mem[_227 + idx + 294] = mem[_337]
                    s = 0
                    while s < _353:
                        mem[s + _227 + idx + 326] = mem[s + _337 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_353) > _353:
                        mem[_353 + _227 + idx + 326] = 0
                    revert with 0, 32, mem[_227 + idx + 294 len ceil32(_353) + 32]
                mem[mem[160] + idx + 258] = 0
                _338 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _227 + idx + 258
                mem[_227 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_227 + idx + 262] = 32
                _354 = mem[_338]
                mem[_227 + idx + 294] = mem[_338]
                s = 0
                while s < _354:
                    mem[s + _227 + idx + 326] = mem[s + _338 + 32]
                    s = s + 32
                    continue 
                if ceil32(_354) > _354:
                    mem[_354 + _227 + idx + 326] = 0
                revert with 0, 32, mem[_227 + idx + 294 len ceil32(_354) + 32]
            _228 = mem[160]
            s = 0
            while s < mem[160]:
                mem[s + idx + 258] = mem[s + 192]
                s = s + 32
                continue 
            if ceil32(mem[160]) <= mem[160]:
                _339 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _228 + idx + 258
                mem[_228 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_228 + idx + 262] = 32
                _355 = mem[_339]
                mem[_228 + idx + 294] = mem[_339]
                s = 0
                while s < _355:
                    mem[s + _228 + idx + 326] = mem[s + _339 + 32]
                    s = s + 32
                    continue 
                if ceil32(_355) > _355:
                    mem[_355 + _228 + idx + 326] = 0
                revert with 0, 32, mem[_228 + idx + 294 len ceil32(_355) + 32]
            mem[mem[160] + idx + 258] = 0
            _340 = mem[64]
            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
            mem[64] = _228 + idx + 258
            mem[_228 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_228 + idx + 262] = 32
            _356 = mem[_340]
            mem[_228 + idx + 294] = mem[_340]
            s = 0
            while s < _356:
                mem[s + _228 + idx + 326] = mem[s + _340 + 32]
                s = s + 32
                continue 
            if ceil32(_356) > _356:
                mem[_356 + _228 + idx + 326] = 0
            revert with 0, 32, mem[_228 + idx + 294 len ceil32(_356) + 32]
        mem[224] = 0
        mem[64] = 256
        s = 0
        while s < idx:
            mem[s + 288] = mem[s + 128]
            s = s + 32
            continue 
        mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
        if ceil32(idx) <= idx:
            _225 = mem[224]
            s = 0
            while s < mem[224]:
                mem[s + idx + 290] = mem[s + 256]
                s = s + 32
                continue 
            if ceil32(mem[224]) <= mem[224]:
                _333 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _225 + idx + 290
                mem[_225 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_225 + idx + 294] = 32
                _349 = mem[_333]
                mem[_225 + idx + 326] = mem[_333]
                s = 0
                while s < _349:
                    mem[s + _225 + idx + 358] = mem[s + _333 + 32]
                    s = s + 32
                    continue 
                if ceil32(_349) > _349:
                    mem[_349 + _225 + idx + 358] = 0
                revert with 0, 32, mem[_225 + idx + 326 len ceil32(_349) + 32]
            mem[mem[224] + idx + 290] = 0
            _334 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _225 + idx + 290
            mem[_225 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_225 + idx + 294] = 32
            _350 = mem[_334]
            mem[_225 + idx + 326] = mem[_334]
            s = 0
            while s < _350:
                mem[s + _225 + idx + 358] = mem[s + _334 + 32]
                s = s + 32
                continue 
            if ceil32(_350) > _350:
                mem[_350 + _225 + idx + 358] = 0
            revert with 0, 32, mem[_225 + idx + 326 len ceil32(_350) + 32]
        _226 = mem[224]
        s = 0
        while s < mem[224]:
            mem[s + idx + 290] = mem[s + 256]
            s = s + 32
            continue 
        if ceil32(mem[224]) <= mem[224]:
            _335 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _226 + idx + 290
            mem[_226 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_226 + idx + 294] = 32
            _351 = mem[_335]
            mem[_226 + idx + 326] = mem[_335]
            s = 0
            while s < _351:
                mem[s + _226 + idx + 358] = mem[s + _335 + 32]
                s = s + 32
                continue 
            if ceil32(_351) > _351:
                mem[_351 + _226 + idx + 358] = 0
            revert with 0, 32, mem[_226 + idx + 326 len ceil32(_351) + 32]
        mem[mem[224] + idx + 290] = 0
        _336 = mem[64]
        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
        mem[64] = _226 + idx + 290
        mem[_226 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_226 + idx + 294] = 32
        _352 = mem[_336]
        mem[_226 + idx + 326] = mem[_336]
        s = 0
        while s < _352:
            mem[s + _226 + idx + 358] = mem[s + _336 + 32]
            s = s + 32
            continue 
        if ceil32(_352) > _352:
            mem[_352 + _226 + idx + 358] = 0
        revert with 0, 32, mem[_226 + idx + 326 len ceil32(_352) + 32]
    mem[160] = 0
    mem[224] = 0x416c726561647920696e697469616c697a656400000000000000000000000000
    mem[192] = 32
    mem[64] = 256
    idx = 32
    while idx:
        require idx - 1 < 32
        if not Mask(8, 248, mem[idx + 223]):
            idx = idx - 1
            continue 
        mem[192] = idx
        s = 0
        while s < 0:
            mem[s + 288] = mem[s + 192]
            s = s + 32
            continue 
        mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
        s = 0
        while s < idx:
            mem[s + 290] = mem[s + 224]
            s = s + 32
            continue 
        mem[256] = idx + 2
        mem[64] = idx + 290
        mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[idx + 294] = 32
        mem[idx + 326] = idx + 2
        s = 0
        while s < idx + 2:
            mem[s + idx + 358] = mem[s + 288]
            s = s + 32
            continue 
        if floor32(idx + 33) > idx + 2:
            mem[(2 * idx) + 360] = 0
        revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if fluidUntil[address(msg.sender)].field_768 <= epoch:
        mem[0] = msg.sender
        mem[32] = 13
        if epoch < fluidUntil[address(msg.sender)].field_512:
            mem[128] = 0x5065726d697373696f6e00000000000000000000000000000000000000000000
            mem[96] = 32
            mem[64] = 160
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 127]):
                    idx = idx - 1
                    continue 
                mem[96] = idx
                mem[192] = 0x4e6f742066726f7a656e206f72206c6f636b6564000000000000000000000000
                mem[160] = 32
                mem[64] = 224
                s = 32
                while s:
                    require s - 1 < 32
                    if not Mask(8, 248, mem[s + 191]):
                        s = s - 1
                        continue 
                    mem[160] = s
                    s = 0
                    while s < idx:
                        mem[s + 256] = mem[s + 128]
                        s = s + 32
                        continue 
                    mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    if ceil32(idx) <= idx:
                        _251 = mem[160]
                        s = 0
                        while s < mem[160]:
                            mem[s + idx + 258] = mem[s + 192]
                            s = s + 32
                            continue 
                        if ceil32(mem[160]) <= mem[160]:
                            _361 = mem[64]
                            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                            mem[64] = _251 + idx + 258
                            mem[_251 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_251 + idx + 262] = 32
                            _377 = mem[_361]
                            mem[_251 + idx + 294] = mem[_361]
                            s = 0
                            while s < _377:
                                mem[s + _251 + idx + 326] = mem[s + _361 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_377) > _377:
                                mem[_377 + _251 + idx + 326] = 0
                            revert with 0, 32, mem[_251 + idx + 294 len ceil32(_377) + 32]
                        mem[mem[160] + idx + 258] = 0
                        _362 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _251 + idx + 258
                        mem[_251 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_251 + idx + 262] = 32
                        _378 = mem[_362]
                        mem[_251 + idx + 294] = mem[_362]
                        s = 0
                        while s < _378:
                            mem[s + _251 + idx + 326] = mem[s + _362 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_378) > _378:
                            mem[_378 + _251 + idx + 326] = 0
                        revert with 0, 32, mem[_251 + idx + 294 len ceil32(_378) + 32]
                    _252 = mem[160]
                    s = 0
                    while s < mem[160]:
                        mem[s + idx + 258] = mem[s + 192]
                        s = s + 32
                        continue 
                    if ceil32(mem[160]) <= mem[160]:
                        _363 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _252 + idx + 258
                        mem[_252 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_252 + idx + 262] = 32
                        _379 = mem[_363]
                        mem[_252 + idx + 294] = mem[_363]
                        s = 0
                        while s < _379:
                            mem[s + _252 + idx + 326] = mem[s + _363 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_379) > _379:
                            mem[_379 + _252 + idx + 326] = 0
                        revert with 0, 32, mem[_252 + idx + 294 len ceil32(_379) + 32]
                    mem[mem[160] + idx + 258] = 0
                    _364 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _252 + idx + 258
                    mem[_252 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_252 + idx + 262] = 32
                    _380 = mem[_364]
                    mem[_252 + idx + 294] = mem[_364]
                    s = 0
                    while s < _380:
                        mem[s + _252 + idx + 326] = mem[s + _364 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_380) > _380:
                        mem[_380 + _252 + idx + 326] = 0
                    revert with 0, 32, mem[_252 + idx + 294 len ceil32(_380) + 32]
                mem[224] = 0
                mem[64] = 256
                s = 0
                while s < idx:
                    mem[s + 288] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                if ceil32(idx) <= idx:
                    _249 = mem[224]
                    s = 0
                    while s < mem[224]:
                        mem[s + idx + 290] = mem[s + 256]
                        s = s + 32
                        continue 
                    if ceil32(mem[224]) <= mem[224]:
                        _357 = mem[64]
                        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                        mem[64] = _249 + idx + 290
                        mem[_249 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_249 + idx + 294] = 32
                        _373 = mem[_357]
                        mem[_249 + idx + 326] = mem[_357]
                        s = 0
                        while s < _373:
                            mem[s + _249 + idx + 358] = mem[s + _357 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_373) > _373:
                            mem[_373 + _249 + idx + 358] = 0
                        revert with 0, 32, mem[_249 + idx + 326 len ceil32(_373) + 32]
                    mem[mem[224] + idx + 290] = 0
                    _358 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _249 + idx + 290
                    mem[_249 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_249 + idx + 294] = 32
                    _374 = mem[_358]
                    mem[_249 + idx + 326] = mem[_358]
                    s = 0
                    while s < _374:
                        mem[s + _249 + idx + 358] = mem[s + _358 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_374) > _374:
                        mem[_374 + _249 + idx + 358] = 0
                    revert with 0, 32, mem[_249 + idx + 326 len ceil32(_374) + 32]
                _250 = mem[224]
                s = 0
                while s < mem[224]:
                    mem[s + idx + 290] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(mem[224]) <= mem[224]:
                    _359 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _250 + idx + 290
                    mem[_250 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_250 + idx + 294] = 32
                    _375 = mem[_359]
                    mem[_250 + idx + 326] = mem[_359]
                    s = 0
                    while s < _375:
                        mem[s + _250 + idx + 358] = mem[s + _359 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_375) > _375:
                        mem[_375 + _250 + idx + 358] = 0
                    revert with 0, 32, mem[_250 + idx + 326 len ceil32(_375) + 32]
                mem[mem[224] + idx + 290] = 0
                _360 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _250 + idx + 290
                mem[_250 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_250 + idx + 294] = 32
                _376 = mem[_360]
                mem[_250 + idx + 326] = mem[_360]
                s = 0
                while s < _376:
                    mem[s + _250 + idx + 358] = mem[s + _360 + 32]
                    s = s + 32
                    continue 
                if ceil32(_376) > _376:
                    mem[_376 + _250 + idx + 358] = 0
                revert with 0, 32, mem[_250 + idx + 326 len ceil32(_376) + 32]
            mem[160] = 0
            mem[224] = 0x4e6f742066726f7a656e206f72206c6f636b6564000000000000000000000000
            mem[192] = 32
            mem[64] = 256
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 223]):
                    idx = idx - 1
                    continue 
                mem[192] = idx
                s = 0
                while s < 0:
                    mem[s + 288] = mem[s + 192]
                    s = s + 32
                    continue 
                mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                s = 0
                while s < idx:
                    mem[s + 290] = mem[s + 224]
                    s = s + 32
                    continue 
                mem[256] = idx + 2
                mem[64] = idx + 290
                mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[idx + 294] = 32
                mem[idx + 326] = idx + 2
                s = 0
                while s < idx + 2:
                    mem[s + idx + 358] = mem[s + 288]
                    s = s + 32
                    continue 
                if floor32(idx + 33) > idx + 2:
                    mem[(2 * idx) + 360] = 0
                revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
            revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
    require ext_code.size(dollarAddress)
    call dollarAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    fluidUntil[address(msg.sender)].field_0 += arg1
    if arg1 + totalStaged < totalStaged:
        revert with 0, 'SafeMath: addition overflow'
    totalStaged += arg1
    emit Deposit(arg1, msg.sender);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if fluidUntil[address(msg.sender)].field_768 <= epoch:
        mem[0] = msg.sender
        mem[32] = 13
        if epoch < fluidUntil[address(msg.sender)].field_512:
            mem[128] = 0x5065726d697373696f6e00000000000000000000000000000000000000000000
            mem[96] = 32
            mem[64] = 160
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 127]):
                    idx = idx - 1
                    continue 
                mem[96] = idx
                mem[192] = 0x4e6f742066726f7a656e206f72206c6f636b6564000000000000000000000000
                mem[160] = 32
                mem[64] = 224
                s = 32
                while s:
                    require s - 1 < 32
                    if not Mask(8, 248, mem[s + 191]):
                        s = s - 1
                        continue 
                    mem[160] = s
                    s = 0
                    while s < idx:
                        mem[s + 256] = mem[s + 128]
                        s = s + 32
                        continue 
                    mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    if ceil32(idx) <= idx:
                        _277 = mem[160]
                        s = 0
                        while s < mem[160]:
                            mem[s + idx + 258] = mem[s + 192]
                            s = s + 32
                            continue 
                        if ceil32(mem[160]) <= mem[160]:
                            _387 = mem[64]
                            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                            mem[64] = _277 + idx + 258
                            mem[_277 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_277 + idx + 262] = 32
                            _403 = mem[_387]
                            mem[_277 + idx + 294] = mem[_387]
                            s = 0
                            while s < _403:
                                mem[s + _277 + idx + 326] = mem[s + _387 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_403) > _403:
                                mem[_403 + _277 + idx + 326] = 0
                            revert with 0, 32, mem[_277 + idx + 294 len ceil32(_403) + 32]
                        mem[mem[160] + idx + 258] = 0
                        _388 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _277 + idx + 258
                        mem[_277 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_277 + idx + 262] = 32
                        _404 = mem[_388]
                        mem[_277 + idx + 294] = mem[_388]
                        s = 0
                        while s < _404:
                            mem[s + _277 + idx + 326] = mem[s + _388 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_404) > _404:
                            mem[_404 + _277 + idx + 326] = 0
                        revert with 0, 32, mem[_277 + idx + 294 len ceil32(_404) + 32]
                    _278 = mem[160]
                    s = 0
                    while s < mem[160]:
                        mem[s + idx + 258] = mem[s + 192]
                        s = s + 32
                        continue 
                    if ceil32(mem[160]) <= mem[160]:
                        _389 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _278 + idx + 258
                        mem[_278 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_278 + idx + 262] = 32
                        _405 = mem[_389]
                        mem[_278 + idx + 294] = mem[_389]
                        s = 0
                        while s < _405:
                            mem[s + _278 + idx + 326] = mem[s + _389 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_405) > _405:
                            mem[_405 + _278 + idx + 326] = 0
                        revert with 0, 32, mem[_278 + idx + 294 len ceil32(_405) + 32]
                    mem[mem[160] + idx + 258] = 0
                    _390 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _278 + idx + 258
                    mem[_278 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_278 + idx + 262] = 32
                    _406 = mem[_390]
                    mem[_278 + idx + 294] = mem[_390]
                    s = 0
                    while s < _406:
                        mem[s + _278 + idx + 326] = mem[s + _390 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_406) > _406:
                        mem[_406 + _278 + idx + 326] = 0
                    revert with 0, 32, mem[_278 + idx + 294 len ceil32(_406) + 32]
                mem[224] = 0
                mem[64] = 256
                s = 0
                while s < idx:
                    mem[s + 288] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                if ceil32(idx) <= idx:
                    _275 = mem[224]
                    s = 0
                    while s < mem[224]:
                        mem[s + idx + 290] = mem[s + 256]
                        s = s + 32
                        continue 
                    if ceil32(mem[224]) <= mem[224]:
                        _383 = mem[64]
                        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                        mem[64] = _275 + idx + 290
                        mem[_275 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_275 + idx + 294] = 32
                        _399 = mem[_383]
                        mem[_275 + idx + 326] = mem[_383]
                        s = 0
                        while s < _399:
                            mem[s + _275 + idx + 358] = mem[s + _383 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_399) > _399:
                            mem[_399 + _275 + idx + 358] = 0
                        revert with 0, 32, mem[_275 + idx + 326 len ceil32(_399) + 32]
                    mem[mem[224] + idx + 290] = 0
                    _384 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _275 + idx + 290
                    mem[_275 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_275 + idx + 294] = 32
                    _400 = mem[_384]
                    mem[_275 + idx + 326] = mem[_384]
                    s = 0
                    while s < _400:
                        mem[s + _275 + idx + 358] = mem[s + _384 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_400) > _400:
                        mem[_400 + _275 + idx + 358] = 0
                    revert with 0, 32, mem[_275 + idx + 326 len ceil32(_400) + 32]
                _276 = mem[224]
                s = 0
                while s < mem[224]:
                    mem[s + idx + 290] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(mem[224]) <= mem[224]:
                    _385 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _276 + idx + 290
                    mem[_276 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_276 + idx + 294] = 32
                    _401 = mem[_385]
                    mem[_276 + idx + 326] = mem[_385]
                    s = 0
                    while s < _401:
                        mem[s + _276 + idx + 358] = mem[s + _385 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_401) > _401:
                        mem[_401 + _276 + idx + 358] = 0
                    revert with 0, 32, mem[_276 + idx + 326 len ceil32(_401) + 32]
                mem[mem[224] + idx + 290] = 0
                _386 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _276 + idx + 290
                mem[_276 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_276 + idx + 294] = 32
                _402 = mem[_386]
                mem[_276 + idx + 326] = mem[_386]
                s = 0
                while s < _402:
                    mem[s + _276 + idx + 358] = mem[s + _386 + 32]
                    s = s + 32
                    continue 
                if ceil32(_402) > _402:
                    mem[_402 + _276 + idx + 358] = 0
                revert with 0, 32, mem[_276 + idx + 326 len ceil32(_402) + 32]
            mem[160] = 0
            mem[224] = 0x4e6f742066726f7a656e206f72206c6f636b6564000000000000000000000000
            mem[192] = 32
            mem[64] = 256
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 223]):
                    idx = idx - 1
                    continue 
                mem[192] = idx
                s = 0
                while s < 0:
                    mem[s + 288] = mem[s + 192]
                    s = s + 32
                    continue 
                mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                s = 0
                while s < idx:
                    mem[s + 290] = mem[s + 224]
                    s = s + 32
                    continue 
                mem[256] = idx + 2
                mem[64] = idx + 290
                mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[idx + 294] = 32
                mem[idx + 326] = idx + 2
                s = 0
                while s < idx + 2:
                    mem[s + idx + 358] = mem[s + 288]
                    s = s + 32
                    continue 
                if floor32(idx + 33) > idx + 2:
                    mem[(2 * idx) + 360] = 0
                revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
            revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
    require ext_code.size(dollarAddress)
    call dollarAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 > fluidUntil[address(msg.sender)].field_0:
        revert with 0, 
                    32,
                    36,
                    0xfe426f6e64696e673a20696e73756666696369656e74207374616765642062616c616e63, mem[ceil32(return_data.size) + 164 len 28] >> 32,
                    0
    fluidUntil[address(msg.sender)].field_0 -= arg1
    if arg1 > totalStaged:
        revert with 0, 
                    32,
                    36,
                    0xfe426f6e64696e673a20696e73756666696369656e74207374616765642062616c616e63, mem[ceil32(return_data.size) + 164 len 28] >> 32,
                    0
    totalStaged -= arg1
    emit Withdraw(arg1, msg.sender);
}

function bond(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = 13
    if fluidUntil[address(msg.sender)].field_768 > epoch:
        mem[128] = 0x5065726d697373696f6e00000000000000000000000000000000000000000000
        mem[96] = 32
        mem[64] = 160
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + 127]):
                idx = idx - 1
                continue 
            mem[96] = idx
            mem[192] = 0x4e6f742066726f7a656e206f7220666c75696400000000000000000000000000
            mem[160] = 32
            mem[64] = 224
            s = 32
            while s:
                require s - 1 < 32
                if not Mask(8, 248, mem[s + 191]):
                    s = s - 1
                    continue 
                mem[160] = s
                s = 0
                while s < idx:
                    mem[s + 256] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                if ceil32(idx) <= idx:
                    _541 = mem[160]
                    s = 0
                    while s < mem[160]:
                        mem[s + idx + 258] = mem[s + 192]
                        s = s + 32
                        continue 
                    if ceil32(mem[160]) <= mem[160]:
                        _651 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _541 + idx + 258
                        mem[_541 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_541 + idx + 262] = 32
                        _667 = mem[_651]
                        mem[_541 + idx + 294] = mem[_651]
                        s = 0
                        while s < _667:
                            mem[s + _541 + idx + 326] = mem[s + _651 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_667) > _667:
                            mem[_667 + _541 + idx + 326] = 0
                        revert with 0, 32, mem[_541 + idx + 294 len ceil32(_667) + 32]
                    mem[mem[160] + idx + 258] = 0
                    _652 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _541 + idx + 258
                    mem[_541 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_541 + idx + 262] = 32
                    _668 = mem[_652]
                    mem[_541 + idx + 294] = mem[_652]
                    s = 0
                    while s < _668:
                        mem[s + _541 + idx + 326] = mem[s + _652 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_668) > _668:
                        mem[_668 + _541 + idx + 326] = 0
                    revert with 0, 32, mem[_541 + idx + 294 len ceil32(_668) + 32]
                _542 = mem[160]
                s = 0
                while s < mem[160]:
                    mem[s + idx + 258] = mem[s + 192]
                    s = s + 32
                    continue 
                if ceil32(mem[160]) <= mem[160]:
                    _653 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _542 + idx + 258
                    mem[_542 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_542 + idx + 262] = 32
                    _669 = mem[_653]
                    mem[_542 + idx + 294] = mem[_653]
                    s = 0
                    while s < _669:
                        mem[s + _542 + idx + 326] = mem[s + _653 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_669) > _669:
                        mem[_669 + _542 + idx + 326] = 0
                    revert with 0, 32, mem[_542 + idx + 294 len ceil32(_669) + 32]
                mem[mem[160] + idx + 258] = 0
                _654 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _542 + idx + 258
                mem[_542 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_542 + idx + 262] = 32
                _670 = mem[_654]
                mem[_542 + idx + 294] = mem[_654]
                s = 0
                while s < _670:
                    mem[s + _542 + idx + 326] = mem[s + _654 + 32]
                    s = s + 32
                    continue 
                if ceil32(_670) > _670:
                    mem[_670 + _542 + idx + 326] = 0
                revert with 0, 32, mem[_542 + idx + 294 len ceil32(_670) + 32]
            mem[224] = 0
            mem[64] = 256
            s = 0
            while s < idx:
                mem[s + 288] = mem[s + 128]
                s = s + 32
                continue 
            mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            if ceil32(idx) <= idx:
                _539 = mem[224]
                s = 0
                while s < mem[224]:
                    mem[s + idx + 290] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(mem[224]) <= mem[224]:
                    _647 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _539 + idx + 290
                    mem[_539 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_539 + idx + 294] = 32
                    _663 = mem[_647]
                    mem[_539 + idx + 326] = mem[_647]
                    s = 0
                    while s < _663:
                        mem[s + _539 + idx + 358] = mem[s + _647 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_663) > _663:
                        mem[_663 + _539 + idx + 358] = 0
                    revert with 0, 32, mem[_539 + idx + 326 len ceil32(_663) + 32]
                mem[mem[224] + idx + 290] = 0
                _648 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _539 + idx + 290
                mem[_539 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_539 + idx + 294] = 32
                _664 = mem[_648]
                mem[_539 + idx + 326] = mem[_648]
                s = 0
                while s < _664:
                    mem[s + _539 + idx + 358] = mem[s + _648 + 32]
                    s = s + 32
                    continue 
                if ceil32(_664) > _664:
                    mem[_664 + _539 + idx + 358] = 0
                revert with 0, 32, mem[_539 + idx + 326 len ceil32(_664) + 32]
            _540 = mem[224]
            s = 0
            while s < mem[224]:
                mem[s + idx + 290] = mem[s + 256]
                s = s + 32
                continue 
            if ceil32(mem[224]) <= mem[224]:
                _649 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _540 + idx + 290
                mem[_540 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_540 + idx + 294] = 32
                _665 = mem[_649]
                mem[_540 + idx + 326] = mem[_649]
                s = 0
                while s < _665:
                    mem[s + _540 + idx + 358] = mem[s + _649 + 32]
                    s = s + 32
                    continue 
                if ceil32(_665) > _665:
                    mem[_665 + _540 + idx + 358] = 0
                revert with 0, 32, mem[_540 + idx + 326 len ceil32(_665) + 32]
            mem[mem[224] + idx + 290] = 0
            _650 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _540 + idx + 290
            mem[_540 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_540 + idx + 294] = 32
            _666 = mem[_650]
            mem[_540 + idx + 326] = mem[_650]
            s = 0
            while s < _666:
                mem[s + _540 + idx + 358] = mem[s + _650 + 32]
                s = s + 32
                continue 
            if ceil32(_666) > _666:
                mem[_666 + _540 + idx + 358] = 0
            revert with 0, 32, mem[_540 + idx + 326 len ceil32(_666) + 32]
        mem[160] = 0
        mem[224] = 0x4e6f742066726f7a656e206f7220666c75696400000000000000000000000000
        mem[192] = 32
        mem[64] = 256
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + 223]):
                idx = idx - 1
                continue 
            mem[192] = idx
            s = 0
            while s < 0:
                mem[s + 288] = mem[s + 192]
                s = s + 32
                continue 
            mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < idx:
                mem[s + 290] = mem[s + 224]
                s = s + 32
                continue 
            mem[256] = idx + 2
            mem[64] = idx + 290
            mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[idx + 294] = 32
            mem[idx + 326] = idx + 2
            s = 0
            while s < idx + 2:
                mem[s + idx + 358] = mem[s + 288]
                s = s + 32
                continue 
            if floor32(idx + 33) > idx + 2:
                mem[(2 * idx) + 360] = 0
            revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
        revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
    if epoch + 240 < epoch:
        revert with 0, 'SafeMath: addition overflow'
    fluidUntil[address(msg.sender)].field_512 = epoch + 240
    if not totalBonded:
        if not arg1:
            if fluidUntil[address(msg.sender)].field_256 < fluidUntil[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(0, 0, msg.sender);
            if arg1 + totalBonded < totalBonded:
                revert with 0, 'SafeMath: addition overflow'
            totalBonded += arg1
            if arg1 > fluidUntil[address(msg.sender)].field_0:
                revert with 0, 32, 36, 0xfe426f6e64696e673a20696e73756666696369656e74207374616765642062616c616e63, mem[164 len 28] >> 32, 0
            fluidUntil[address(msg.sender)].field_0 -= arg1
            if arg1 > totalStaged:
                revert with 0, 32, 36, 0xfe426f6e64696e673a20696e73756666696369656e74207374616765642062616c616e63, mem[164 len 28] >> 32, 0
            totalStaged -= arg1
            if epoch + 1 < epoch:
                revert with 0, 'SafeMath: addition overflow'
            emit Bond(epoch + 1, 0, arg1, msg.sender);
        else:
            if 10^6 * arg1 / arg1 != 10^6:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if (10^6 * arg1) + fluidUntil[address(msg.sender)].field_256 < fluidUntil[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            fluidUntil[address(msg.sender)].field_256 += 10^6 * arg1
            if (10^6 * arg1) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 10^6 * arg1
            emit Transfer((10^6 * arg1), 0, msg.sender);
            if arg1 + totalBonded < totalBonded:
                revert with 0, 'SafeMath: addition overflow'
            totalBonded += arg1
            if arg1 > fluidUntil[address(msg.sender)].field_0:
                revert with 0, 32, 36, 0xfe426f6e64696e673a20696e73756666696369656e74207374616765642062616c616e63, mem[164 len 28] >> 32, 0
            fluidUntil[address(msg.sender)].field_0 -= arg1
            if arg1 > totalStaged:
                revert with 0, 32, 36, 0xfe426f6e64696e673a20696e73756666696369656e74207374616765642062616c616e63, mem[164 len 28] >> 32, 0
            totalStaged -= arg1
            if epoch + 1 < epoch:
                revert with 0, 'SafeMath: addition overflow'
            emit Bond(epoch + 1, 10^6 * arg1, arg1, msg.sender);
    else:
        if not arg1:
            if not totalBonded:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / totalBonded) + fluidUntil[address(msg.sender)].field_256 < fluidUntil[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            fluidUntil[address(msg.sender)].field_256 += 0 / totalBonded
            if (0 / totalBonded) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 0 / totalBonded
            emit Transfer((0 / totalBonded), 0, msg.sender);
            if arg1 + totalBonded < totalBonded:
                revert with 0, 'SafeMath: addition overflow'
            totalBonded += arg1
            if arg1 > fluidUntil[address(msg.sender)].field_0:
                revert with 0, 32, 36, 0xfe426f6e64696e673a20696e73756666696369656e74207374616765642062616c616e63, mem[228 len 28] >> 32, 0
            fluidUntil[address(msg.sender)].field_0 -= arg1
            if arg1 > totalStaged:
                revert with 0, 32, 36, 0xfe426f6e64696e673a20696e73756666696369656e74207374616765642062616c616e63, mem[228 len 28] >> 32, 0
            totalStaged -= arg1
            if epoch + 1 < epoch:
                revert with 0, 'SafeMath: addition overflow'
            emit Bond(epoch + 1, 0 / totalBonded, arg1, msg.sender);
        else:
            if totalSupply * arg1 / arg1 != totalSupply:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not totalBonded:
                revert with 0, 'SafeMath: division by zero', 0
            if (totalSupply * arg1 / totalBonded) + fluidUntil[address(msg.sender)].field_256 < fluidUntil[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            fluidUntil[address(msg.sender)].field_256 += totalSupply * arg1 / totalBonded
            if (totalSupply * arg1 / totalBonded) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += totalSupply * arg1 / totalBonded
            emit Transfer((totalSupply * arg1 / totalBonded), 0, msg.sender);
            if arg1 + totalBonded < totalBonded:
                revert with 0, 'SafeMath: addition overflow'
            totalBonded += arg1
            if arg1 > fluidUntil[address(msg.sender)].field_0:
                revert with 0, 32, 36, 0xfe426f6e64696e673a20696e73756666696369656e74207374616765642062616c616e63, mem[228 len 28] >> 32, 0
            fluidUntil[address(msg.sender)].field_0 -= arg1
            if arg1 > totalStaged:
                revert with 0, 32, 36, 0xfe426f6e64696e673a20696e73756666696369656e74207374616765642062616c616e63, mem[228 len 28] >> 32, 0
            totalStaged -= arg1
            if epoch + 1 < epoch:
                revert with 0, 'SafeMath: addition overflow'
            emit Bond(epoch + 1, totalSupply * arg1 / totalBonded, arg1, msg.sender);
}

function unbondUnderlying(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = 13
    if fluidUntil[address(msg.sender)].field_768 > epoch:
        mem[128] = 0x5065726d697373696f6e00000000000000000000000000000000000000000000
        mem[96] = 32
        mem[64] = 160
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + 127]):
                idx = idx - 1
                continue 
            mem[96] = idx
            mem[192] = 0x4e6f742066726f7a656e206f7220666c75696400000000000000000000000000
            mem[160] = 32
            mem[64] = 224
            s = 32
            while s:
                require s - 1 < 32
                if not Mask(8, 248, mem[s + 191]):
                    s = s - 1
                    continue 
                mem[160] = s
                s = 0
                while s < idx:
                    mem[s + 256] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                if ceil32(idx) <= idx:
                    _965 = mem[160]
                    s = 0
                    while s < mem[160]:
                        mem[s + idx + 258] = mem[s + 192]
                        s = s + 32
                        continue 
                    if ceil32(mem[160]) <= mem[160]:
                        _1075 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _965 + idx + 258
                        mem[_965 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_965 + idx + 262] = 32
                        _1091 = mem[_1075]
                        mem[_965 + idx + 294] = mem[_1075]
                        s = 0
                        while s < _1091:
                            mem[s + _965 + idx + 326] = mem[s + _1075 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1091) > _1091:
                            mem[_1091 + _965 + idx + 326] = 0
                        revert with 0, 32, mem[_965 + idx + 294 len ceil32(_1091) + 32]
                    mem[mem[160] + idx + 258] = 0
                    _1076 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _965 + idx + 258
                    mem[_965 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_965 + idx + 262] = 32
                    _1092 = mem[_1076]
                    mem[_965 + idx + 294] = mem[_1076]
                    s = 0
                    while s < _1092:
                        mem[s + _965 + idx + 326] = mem[s + _1076 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1092) > _1092:
                        mem[_1092 + _965 + idx + 326] = 0
                    revert with 0, 32, mem[_965 + idx + 294 len ceil32(_1092) + 32]
                _966 = mem[160]
                s = 0
                while s < mem[160]:
                    mem[s + idx + 258] = mem[s + 192]
                    s = s + 32
                    continue 
                if ceil32(mem[160]) <= mem[160]:
                    _1077 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _966 + idx + 258
                    mem[_966 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_966 + idx + 262] = 32
                    _1093 = mem[_1077]
                    mem[_966 + idx + 294] = mem[_1077]
                    s = 0
                    while s < _1093:
                        mem[s + _966 + idx + 326] = mem[s + _1077 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1093) > _1093:
                        mem[_1093 + _966 + idx + 326] = 0
                    revert with 0, 32, mem[_966 + idx + 294 len ceil32(_1093) + 32]
                mem[mem[160] + idx + 258] = 0
                _1078 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _966 + idx + 258
                mem[_966 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_966 + idx + 262] = 32
                _1094 = mem[_1078]
                mem[_966 + idx + 294] = mem[_1078]
                s = 0
                while s < _1094:
                    mem[s + _966 + idx + 326] = mem[s + _1078 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1094) > _1094:
                    mem[_1094 + _966 + idx + 326] = 0
                revert with 0, 32, mem[_966 + idx + 294 len ceil32(_1094) + 32]
            mem[224] = 0
            mem[64] = 256
            s = 0
            while s < idx:
                mem[s + 288] = mem[s + 128]
                s = s + 32
                continue 
            mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            if ceil32(idx) <= idx:
                _963 = mem[224]
                s = 0
                while s < mem[224]:
                    mem[s + idx + 290] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(mem[224]) <= mem[224]:
                    _1071 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _963 + idx + 290
                    mem[_963 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_963 + idx + 294] = 32
                    _1087 = mem[_1071]
                    mem[_963 + idx + 326] = mem[_1071]
                    s = 0
                    while s < _1087:
                        mem[s + _963 + idx + 358] = mem[s + _1071 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1087) > _1087:
                        mem[_1087 + _963 + idx + 358] = 0
                    revert with 0, 32, mem[_963 + idx + 326 len ceil32(_1087) + 32]
                mem[mem[224] + idx + 290] = 0
                _1072 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _963 + idx + 290
                mem[_963 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_963 + idx + 294] = 32
                _1088 = mem[_1072]
                mem[_963 + idx + 326] = mem[_1072]
                s = 0
                while s < _1088:
                    mem[s + _963 + idx + 358] = mem[s + _1072 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1088) > _1088:
                    mem[_1088 + _963 + idx + 358] = 0
                revert with 0, 32, mem[_963 + idx + 326 len ceil32(_1088) + 32]
            _964 = mem[224]
            s = 0
            while s < mem[224]:
                mem[s + idx + 290] = mem[s + 256]
                s = s + 32
                continue 
            if ceil32(mem[224]) <= mem[224]:
                _1073 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _964 + idx + 290
                mem[_964 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_964 + idx + 294] = 32
                _1089 = mem[_1073]
                mem[_964 + idx + 326] = mem[_1073]
                s = 0
                while s < _1089:
                    mem[s + _964 + idx + 358] = mem[s + _1073 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1089) > _1089:
                    mem[_1089 + _964 + idx + 358] = 0
                revert with 0, 32, mem[_964 + idx + 326 len ceil32(_1089) + 32]
            mem[mem[224] + idx + 290] = 0
            _1074 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _964 + idx + 290
            mem[_964 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_964 + idx + 294] = 32
            _1090 = mem[_1074]
            mem[_964 + idx + 326] = mem[_1074]
            s = 0
            while s < _1090:
                mem[s + _964 + idx + 358] = mem[s + _1074 + 32]
                s = s + 32
                continue 
            if ceil32(_1090) > _1090:
                mem[_1090 + _964 + idx + 358] = 0
            revert with 0, 32, mem[_964 + idx + 326 len ceil32(_1090) + 32]
        mem[160] = 0
        mem[224] = 0x4e6f742066726f7a656e206f7220666c75696400000000000000000000000000
        mem[192] = 32
        mem[64] = 256
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + 223]):
                idx = idx - 1
                continue 
            mem[192] = idx
            s = 0
            while s < 0:
                mem[s + 288] = mem[s + 192]
                s = s + 32
                continue 
            mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < idx:
                mem[s + 290] = mem[s + 224]
                s = s + 32
                continue 
            mem[256] = idx + 2
            mem[64] = idx + 290
            mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[idx + 294] = 32
            mem[idx + 326] = idx + 2
            s = 0
            while s < idx + 2:
                mem[s + idx + 358] = mem[s + 288]
                s = s + 32
                continue 
            if floor32(idx + 33) > idx + 2:
                mem[(2 * idx) + 360] = 0
            revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
        revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
    if epoch + 240 < epoch:
        revert with 0, 'SafeMath: addition overflow'
    fluidUntil[address(msg.sender)].field_512 = epoch + 240
    if not arg1:
        if not totalBonded:
            revert with 0, 'SafeMath: division by zero', 0
        if not arg1 - (0 / totalBonded):
            if arg1 + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            fluidUntil[address(msg.sender)].field_0 += arg1
            if arg1 + totalStaged < totalStaged:
                revert with 0, 'SafeMath: addition overflow'
            totalStaged += arg1
            if arg1 > totalBonded:
                revert with 0, 32, 34, 0x65426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[354 len 30] >> 16, 0
            totalBonded -= arg1
            if 0 / totalBonded > fluidUntil[address(msg.sender)].field_256:
                revert with 0, 'Bonding: insufficient balance', 0
            fluidUntil[address(msg.sender)].field_256 -= 0 / totalBonded
            if 0 / totalBonded > totalSupply:
                revert with 0, 'Bonding: insufficient balance', 0
            totalSupply -= 0 / totalBonded
            emit Transfer((0 / totalBonded), msg.sender, 0);
            if epoch + 1 < epoch:
                revert with 0, 'SafeMath: addition overflow'
            emit Unbond(epoch + 1, 0 / totalBonded, arg1, msg.sender);
        else:
            if (arg1 * sub_b8d89630) - (0 / totalBonded * sub_b8d89630) / arg1 - (0 / totalBonded) != sub_b8d89630:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (arg1 * sub_b8d89630) - (0 / totalBonded * sub_b8d89630) / 100:
                if arg1 - ((arg1 * sub_b8d89630) - (0 / totalBonded * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                fluidUntil[address(msg.sender)].field_0 = arg1 - ((arg1 * sub_b8d89630) - (0 / totalBonded * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0
                if arg1 - ((arg1 * sub_b8d89630) - (0 / totalBonded * sub_b8d89630) / 100) + totalStaged < totalStaged:
                    revert with 0, 'SafeMath: addition overflow'
                totalStaged = arg1 - ((arg1 * sub_b8d89630) - (0 / totalBonded * sub_b8d89630) / 100) + totalStaged
                if arg1 - ((arg1 * sub_b8d89630) - (0 / totalBonded * sub_b8d89630) / 100) > totalBonded:
                    revert with 0, 32, 34, 0x65426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[354 len 30] >> 16, 0
                totalBonded = totalBonded - arg1 + ((arg1 * sub_b8d89630) - (0 / totalBonded * sub_b8d89630) / 100)
            else:
                if 10 * (arg1 * sub_b8d89630) - (0 / totalBonded * sub_b8d89630) / 100 / (arg1 * sub_b8d89630) - (0 / totalBonded * sub_b8d89630) / 100 != 10:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 10 * (arg1 * sub_b8d89630) - (0 / totalBonded * sub_b8d89630) / 100 / 100:
                    if arg1 - ((arg1 * sub_b8d89630) - (0 / totalBonded * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    fluidUntil[address(msg.sender)].field_0 = arg1 - ((arg1 * sub_b8d89630) - (0 / totalBonded * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0
                    if arg1 - ((arg1 * sub_b8d89630) - (0 / totalBonded * sub_b8d89630) / 100) + totalStaged < totalStaged:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaged = arg1 - ((arg1 * sub_b8d89630) - (0 / totalBonded * sub_b8d89630) / 100) + totalStaged
                    if arg1 - ((arg1 * sub_b8d89630) - (0 / totalBonded * sub_b8d89630) / 100) + (10 * (arg1 * sub_b8d89630) - (0 / totalBonded * sub_b8d89630) / 100 / 100) > totalBonded:
                        revert with 0, 32, 34, 0x65426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[354 len 30] >> 16, 0
                else:
                    mem[324] = 10 * (arg1 * sub_b8d89630) - (0 / totalBonded * sub_b8d89630) / 100 / 100
                    require ext_code.size(dollarAddress)
                    call dollarAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args treasuryAddress, 10 * (arg1 * sub_b8d89630) - (0 / totalBonded * sub_b8d89630) / 100 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if arg1 - ((arg1 * sub_b8d89630) - (0 / totalBonded * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    fluidUntil[address(msg.sender)].field_0 = arg1 - ((arg1 * sub_b8d89630) - (0 / totalBonded * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0
                    if arg1 - ((arg1 * sub_b8d89630) - (0 / totalBonded * sub_b8d89630) / 100) + totalStaged < totalStaged:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaged = arg1 - ((arg1 * sub_b8d89630) - (0 / totalBonded * sub_b8d89630) / 100) + totalStaged
                    if arg1 - ((arg1 * sub_b8d89630) - (0 / totalBonded * sub_b8d89630) / 100) + (10 * (arg1 * sub_b8d89630) - (0 / totalBonded * sub_b8d89630) / 100 / 100) > totalBonded:
                        revert with 0, 
                                    32,
                                    34,
                                    0x65426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[ceil32(return_data.size) + 354 len 30] >> 16,
                                    0
                ('le', ('add', ('param', 'arg1'), ('mul', -1, ('div', ('add', ('mul', ('param', 'arg1'), ('stor', ('name', 'sub_b8d89630', 4))), ('mul', -1, ('div', 0, ('stor', ('name', 'totalBonded', 6))), ('stor', ('name', 'sub_b8d89630', 4)))), 100)), ('div', ('mul', 10, ('div', ('add', ('mul', ('param', 'arg1'), ('stor', ('name', 'sub_b8d89630', 4))), ('mul', -1, ('div', 0, ('stor', ('name', 'totalBonded', 6))), ('stor', ('name', 'sub_b8d89630', 4)))), 100)), 100)), ('stor', ('name', 'totalBonded', 6)))
                totalBonded = totalBonded - arg1 + ((arg1 * sub_b8d89630) - (0 / totalBonded * sub_b8d89630) / 100) - (10 * (arg1 * sub_b8d89630) - (0 / totalBonded * sub_b8d89630) / 100 / 100)
            if 0 / totalBonded > fluidUntil[address(msg.sender)].field_256:
                revert with 0, 'Bonding: insufficient balance', 0
            fluidUntil[address(msg.sender)].field_256 -= 0 / totalBonded
            if 0 / totalBonded > totalSupply:
                revert with 0, 'Bonding: insufficient balance', 0
            totalSupply -= 0 / totalBonded
            emit Transfer((0 / totalBonded), msg.sender, 0);
            if epoch + 1 < epoch:
                revert with 0, 'SafeMath: addition overflow'
            emit Unbond(epoch + 1, 0 / totalBonded, arg1 - ((arg1 * sub_b8d89630) - (0 / totalBonded * sub_b8d89630) / 100), msg.sender);
    else:
        if totalSupply * arg1 / arg1 != totalSupply:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not totalBonded:
            revert with 0, 'SafeMath: division by zero', 0
        if not arg1 - (totalSupply * arg1 / totalBonded):
            if arg1 + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            fluidUntil[address(msg.sender)].field_0 += arg1
            if arg1 + totalStaged < totalStaged:
                revert with 0, 'SafeMath: addition overflow'
            totalStaged += arg1
            if arg1 > totalBonded:
                revert with 0, 32, 34, 0x65426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[354 len 30] >> 16, 0
            totalBonded -= arg1
            if totalSupply * arg1 / totalBonded > fluidUntil[address(msg.sender)].field_256:
                revert with 0, 'Bonding: insufficient balance', 0
            fluidUntil[address(msg.sender)].field_256 -= totalSupply * arg1 / totalBonded
            if totalSupply * arg1 / totalBonded > totalSupply:
                revert with 0, 'Bonding: insufficient balance', 0
            totalSupply -= totalSupply * arg1 / totalBonded
            emit Transfer((totalSupply * arg1 / totalBonded), msg.sender, 0);
            if epoch + 1 < epoch:
                revert with 0, 'SafeMath: addition overflow'
            emit Unbond(epoch + 1, totalSupply * arg1 / totalBonded, arg1, msg.sender);
        else:
            if (arg1 * sub_b8d89630) - (totalSupply * arg1 / totalBonded * sub_b8d89630) / arg1 - (totalSupply * arg1 / totalBonded) != sub_b8d89630:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (arg1 * sub_b8d89630) - (totalSupply * arg1 / totalBonded * sub_b8d89630) / 100:
                if arg1 - ((arg1 * sub_b8d89630) - (totalSupply * arg1 / totalBonded * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                fluidUntil[address(msg.sender)].field_0 = arg1 - ((arg1 * sub_b8d89630) - (totalSupply * arg1 / totalBonded * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0
                if arg1 - ((arg1 * sub_b8d89630) - (totalSupply * arg1 / totalBonded * sub_b8d89630) / 100) + totalStaged < totalStaged:
                    revert with 0, 'SafeMath: addition overflow'
                totalStaged = arg1 - ((arg1 * sub_b8d89630) - (totalSupply * arg1 / totalBonded * sub_b8d89630) / 100) + totalStaged
                if arg1 - ((arg1 * sub_b8d89630) - (totalSupply * arg1 / totalBonded * sub_b8d89630) / 100) > totalBonded:
                    revert with 0, 32, 34, 0x65426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[354 len 30] >> 16, 0
                totalBonded = totalBonded - arg1 + ((arg1 * sub_b8d89630) - (totalSupply * arg1 / totalBonded * sub_b8d89630) / 100)
            else:
                if 10 * (arg1 * sub_b8d89630) - (totalSupply * arg1 / totalBonded * sub_b8d89630) / 100 / (arg1 * sub_b8d89630) - (totalSupply * arg1 / totalBonded * sub_b8d89630) / 100 != 10:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 10 * (arg1 * sub_b8d89630) - (totalSupply * arg1 / totalBonded * sub_b8d89630) / 100 / 100:
                    if arg1 - ((arg1 * sub_b8d89630) - (totalSupply * arg1 / totalBonded * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    fluidUntil[address(msg.sender)].field_0 = arg1 - ((arg1 * sub_b8d89630) - (totalSupply * arg1 / totalBonded * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0
                    if arg1 - ((arg1 * sub_b8d89630) - (totalSupply * arg1 / totalBonded * sub_b8d89630) / 100) + totalStaged < totalStaged:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaged = arg1 - ((arg1 * sub_b8d89630) - (totalSupply * arg1 / totalBonded * sub_b8d89630) / 100) + totalStaged
                    if arg1 - ((arg1 * sub_b8d89630) - (totalSupply * arg1 / totalBonded * sub_b8d89630) / 100) + (10 * (arg1 * sub_b8d89630) - (totalSupply * arg1 / totalBonded * sub_b8d89630) / 100 / 100) > totalBonded:
                        revert with 0, 32, 34, 0x65426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[354 len 30] >> 16, 0
                else:
                    mem[324] = 10 * (arg1 * sub_b8d89630) - (totalSupply * arg1 / totalBonded * sub_b8d89630) / 100 / 100
                    require ext_code.size(dollarAddress)
                    call dollarAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args treasuryAddress, 10 * (arg1 * sub_b8d89630) - (totalSupply * arg1 / totalBonded * sub_b8d89630) / 100 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if arg1 - ((arg1 * sub_b8d89630) - (totalSupply * arg1 / totalBonded * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    fluidUntil[address(msg.sender)].field_0 = arg1 - ((arg1 * sub_b8d89630) - (totalSupply * arg1 / totalBonded * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0
                    if arg1 - ((arg1 * sub_b8d89630) - (totalSupply * arg1 / totalBonded * sub_b8d89630) / 100) + totalStaged < totalStaged:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaged = arg1 - ((arg1 * sub_b8d89630) - (totalSupply * arg1 / totalBonded * sub_b8d89630) / 100) + totalStaged
                    if arg1 - ((arg1 * sub_b8d89630) - (totalSupply * arg1 / totalBonded * sub_b8d89630) / 100) + (10 * (arg1 * sub_b8d89630) - (totalSupply * arg1 / totalBonded * sub_b8d89630) / 100 / 100) > totalBonded:
                        revert with 0, 
                                    32,
                                    34,
                                    0x65426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[ceil32(return_data.size) + 354 len 30] >> 16,
                                    0
                ('le', ('add', ('param', 'arg1'), ('mul', -1, ('div', ('add', ('mul', ('param', 'arg1'), ('stor', ('name', 'sub_b8d89630', 4))), ('mul', -1, ('div', ('mul', ('stor', ('name', 'totalSupply', 5)), ('param', 'arg1')), ('stor', ('name', 'totalBonded', 6))), ('stor', ('name', 'sub_b8d89630', 4)))), 100)), ('div', ('mul', 10, ('div', ('add', ('mul', ('param', 'arg1'), ('stor', ('name', 'sub_b8d89630', 4))), ('mul', -1, ('div', ('mul', ('stor', ('name', 'totalSupply', 5)), ('param', 'arg1')), ('stor', ('name', 'totalBonded', 6))), ('stor', ('name', 'sub_b8d89630', 4)))), 100)), 100)), ('stor', ('name', 'totalBonded', 6)))
                totalBonded = totalBonded - arg1 + ((arg1 * sub_b8d89630) - (totalSupply * arg1 / totalBonded * sub_b8d89630) / 100) - (10 * (arg1 * sub_b8d89630) - (totalSupply * arg1 / totalBonded * sub_b8d89630) / 100 / 100)
            if totalSupply * arg1 / totalBonded > fluidUntil[address(msg.sender)].field_256:
                revert with 0, 'Bonding: insufficient balance', 0
            fluidUntil[address(msg.sender)].field_256 -= totalSupply * arg1 / totalBonded
            if totalSupply * arg1 / totalBonded > totalSupply:
                revert with 0, 'Bonding: insufficient balance', 0
            totalSupply -= totalSupply * arg1 / totalBonded
            emit Transfer((totalSupply * arg1 / totalBonded), msg.sender, 0);
            if epoch + 1 < epoch:
                revert with 0, 'SafeMath: addition overflow'
            emit Unbond(epoch + 1, totalSupply * arg1 / totalBonded, arg1 - ((arg1 * sub_b8d89630) - (totalSupply * arg1 / totalBonded * sub_b8d89630) / 100), msg.sender);
}

function unbond(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = 13
    if fluidUntil[address(msg.sender)].field_768 > epoch:
        mem[128] = 0x5065726d697373696f6e00000000000000000000000000000000000000000000
        mem[96] = 32
        mem[64] = 160
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + 127]):
                idx = idx - 1
                continue 
            mem[96] = idx
            mem[192] = 0x4e6f742066726f7a656e206f7220666c75696400000000000000000000000000
            mem[160] = 32
            mem[64] = 224
            s = 32
            while s:
                require s - 1 < 32
                if not Mask(8, 248, mem[s + 191]):
                    s = s - 1
                    continue 
                mem[160] = s
                s = 0
                while s < idx:
                    mem[s + 256] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                if ceil32(idx) <= idx:
                    _2473 = mem[160]
                    s = 0
                    while s < mem[160]:
                        mem[s + idx + 258] = mem[s + 192]
                        s = s + 32
                        continue 
                    if ceil32(mem[160]) <= mem[160]:
                        _2583 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _2473 + idx + 258
                        mem[_2473 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2473 + idx + 262] = 32
                        _2599 = mem[_2583]
                        mem[_2473 + idx + 294] = mem[_2583]
                        s = 0
                        while s < _2599:
                            mem[s + _2473 + idx + 326] = mem[s + _2583 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2599) > _2599:
                            mem[_2599 + _2473 + idx + 326] = 0
                        revert with 0, 32, mem[_2473 + idx + 294 len ceil32(_2599) + 32]
                    mem[mem[160] + idx + 258] = 0
                    _2584 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _2473 + idx + 258
                    mem[_2473 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2473 + idx + 262] = 32
                    _2600 = mem[_2584]
                    mem[_2473 + idx + 294] = mem[_2584]
                    s = 0
                    while s < _2600:
                        mem[s + _2473 + idx + 326] = mem[s + _2584 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2600) > _2600:
                        mem[_2600 + _2473 + idx + 326] = 0
                    revert with 0, 32, mem[_2473 + idx + 294 len ceil32(_2600) + 32]
                _2474 = mem[160]
                s = 0
                while s < mem[160]:
                    mem[s + idx + 258] = mem[s + 192]
                    s = s + 32
                    continue 
                if ceil32(mem[160]) <= mem[160]:
                    _2585 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _2474 + idx + 258
                    mem[_2474 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2474 + idx + 262] = 32
                    _2601 = mem[_2585]
                    mem[_2474 + idx + 294] = mem[_2585]
                    s = 0
                    while s < _2601:
                        mem[s + _2474 + idx + 326] = mem[s + _2585 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2601) > _2601:
                        mem[_2601 + _2474 + idx + 326] = 0
                    revert with 0, 32, mem[_2474 + idx + 294 len ceil32(_2601) + 32]
                mem[mem[160] + idx + 258] = 0
                _2586 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _2474 + idx + 258
                mem[_2474 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2474 + idx + 262] = 32
                _2602 = mem[_2586]
                mem[_2474 + idx + 294] = mem[_2586]
                s = 0
                while s < _2602:
                    mem[s + _2474 + idx + 326] = mem[s + _2586 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2602) > _2602:
                    mem[_2602 + _2474 + idx + 326] = 0
                revert with 0, 32, mem[_2474 + idx + 294 len ceil32(_2602) + 32]
            mem[224] = 0
            mem[64] = 256
            s = 0
            while s < idx:
                mem[s + 288] = mem[s + 128]
                s = s + 32
                continue 
            mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            if ceil32(idx) <= idx:
                _2471 = mem[224]
                s = 0
                while s < mem[224]:
                    mem[s + idx + 290] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(mem[224]) <= mem[224]:
                    _2579 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _2471 + idx + 290
                    mem[_2471 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2471 + idx + 294] = 32
                    _2595 = mem[_2579]
                    mem[_2471 + idx + 326] = mem[_2579]
                    s = 0
                    while s < _2595:
                        mem[s + _2471 + idx + 358] = mem[s + _2579 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2595) > _2595:
                        mem[_2595 + _2471 + idx + 358] = 0
                    revert with 0, 32, mem[_2471 + idx + 326 len ceil32(_2595) + 32]
                mem[mem[224] + idx + 290] = 0
                _2580 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _2471 + idx + 290
                mem[_2471 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2471 + idx + 294] = 32
                _2596 = mem[_2580]
                mem[_2471 + idx + 326] = mem[_2580]
                s = 0
                while s < _2596:
                    mem[s + _2471 + idx + 358] = mem[s + _2580 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2596) > _2596:
                    mem[_2596 + _2471 + idx + 358] = 0
                revert with 0, 32, mem[_2471 + idx + 326 len ceil32(_2596) + 32]
            _2472 = mem[224]
            s = 0
            while s < mem[224]:
                mem[s + idx + 290] = mem[s + 256]
                s = s + 32
                continue 
            if ceil32(mem[224]) <= mem[224]:
                _2581 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _2472 + idx + 290
                mem[_2472 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2472 + idx + 294] = 32
                _2597 = mem[_2581]
                mem[_2472 + idx + 326] = mem[_2581]
                s = 0
                while s < _2597:
                    mem[s + _2472 + idx + 358] = mem[s + _2581 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2597) > _2597:
                    mem[_2597 + _2472 + idx + 358] = 0
                revert with 0, 32, mem[_2472 + idx + 326 len ceil32(_2597) + 32]
            mem[mem[224] + idx + 290] = 0
            _2582 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _2472 + idx + 290
            mem[_2472 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_2472 + idx + 294] = 32
            _2598 = mem[_2582]
            mem[_2472 + idx + 326] = mem[_2582]
            s = 0
            while s < _2598:
                mem[s + _2472 + idx + 358] = mem[s + _2582 + 32]
                s = s + 32
                continue 
            if ceil32(_2598) > _2598:
                mem[_2598 + _2472 + idx + 358] = 0
            revert with 0, 32, mem[_2472 + idx + 326 len ceil32(_2598) + 32]
        mem[160] = 0
        mem[224] = 0x4e6f742066726f7a656e206f7220666c75696400000000000000000000000000
        mem[192] = 32
        mem[64] = 256
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + 223]):
                idx = idx - 1
                continue 
            mem[192] = idx
            s = 0
            while s < 0:
                mem[s + 288] = mem[s + 192]
                s = s + 32
                continue 
            mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < idx:
                mem[s + 290] = mem[s + 224]
                s = s + 32
                continue 
            mem[256] = idx + 2
            mem[64] = idx + 290
            mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[idx + 294] = 32
            mem[idx + 326] = idx + 2
            s = 0
            while s < idx + 2:
                mem[s + idx + 358] = mem[s + 288]
                s = s + 32
                continue 
            if floor32(idx + 33) > idx + 2:
                mem[(2 * idx) + 360] = 0
            revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
        revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
    if epoch + 240 < epoch:
        revert with 0, 'SafeMath: addition overflow'
    fluidUntil[address(msg.sender)].field_512 = epoch + 240
    if not totalSupply:
        if arg1:
            if 0 / arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not fluidUntil[address(msg.sender)].field_256:
            revert with 0, 'SafeMath: division by zero', 0
        if not (0 / fluidUntil[address(msg.sender)].field_256) - arg1:
            if (0 / fluidUntil[address(msg.sender)].field_256) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            fluidUntil[address(msg.sender)].field_0 += 0 / fluidUntil[address(msg.sender)].field_256
            if (0 / fluidUntil[address(msg.sender)].field_256) + totalStaged < totalStaged:
                revert with 0, 'SafeMath: addition overflow'
            totalStaged += 0 / fluidUntil[address(msg.sender)].field_256
            if 0 / fluidUntil[address(msg.sender)].field_256 > totalBonded:
                revert with 0, 32, 34, 0x65426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[354 len 30] >> 16, 0
            totalBonded -= 0 / fluidUntil[address(msg.sender)].field_256
            if arg1 > fluidUntil[address(msg.sender)].field_256:
                revert with 0, 'Bonding: insufficient balance', 0
            fluidUntil[address(msg.sender)].field_256 -= arg1
            if arg1 > totalSupply:
                revert with 0, 'Bonding: insufficient balance', 0
            totalSupply -= arg1
            emit Transfer(arg1, msg.sender, 0);
            if epoch + 1 < epoch:
                revert with 0, 'SafeMath: addition overflow'
            emit Unbond(epoch + 1, arg1, 0 / fluidUntil[address(msg.sender)].field_256, msg.sender);
        else:
            if (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / (0 / fluidUntil[address(msg.sender)].field_256) - arg1 != sub_b8d89630:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100:
                if (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                fluidUntil[address(msg.sender)].field_0 = (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0
                if (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged < totalStaged:
                    revert with 0, 'SafeMath: addition overflow'
                totalStaged = (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged
                if (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) > totalBonded:
                    revert with 0, 32, 34, 0x65426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[354 len 30] >> 16, 0
                totalBonded = totalBonded - (0 / fluidUntil[address(msg.sender)].field_256) + ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100)
            else:
                if 10 * (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 != 10:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 10 * (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100:
                    if (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    fluidUntil[address(msg.sender)].field_0 = (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0
                    if (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged < totalStaged:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaged = (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged
                    if (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + (10 * (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100) > totalBonded:
                        revert with 0, 32, 34, 0x65426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[354 len 30] >> 16, 0
                else:
                    mem[324] = 10 * (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100
                    require ext_code.size(dollarAddress)
                    call dollarAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args treasuryAddress, 10 * (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    fluidUntil[address(msg.sender)].field_0 = (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0
                    if (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged < totalStaged:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaged = (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged
                    if (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + (10 * (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100) > totalBonded:
                        revert with 0, 
                                    32,
                                    34,
                                    0x65426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[ceil32(return_data.size) + 354 len 30] >> 16,
                                    0
                ('le', ('add', ('div', 0, ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'fluidUntil', 13))))), ('mul', -1, ('div', ('add', ('mul', ('div', 0, ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'fluidUntil', 13))))), ('stor', ('name', 'sub_b8d89630', 4))), ('mul', -1, ('param', 'arg1'), ('stor', ('name', 'sub_b8d89630', 4)))), 100)), ('div', ('mul', 10, ('div', ('add', ('mul', ('div', 0, ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'fluidUntil', 13))))), ('stor', ('name', 'sub_b8d89630', 4))), ('mul', -1, ('param', 'arg1'), ('stor', ('name', 'sub_b8d89630', 4)))), 100)), 100)), ('stor', ('name', 'totalBonded', 6)))
                totalBonded = totalBonded - (0 / fluidUntil[address(msg.sender)].field_256) + ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) - (10 * (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100)
            if arg1 > fluidUntil[address(msg.sender)].field_256:
                revert with 0, 'Bonding: insufficient balance', 0
            fluidUntil[address(msg.sender)].field_256 -= arg1
            if arg1 > totalSupply:
                revert with 0, 'Bonding: insufficient balance', 0
            totalSupply -= arg1
            emit Transfer(arg1, msg.sender, 0);
            if epoch + 1 < epoch:
                revert with 0, 'SafeMath: addition overflow'
            emit Unbond(epoch + 1, arg1, (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100), msg.sender);
    else:
        if not totalBonded:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not fluidUntil[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: division by zero', 0
                if not (0 / fluidUntil[address(msg.sender)].field_256) - arg1:
                    if (0 / fluidUntil[address(msg.sender)].field_256) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    fluidUntil[address(msg.sender)].field_0 += 0 / fluidUntil[address(msg.sender)].field_256
                    if (0 / fluidUntil[address(msg.sender)].field_256) + totalStaged < totalStaged:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaged += 0 / fluidUntil[address(msg.sender)].field_256
                    if 0 / fluidUntil[address(msg.sender)].field_256 > totalBonded:
                        revert with 0, 32, 34, 0x65426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[418 len 30] >> 16, 0
                    totalBonded -= 0 / fluidUntil[address(msg.sender)].field_256
                    if arg1 > fluidUntil[address(msg.sender)].field_256:
                        revert with 0, 'Bonding: insufficient balance', 0
                    fluidUntil[address(msg.sender)].field_256 -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'Bonding: insufficient balance', 0
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    if epoch + 1 < epoch:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Unbond(epoch + 1, arg1, 0 / fluidUntil[address(msg.sender)].field_256, msg.sender);
                else:
                    if (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / (0 / fluidUntil[address(msg.sender)].field_256) - arg1 != sub_b8d89630:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100:
                        if (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        fluidUntil[address(msg.sender)].field_0 = (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0
                        if (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged < totalStaged:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaged = (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged
                        if (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) > totalBonded:
                            revert with 0, 32, 34, 0x65426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[418 len 30] >> 16, 0
                        totalBonded = totalBonded - (0 / fluidUntil[address(msg.sender)].field_256) + ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100)
                    else:
                        if 10 * (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 != 10:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 10 * (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100:
                            if (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            fluidUntil[address(msg.sender)].field_0 = (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0
                            if (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged < totalStaged:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaged = (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged
                            if (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + (10 * (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100) > totalBonded:
                                revert with 0, 32, 34, 0x65426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[418 len 30] >> 16, 0
                        else:
                            mem[388] = 10 * (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100
                            require ext_code.size(dollarAddress)
                            call dollarAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args treasuryAddress, 10 * (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            fluidUntil[address(msg.sender)].field_0 = (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0
                            if (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged < totalStaged:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaged = (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged
                            if (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + (10 * (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100) > totalBonded:
                                revert with 0, 
                                            32,
                                            34,
                                            0x65426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[ceil32(return_data.size) + 418 len 30] >> 16,
                                            0
                        ('le', ('add', ('div', 0, ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'fluidUntil', 13))))), ('mul', -1, ('div', ('add', ('mul', ('div', 0, ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'fluidUntil', 13))))), ('stor', ('name', 'sub_b8d89630', 4))), ('mul', -1, ('param', 'arg1'), ('stor', ('name', 'sub_b8d89630', 4)))), 100)), ('div', ('mul', 10, ('div', ('add', ('mul', ('div', 0, ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'fluidUntil', 13))))), ('stor', ('name', 'sub_b8d89630', 4))), ('mul', -1, ('param', 'arg1'), ('stor', ('name', 'sub_b8d89630', 4)))), 100)), 100)), ('stor', ('name', 'totalBonded', 6)))
                        totalBonded = totalBonded - (0 / fluidUntil[address(msg.sender)].field_256) + ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) - (10 * (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100)
                    if arg1 > fluidUntil[address(msg.sender)].field_256:
                        revert with 0, 'Bonding: insufficient balance', 0
                    fluidUntil[address(msg.sender)].field_256 -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'Bonding: insufficient balance', 0
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    if epoch + 1 < epoch:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Unbond(epoch + 1, arg1, (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100), msg.sender);
            else:
                if 0 / totalSupply * arg1 / arg1 != 0 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not fluidUntil[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: division by zero', 0
                if not (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - arg1:
                    if (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    fluidUntil[address(msg.sender)].field_0 += 0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256
                    if (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) + totalStaged < totalStaged:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaged += 0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256
                    if 0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 > totalBonded:
                        revert with 0, 32, 34, 0x65426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[418 len 30] >> 16, 0
                    totalBonded -= 0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256
                    if arg1 > fluidUntil[address(msg.sender)].field_256:
                        revert with 0, 'Bonding: insufficient balance', 0
                    fluidUntil[address(msg.sender)].field_256 -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'Bonding: insufficient balance', 0
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    if epoch + 1 < epoch:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Unbond(epoch + 1, arg1, 0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256, msg.sender);
                else:
                    if (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - arg1 != sub_b8d89630:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100:
                        if (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        fluidUntil[address(msg.sender)].field_0 = (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0
                        if (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged < totalStaged:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaged = (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged
                        if (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) > totalBonded:
                            revert with 0, 32, 34, 0x65426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[418 len 30] >> 16, 0
                        totalBonded = totalBonded - (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) + ((0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100)
                    else:
                        if 10 * (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 != 10:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 10 * (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100:
                            if (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            fluidUntil[address(msg.sender)].field_0 = (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0
                            if (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged < totalStaged:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaged = (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged
                            if (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + (10 * (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100) > totalBonded:
                                revert with 0, 32, 34, 0x65426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[418 len 30] >> 16, 0
                        else:
                            mem[388] = 10 * (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100
                            require ext_code.size(dollarAddress)
                            call dollarAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args treasuryAddress, 10 * (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            fluidUntil[address(msg.sender)].field_0 = (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0
                            if (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged < totalStaged:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaged = (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged
                            if (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + (10 * (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100) > totalBonded:
                                revert with 0, 
                                            32,
                                            34,
                                            0x65426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[ceil32(return_data.size) + 418 len 30] >> 16,
                                            0
                        ('le', ('add', ('div', ('mul', ('div', 0, ('stor', ('name', 'totalSupply', 5))), ('param', 'arg1')), ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'fluidUntil', 13))))), ('mul', -1, ('div', ('add', ('mul', ('div', ('mul', ('div', 0, ('stor', ('name', 'totalSupply', 5))), ('param', 'arg1')), ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'fluidUntil', 13))))), ('stor', ('name', 'sub_b8d89630', 4))), ('mul', -1, ('param', 'arg1'), ('stor', ('name', 'sub_b8d89630', 4)))), 100)), ('div', ('mul', 10, ('div', ('add', ('mul', ('div', ('mul', ('div', 0, ('stor', ('name', 'totalSupply', 5))), ('param', 'arg1')), ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'fluidUntil', 13))))), ('stor', ('name', 'sub_b8d89630', 4))), ('mul', -1, ('param', 'arg1'), ('stor', ('name', 'sub_b8d89630', 4)))), 100)), 100)), ('stor', ('name', 'totalBonded', 6)))
                        totalBonded = totalBonded - (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) + ((0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) - (10 * (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100)
                    if arg1 > fluidUntil[address(msg.sender)].field_256:
                        revert with 0, 'Bonding: insufficient balance', 0
                    fluidUntil[address(msg.sender)].field_256 -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'Bonding: insufficient balance', 0
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    if epoch + 1 < epoch:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Unbond(epoch + 1, arg1, (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100), msg.sender);
        else:
            if fluidUntil[address(msg.sender)].field_256 * totalBonded / totalBonded != fluidUntil[address(msg.sender)].field_256:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not fluidUntil[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: division by zero', 0
                if not (0 / fluidUntil[address(msg.sender)].field_256) - arg1:
                    if (0 / fluidUntil[address(msg.sender)].field_256) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    fluidUntil[address(msg.sender)].field_0 += 0 / fluidUntil[address(msg.sender)].field_256
                    if (0 / fluidUntil[address(msg.sender)].field_256) + totalStaged < totalStaged:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaged += 0 / fluidUntil[address(msg.sender)].field_256
                    if 0 / fluidUntil[address(msg.sender)].field_256 > totalBonded:
                        revert with 0, 32, 34, 0x65426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[418 len 30] >> 16, 0
                    totalBonded -= 0 / fluidUntil[address(msg.sender)].field_256
                    if arg1 > fluidUntil[address(msg.sender)].field_256:
                        revert with 0, 'Bonding: insufficient balance', 0
                    fluidUntil[address(msg.sender)].field_256 -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'Bonding: insufficient balance', 0
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    if epoch + 1 < epoch:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Unbond(epoch + 1, arg1, 0 / fluidUntil[address(msg.sender)].field_256, msg.sender);
                else:
                    if (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / (0 / fluidUntil[address(msg.sender)].field_256) - arg1 != sub_b8d89630:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100:
                        if (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        fluidUntil[address(msg.sender)].field_0 = (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0
                        if (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged < totalStaged:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaged = (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged
                        if (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) > totalBonded:
                            revert with 0, 32, 34, 0x65426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[418 len 30] >> 16, 0
                        totalBonded = totalBonded - (0 / fluidUntil[address(msg.sender)].field_256) + ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100)
                    else:
                        if 10 * (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 != 10:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 10 * (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100:
                            if (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            fluidUntil[address(msg.sender)].field_0 = (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0
                            if (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged < totalStaged:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaged = (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged
                            if (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + (10 * (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100) > totalBonded:
                                revert with 0, 32, 34, 0x65426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[418 len 30] >> 16, 0
                        else:
                            mem[388] = 10 * (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100
                            require ext_code.size(dollarAddress)
                            call dollarAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args treasuryAddress, 10 * (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            fluidUntil[address(msg.sender)].field_0 = (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0
                            if (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged < totalStaged:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaged = (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged
                            if (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + (10 * (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100) > totalBonded:
                                revert with 0, 
                                            32,
                                            34,
                                            0x65426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[ceil32(return_data.size) + 418 len 30] >> 16,
                                            0
                        ('le', ('add', ('div', 0, ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'fluidUntil', 13))))), ('mul', -1, ('div', ('add', ('mul', ('div', 0, ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'fluidUntil', 13))))), ('stor', ('name', 'sub_b8d89630', 4))), ('mul', -1, ('param', 'arg1'), ('stor', ('name', 'sub_b8d89630', 4)))), 100)), ('div', ('mul', 10, ('div', ('add', ('mul', ('div', 0, ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'fluidUntil', 13))))), ('stor', ('name', 'sub_b8d89630', 4))), ('mul', -1, ('param', 'arg1'), ('stor', ('name', 'sub_b8d89630', 4)))), 100)), 100)), ('stor', ('name', 'totalBonded', 6)))
                        totalBonded = totalBonded - (0 / fluidUntil[address(msg.sender)].field_256) + ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) - (10 * (0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100)
                    if arg1 > fluidUntil[address(msg.sender)].field_256:
                        revert with 0, 'Bonding: insufficient balance', 0
                    fluidUntil[address(msg.sender)].field_256 -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'Bonding: insufficient balance', 0
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    if epoch + 1 < epoch:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Unbond(epoch + 1, arg1, (0 / fluidUntil[address(msg.sender)].field_256) - ((0 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100), msg.sender);
            else:
                if fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / arg1 != fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not fluidUntil[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: division by zero', 0
                if not (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - arg1:
                    if (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    fluidUntil[address(msg.sender)].field_0 += fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256
                    if (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) + totalStaged < totalStaged:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaged += fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256
                    if fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 > totalBonded:
                        revert with 0, 32, 34, 0x65426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[418 len 30] >> 16, 0
                    totalBonded -= fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256
                    if arg1 > fluidUntil[address(msg.sender)].field_256:
                        revert with 0, 'Bonding: insufficient balance', 0
                    fluidUntil[address(msg.sender)].field_256 -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'Bonding: insufficient balance', 0
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    if epoch + 1 < epoch:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Unbond(epoch + 1, arg1, fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256, msg.sender);
                else:
                    if (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - arg1 != sub_b8d89630:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100:
                        if (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        fluidUntil[address(msg.sender)].field_0 = (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0
                        if (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged < totalStaged:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaged = (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged
                        if (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) > totalBonded:
                            revert with 0, 32, 34, 0x65426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[418 len 30] >> 16, 0
                        totalBonded = totalBonded - (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) + ((fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100)
                    else:
                        if 10 * (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 != 10:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 10 * (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100:
                            if (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            fluidUntil[address(msg.sender)].field_0 = (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0
                            if (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged < totalStaged:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaged = (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged
                            if (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + (10 * (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100) > totalBonded:
                                revert with 0, 32, 34, 0x65426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[418 len 30] >> 16, 0
                        else:
                            mem[388] = 10 * (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100
                            require ext_code.size(dollarAddress)
                            call dollarAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args treasuryAddress, 10 * (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            fluidUntil[address(msg.sender)].field_0 = (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + fluidUntil[address(msg.sender)].field_0
                            if (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged < totalStaged:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaged = (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + totalStaged
                            if (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) + (10 * (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100) > totalBonded:
                                revert with 0, 
                                            32,
                                            34,
                                            0x65426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[ceil32(return_data.size) + 418 len 30] >> 16,
                                            0
                        ('le', ('add', ('div', ('mul', ('div', ('mul', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'fluidUntil', 13)))), ('stor', ('name', 'totalBonded', 6))), ('stor', ('name', 'totalSupply', 5))), ('param', 'arg1')), ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'fluidUntil', 13))))), ('mul', -1, ('div', ('add', ('mul', ('div', ('mul', ('div', ('mul', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'fluidUntil', 13)))), ('stor', ('name', 'totalBonded', 6))), ('stor', ('name', 'totalSupply', 5))), ('param', 'arg1')), ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'fluidUntil', 13))))), ('stor', ('name', 'sub_b8d89630', 4))), ('mul', -1, ('param', 'arg1'), ('stor', ('name', 'sub_b8d89630', 4)))), 100)), ('div', ('mul', 10, ('div', ('add', ('mul', ('div', ('mul', ('div', ('mul', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'fluidUntil', 13)))), ('stor', ('name', 'totalBonded', 6))), ('stor', ('name', 'totalSupply', 5))), ('param', 'arg1')), ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'fluidUntil', 13))))), ('stor', ('name', 'sub_b8d89630', 4))), ('mul', -1, ('param', 'arg1'), ('stor', ('name', 'sub_b8d89630', 4)))), 100)), 100)), ('stor', ('name', 'totalBonded', 6)))
                        totalBonded = totalBonded - (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) + ((fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100) - (10 * (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100 / 100)
                    if arg1 > fluidUntil[address(msg.sender)].field_256:
                        revert with 0, 'Bonding: insufficient balance', 0
                    fluidUntil[address(msg.sender)].field_256 -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'Bonding: insufficient balance', 0
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    if epoch + 1 < epoch:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Unbond(epoch + 1, arg1, (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) - ((fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 * sub_b8d89630) - (arg1 * sub_b8d89630) / 100), msg.sender);
}

function emergencyCommit(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 15
    if not periodFor[address(arg1)].field_0:
        mem[128] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
        mem[96] = 32
        mem[64] = 160
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + 127]):
                idx = idx - 1
                continue 
            mem[96] = idx
            mem[192] = 0x4e6f74206e6f6d696e6174656400000000000000000000000000000000000000
            mem[160] = 32
            mem[64] = 224
            s = 32
            while s:
                require s - 1 < 32
                if not Mask(8, 248, mem[s + 191]):
                    s = s - 1
                    continue 
                mem[160] = s
                s = 0
                while s < idx:
                    mem[s + 256] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                if ceil32(idx) <= idx:
                    _2041 = mem[160]
                    s = 0
                    while s < mem[160]:
                        mem[s + idx + 258] = mem[s + 192]
                        s = s + 32
                        continue 
                    if ceil32(mem[160]) <= mem[160]:
                        _2935 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _2041 + idx + 258
                        mem[_2041 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2041 + idx + 262] = 32
                        _3063 = mem[_2935]
                        mem[_2041 + idx + 294] = mem[_2935]
                        s = 0
                        while s < _3063:
                            mem[s + _2041 + idx + 326] = mem[s + _2935 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3063) > _3063:
                            mem[_3063 + _2041 + idx + 326] = 0
                        revert with 0, 32, mem[_2041 + idx + 294 len ceil32(_3063) + 32]
                    mem[mem[160] + idx + 258] = 0
                    _2936 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _2041 + idx + 258
                    mem[_2041 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2041 + idx + 262] = 32
                    _3064 = mem[_2936]
                    mem[_2041 + idx + 294] = mem[_2936]
                    s = 0
                    while s < _3064:
                        mem[s + _2041 + idx + 326] = mem[s + _2936 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3064) > _3064:
                        mem[_3064 + _2041 + idx + 326] = 0
                    revert with 0, 32, mem[_2041 + idx + 294 len ceil32(_3064) + 32]
                _2042 = mem[160]
                s = 0
                while s < mem[160]:
                    mem[s + idx + 258] = mem[s + 192]
                    s = s + 32
                    continue 
                if ceil32(mem[160]) <= mem[160]:
                    _2937 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _2042 + idx + 258
                    mem[_2042 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2042 + idx + 262] = 32
                    _3065 = mem[_2937]
                    mem[_2042 + idx + 294] = mem[_2937]
                    s = 0
                    while s < _3065:
                        mem[s + _2042 + idx + 326] = mem[s + _2937 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3065) > _3065:
                        mem[_3065 + _2042 + idx + 326] = 0
                    revert with 0, 32, mem[_2042 + idx + 294 len ceil32(_3065) + 32]
                mem[mem[160] + idx + 258] = 0
                _2938 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _2042 + idx + 258
                mem[_2042 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2042 + idx + 262] = 32
                _3066 = mem[_2938]
                mem[_2042 + idx + 294] = mem[_2938]
                s = 0
                while s < _3066:
                    mem[s + _2042 + idx + 326] = mem[s + _2938 + 32]
                    s = s + 32
                    continue 
                if ceil32(_3066) > _3066:
                    mem[_3066 + _2042 + idx + 326] = 0
                revert with 0, 32, mem[_2042 + idx + 294 len ceil32(_3066) + 32]
            mem[224] = 0
            mem[64] = 256
            s = 0
            while s < idx:
                mem[s + 288] = mem[s + 128]
                s = s + 32
                continue 
            mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            if ceil32(idx) <= idx:
                _2039 = mem[224]
                s = 0
                while s < mem[224]:
                    mem[s + idx + 290] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(mem[224]) <= mem[224]:
                    _2931 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _2039 + idx + 290
                    mem[_2039 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2039 + idx + 294] = 32
                    _3059 = mem[_2931]
                    mem[_2039 + idx + 326] = mem[_2931]
                    s = 0
                    while s < _3059:
                        mem[s + _2039 + idx + 358] = mem[s + _2931 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3059) > _3059:
                        mem[_3059 + _2039 + idx + 358] = 0
                    revert with 0, 32, mem[_2039 + idx + 326 len ceil32(_3059) + 32]
                mem[mem[224] + idx + 290] = 0
                _2932 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _2039 + idx + 290
                mem[_2039 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2039 + idx + 294] = 32
                _3060 = mem[_2932]
                mem[_2039 + idx + 326] = mem[_2932]
                s = 0
                while s < _3060:
                    mem[s + _2039 + idx + 358] = mem[s + _2932 + 32]
                    s = s + 32
                    continue 
                if ceil32(_3060) > _3060:
                    mem[_3060 + _2039 + idx + 358] = 0
                revert with 0, 32, mem[_2039 + idx + 326 len ceil32(_3060) + 32]
            _2040 = mem[224]
            s = 0
            while s < mem[224]:
                mem[s + idx + 290] = mem[s + 256]
                s = s + 32
                continue 
            if ceil32(mem[224]) <= mem[224]:
                _2933 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _2040 + idx + 290
                mem[_2040 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2040 + idx + 294] = 32
                _3061 = mem[_2933]
                mem[_2040 + idx + 326] = mem[_2933]
                s = 0
                while s < _3061:
                    mem[s + _2040 + idx + 358] = mem[s + _2933 + 32]
                    s = s + 32
                    continue 
                if ceil32(_3061) > _3061:
                    mem[_3061 + _2040 + idx + 358] = 0
                revert with 0, 32, mem[_2040 + idx + 326 len ceil32(_3061) + 32]
            mem[mem[224] + idx + 290] = 0
            _2934 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _2040 + idx + 290
            mem[_2040 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_2040 + idx + 294] = 32
            _3062 = mem[_2934]
            mem[_2040 + idx + 326] = mem[_2934]
            s = 0
            while s < _3062:
                mem[s + _2040 + idx + 358] = mem[s + _2934 + 32]
                s = s + 32
                continue 
            if ceil32(_3062) > _3062:
                mem[_3062 + _2040 + idx + 358] = 0
            revert with 0, 32, mem[_2040 + idx + 326 len ceil32(_3062) + 32]
        mem[160] = 0
        mem[224] = 0x4e6f74206e6f6d696e6174656400000000000000000000000000000000000000
        mem[192] = 32
        mem[64] = 256
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + 223]):
                idx = idx - 1
                continue 
            mem[192] = idx
            s = 0
            while s < 0:
                mem[s + 288] = mem[s + 192]
                s = s + 32
                continue 
            mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < idx:
                mem[s + 290] = mem[s + 224]
                s = s + 32
                continue 
            mem[256] = idx + 2
            mem[64] = idx + 290
            mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[idx + 294] = 32
            mem[idx + 326] = idx + 2
            s = 0
            while s < idx + 2:
                mem[s + idx + 358] = mem[s + 288]
                s = s + 32
                continue 
            if floor32(idx + 33) > idx + 2:
                mem[(2 * idx) + 360] = 0
            revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
    else:
        if epoch + 96 < epoch:
            revert with 0, 'SafeMath: addition overflow'
        mem[96] = 0
        mem[128] = 0
        mem[160] = 0
        mem[192] = 0
        mem[224] = 0
        mem[256] = 0
        mem[288] = 0
        mem[320] = 455595 * 3600
        mem[352] = 60
        mem[384] = 30
        mem[416] = 'SafeMath: subtraction overflow'
        if 455595 * 3600 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[448] = 26
        mem[480] = 'SafeMath: division by zero'
        if block.timestamp - (455595 * 3600) / 60 < block.timestamp - (455595 * 3600) / 60:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp - (455595 * 3600) / 60 <= epoch + 96:
            mem[544] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
            mem[512] = 32
            mem[64] = 576
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 543]):
                    idx = idx - 1
                    continue 
                mem[512] = idx
                mem[608] = 0x45706f63682073796e6365640000000000000000000000000000000000000000
                mem[576] = 32
                mem[64] = 640
                s = 32
                while s:
                    require s - 1 < 32
                    if not Mask(8, 248, mem[s + 607]):
                        s = s - 1
                        continue 
                    mem[576] = s
                    s = 0
                    while s < idx:
                        mem[s + 672] = mem[s + 544]
                        s = s + 32
                        continue 
                    mem[idx + 672] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    if ceil32(idx) <= idx:
                        _2033 = mem[576]
                        s = 0
                        while s < mem[576]:
                            mem[s + idx + 674] = mem[s + 608]
                            s = s + 32
                            continue 
                        if ceil32(mem[576]) <= mem[576]:
                            _2919 = mem[64]
                            mem[mem[64]] = mem[576] + idx + -mem[64] + 642
                            mem[64] = _2033 + idx + 674
                            mem[_2033 + idx + 674] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2033 + idx + 678] = 32
                            _3047 = mem[_2919]
                            mem[_2033 + idx + 710] = mem[_2919]
                            s = 0
                            while s < _3047:
                                mem[s + _2033 + idx + 742] = mem[s + _2919 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3047) > _3047:
                                mem[_3047 + _2033 + idx + 742] = 0
                            revert with 0, 32, mem[_2033 + idx + 710 len ceil32(_3047) + 32]
                        mem[mem[576] + idx + 674] = 0
                        _2920 = mem[64]
                        mem[mem[64]] = mem[576] + idx + -mem[64] + 642
                        mem[64] = _2033 + idx + 674
                        mem[_2033 + idx + 674] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2033 + idx + 678] = 32
                        _3048 = mem[_2920]
                        mem[_2033 + idx + 710] = mem[_2920]
                        s = 0
                        while s < _3048:
                            mem[s + _2033 + idx + 742] = mem[s + _2920 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3048) > _3048:
                            mem[_3048 + _2033 + idx + 742] = 0
                        revert with 0, 32, mem[_2033 + idx + 710 len ceil32(_3048) + 32]
                    _2034 = mem[576]
                    s = 0
                    while s < mem[576]:
                        mem[s + idx + 674] = mem[s + 608]
                        s = s + 32
                        continue 
                    if ceil32(mem[576]) <= mem[576]:
                        _2921 = mem[64]
                        mem[mem[64]] = mem[576] + idx + -mem[64] + 642
                        mem[64] = _2034 + idx + 674
                        mem[_2034 + idx + 674] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2034 + idx + 678] = 32
                        _3049 = mem[_2921]
                        mem[_2034 + idx + 710] = mem[_2921]
                        s = 0
                        while s < _3049:
                            mem[s + _2034 + idx + 742] = mem[s + _2921 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3049) > _3049:
                            mem[_3049 + _2034 + idx + 742] = 0
                        revert with 0, 32, mem[_2034 + idx + 710 len ceil32(_3049) + 32]
                    mem[mem[576] + idx + 674] = 0
                    _2922 = mem[64]
                    mem[mem[64]] = mem[576] + idx + -mem[64] + 642
                    mem[64] = _2034 + idx + 674
                    mem[_2034 + idx + 674] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2034 + idx + 678] = 32
                    _3050 = mem[_2922]
                    mem[_2034 + idx + 710] = mem[_2922]
                    s = 0
                    while s < _3050:
                        mem[s + _2034 + idx + 742] = mem[s + _2922 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3050) > _3050:
                        mem[_3050 + _2034 + idx + 742] = 0
                    revert with 0, 32, mem[_2034 + idx + 710 len ceil32(_3050) + 32]
                mem[640] = 0
                mem[64] = 672
                s = 0
                while s < idx:
                    mem[s + 704] = mem[s + 544]
                    s = s + 32
                    continue 
                mem[idx + 704] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                if ceil32(idx) <= idx:
                    _2031 = mem[640]
                    s = 0
                    while s < mem[640]:
                        mem[s + idx + 706] = mem[s + 672]
                        s = s + 32
                        continue 
                    if ceil32(mem[640]) <= mem[640]:
                        _2915 = mem[64]
                        mem[mem[64]] = mem[640] + idx + -mem[64] + 674
                        mem[64] = _2031 + idx + 706
                        mem[_2031 + idx + 706] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2031 + idx + 710] = 32
                        _3043 = mem[_2915]
                        mem[_2031 + idx + 742] = mem[_2915]
                        s = 0
                        while s < _3043:
                            mem[s + _2031 + idx + 774] = mem[s + _2915 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3043) > _3043:
                            mem[_3043 + _2031 + idx + 774] = 0
                        revert with 0, 32, mem[_2031 + idx + 742 len ceil32(_3043) + 32]
                    mem[mem[640] + idx + 706] = 0
                    _2916 = mem[64]
                    mem[mem[64]] = mem[640] + idx + -mem[64] + 674
                    mem[64] = _2031 + idx + 706
                    mem[_2031 + idx + 706] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2031 + idx + 710] = 32
                    _3044 = mem[_2916]
                    mem[_2031 + idx + 742] = mem[_2916]
                    s = 0
                    while s < _3044:
                        mem[s + _2031 + idx + 774] = mem[s + _2916 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3044) > _3044:
                        mem[_3044 + _2031 + idx + 774] = 0
                    revert with 0, 32, mem[_2031 + idx + 742 len ceil32(_3044) + 32]
                _2032 = mem[640]
                s = 0
                while s < mem[640]:
                    mem[s + idx + 706] = mem[s + 672]
                    s = s + 32
                    continue 
                if ceil32(mem[640]) <= mem[640]:
                    _2917 = mem[64]
                    mem[mem[64]] = mem[640] + idx + -mem[64] + 674
                    mem[64] = _2032 + idx + 706
                    mem[_2032 + idx + 706] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2032 + idx + 710] = 32
                    _3045 = mem[_2917]
                    mem[_2032 + idx + 742] = mem[_2917]
                    s = 0
                    while s < _3045:
                        mem[s + _2032 + idx + 774] = mem[s + _2917 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3045) > _3045:
                        mem[_3045 + _2032 + idx + 774] = 0
                    revert with 0, 32, mem[_2032 + idx + 742 len ceil32(_3045) + 32]
                mem[mem[640] + idx + 706] = 0
                _2918 = mem[64]
                mem[mem[64]] = mem[640] + idx + -mem[64] + 674
                mem[64] = _2032 + idx + 706
                mem[_2032 + idx + 706] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2032 + idx + 710] = 32
                _3046 = mem[_2918]
                mem[_2032 + idx + 742] = mem[_2918]
                s = 0
                while s < _3046:
                    mem[s + _2032 + idx + 774] = mem[s + _2918 + 32]
                    s = s + 32
                    continue 
                if ceil32(_3046) > _3046:
                    mem[_3046 + _2032 + idx + 774] = 0
                revert with 0, 32, mem[_2032 + idx + 742 len ceil32(_3046) + 32]
            mem[576] = 0
            mem[640] = 0x45706f63682073796e6365640000000000000000000000000000000000000000
            mem[608] = 32
            mem[64] = 672
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 639]):
                    idx = idx - 1
                    continue 
                mem[608] = idx
                s = 0
                while s < 0:
                    mem[s + 704] = mem[s + 608]
                    s = s + 32
                    continue 
                mem[704] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                s = 0
                while s < idx:
                    mem[s + 706] = mem[s + 640]
                    s = s + 32
                    continue 
                mem[672] = idx + 2
                mem[64] = idx + 706
                mem[idx + 706] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[idx + 710] = 32
                mem[idx + 742] = idx + 2
                s = 0
                while s < idx + 2:
                    mem[s + idx + 774] = mem[s + 704]
                    s = s + 32
                    continue 
                if floor32(idx + 33) > idx + 2:
                    mem[(2 * idx) + 776] = 0
                revert with 0, 32, idx + 2, mem[idx + 774 len floor32(idx + 33)]
        else:
            mem[512] = 0
            mem[544] = 66 * 10^16
            mem[0] = arg1
            mem[32] = 15
            mem[576] = 0
            if not periodFor[address(arg1)].field_512:
                mem[640] = 26
                mem[672] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[608] = 0 / totalSupply
                if 66 * 10^16 == 0 / totalSupply:
                    mem[736] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[704] = 32
                    mem[64] = 768
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 735]):
                            idx = idx - 1
                            continue 
                        mem[704] = idx
                        mem[800] = 'Must have super majority'
                        mem[768] = 32
                        mem[64] = 832
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 799]):
                                s = s - 1
                                continue 
                            mem[768] = s
                            s = 0
                            while s < idx:
                                mem[s + 864] = mem[s + 736]
                                s = s + 32
                                continue 
                            mem[idx + 864] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _2025 = mem[768]
                                s = 0
                                while s < mem[768]:
                                    mem[s + idx + 866] = mem[s + 800]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[768]) <= mem[768]:
                                    _2903 = mem[64]
                                    mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                    mem[64] = _2025 + idx + 866
                                    mem[_2025 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2025 + idx + 870] = 32
                                    _3031 = mem[_2903]
                                    mem[_2025 + idx + 902] = mem[_2903]
                                    s = 0
                                    while s < _3031:
                                        mem[s + _2025 + idx + 934] = mem[s + _2903 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_3031) > _3031:
                                        mem[_3031 + _2025 + idx + 934] = 0
                                    revert with 0, 32, mem[_2025 + idx + 902 len ceil32(_3031) + 32]
                                mem[mem[768] + idx + 866] = 0
                                _2904 = mem[64]
                                mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                mem[64] = _2025 + idx + 866
                                mem[_2025 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2025 + idx + 870] = 32
                                _3032 = mem[_2904]
                                mem[_2025 + idx + 902] = mem[_2904]
                                s = 0
                                while s < _3032:
                                    mem[s + _2025 + idx + 934] = mem[s + _2904 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3032) > _3032:
                                    mem[_3032 + _2025 + idx + 934] = 0
                                revert with 0, 32, mem[_2025 + idx + 902 len ceil32(_3032) + 32]
                            _2026 = mem[768]
                            s = 0
                            while s < mem[768]:
                                mem[s + idx + 866] = mem[s + 800]
                                s = s + 32
                                continue 
                            if ceil32(mem[768]) <= mem[768]:
                                _2905 = mem[64]
                                mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                mem[64] = _2026 + idx + 866
                                mem[_2026 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2026 + idx + 870] = 32
                                _3033 = mem[_2905]
                                mem[_2026 + idx + 902] = mem[_2905]
                                s = 0
                                while s < _3033:
                                    mem[s + _2026 + idx + 934] = mem[s + _2905 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3033) > _3033:
                                    mem[_3033 + _2026 + idx + 934] = 0
                                revert with 0, 32, mem[_2026 + idx + 902 len ceil32(_3033) + 32]
                            mem[mem[768] + idx + 866] = 0
                            _2906 = mem[64]
                            mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                            mem[64] = _2026 + idx + 866
                            mem[_2026 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2026 + idx + 870] = 32
                            _3034 = mem[_2906]
                            mem[_2026 + idx + 902] = mem[_2906]
                            s = 0
                            while s < _3034:
                                mem[s + _2026 + idx + 934] = mem[s + _2906 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3034) > _3034:
                                mem[_3034 + _2026 + idx + 934] = 0
                            revert with 0, 32, mem[_2026 + idx + 902 len ceil32(_3034) + 32]
                        mem[832] = 0
                        mem[64] = 864
                        s = 0
                        while s < idx:
                            mem[s + 896] = mem[s + 736]
                            s = s + 32
                            continue 
                        mem[idx + 896] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _2023 = mem[832]
                            s = 0
                            while s < mem[832]:
                                mem[s + idx + 898] = mem[s + 864]
                                s = s + 32
                                continue 
                            if ceil32(mem[832]) <= mem[832]:
                                _2899 = mem[64]
                                mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                                mem[64] = _2023 + idx + 898
                                mem[_2023 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2023 + idx + 902] = 32
                                _3027 = mem[_2899]
                                mem[_2023 + idx + 934] = mem[_2899]
                                s = 0
                                while s < _3027:
                                    mem[s + _2023 + idx + 966] = mem[s + _2899 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3027) > _3027:
                                    mem[_3027 + _2023 + idx + 966] = 0
                                revert with 0, 32, mem[_2023 + idx + 934 len ceil32(_3027) + 32]
                            mem[mem[832] + idx + 898] = 0
                            _2900 = mem[64]
                            mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                            mem[64] = _2023 + idx + 898
                            mem[_2023 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2023 + idx + 902] = 32
                            _3028 = mem[_2900]
                            mem[_2023 + idx + 934] = mem[_2900]
                            s = 0
                            while s < _3028:
                                mem[s + _2023 + idx + 966] = mem[s + _2900 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3028) > _3028:
                                mem[_3028 + _2023 + idx + 966] = 0
                            revert with 0, 32, mem[_2023 + idx + 934 len ceil32(_3028) + 32]
                        _2024 = mem[832]
                        s = 0
                        while s < mem[832]:
                            mem[s + idx + 898] = mem[s + 864]
                            s = s + 32
                            continue 
                        if ceil32(mem[832]) <= mem[832]:
                            _2901 = mem[64]
                            mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                            mem[64] = _2024 + idx + 898
                            mem[_2024 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2024 + idx + 902] = 32
                            _3029 = mem[_2901]
                            mem[_2024 + idx + 934] = mem[_2901]
                            s = 0
                            while s < _3029:
                                mem[s + _2024 + idx + 966] = mem[s + _2901 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3029) > _3029:
                                mem[_3029 + _2024 + idx + 966] = 0
                            revert with 0, 32, mem[_2024 + idx + 934 len ceil32(_3029) + 32]
                        mem[mem[832] + idx + 898] = 0
                        _2902 = mem[64]
                        mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                        mem[64] = _2024 + idx + 898
                        mem[_2024 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2024 + idx + 902] = 32
                        _3030 = mem[_2902]
                        mem[_2024 + idx + 934] = mem[_2902]
                        s = 0
                        while s < _3030:
                            mem[s + _2024 + idx + 966] = mem[s + _2902 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3030) > _3030:
                            mem[_3030 + _2024 + idx + 966] = 0
                        revert with 0, 32, mem[_2024 + idx + 934 len ceil32(_3030) + 32]
                    mem[768] = 0
                    mem[832] = 'Must have super majority'
                    mem[800] = 32
                    mem[64] = 864
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 831]):
                            idx = idx - 1
                            continue 
                        mem[800] = idx
                        s = 0
                        while s < 0:
                            mem[s + 896] = mem[s + 800]
                            s = s + 32
                            continue 
                        mem[896] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 898] = mem[s + 832]
                            s = s + 32
                            continue 
                        mem[864] = idx + 2
                        mem[64] = idx + 898
                        mem[idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 902] = 32
                        mem[idx + 934] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 966] = mem[s + 896]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 968] = 0
                        revert with 0, 32, idx + 2, mem[idx + 966 len floor32(idx + 33)]
                else:
                    if 0 / totalSupply <= 66 * 10^16:
                        mem[736] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                        mem[704] = 32
                        mem[64] = 768
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 735]):
                                idx = idx - 1
                                continue 
                            mem[704] = idx
                            mem[800] = 'Must have super majority'
                            mem[768] = 32
                            mem[64] = 832
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + 799]):
                                    s = s - 1
                                    continue 
                                mem[768] = s
                                s = 0
                                while s < idx:
                                    mem[s + 864] = mem[s + 736]
                                    s = s + 32
                                    continue 
                                mem[idx + 864] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                if ceil32(idx) <= idx:
                                    _2017 = mem[768]
                                    s = 0
                                    while s < mem[768]:
                                        mem[s + idx + 866] = mem[s + 800]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[768]) <= mem[768]:
                                        _2887 = mem[64]
                                        mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                        mem[64] = _2017 + idx + 866
                                        mem[_2017 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2017 + idx + 870] = 32
                                        _3015 = mem[_2887]
                                        mem[_2017 + idx + 902] = mem[_2887]
                                        s = 0
                                        while s < _3015:
                                            mem[s + _2017 + idx + 934] = mem[s + _2887 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_3015) > _3015:
                                            mem[_3015 + _2017 + idx + 934] = 0
                                        revert with 0, 32, mem[_2017 + idx + 902 len ceil32(_3015) + 32]
                                    mem[mem[768] + idx + 866] = 0
                                    _2888 = mem[64]
                                    mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                    mem[64] = _2017 + idx + 866
                                    mem[_2017 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2017 + idx + 870] = 32
                                    _3016 = mem[_2888]
                                    mem[_2017 + idx + 902] = mem[_2888]
                                    s = 0
                                    while s < _3016:
                                        mem[s + _2017 + idx + 934] = mem[s + _2888 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_3016) > _3016:
                                        mem[_3016 + _2017 + idx + 934] = 0
                                    revert with 0, 32, mem[_2017 + idx + 902 len ceil32(_3016) + 32]
                                _2018 = mem[768]
                                s = 0
                                while s < mem[768]:
                                    mem[s + idx + 866] = mem[s + 800]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[768]) <= mem[768]:
                                    _2889 = mem[64]
                                    mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                    mem[64] = _2018 + idx + 866
                                    mem[_2018 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2018 + idx + 870] = 32
                                    _3017 = mem[_2889]
                                    mem[_2018 + idx + 902] = mem[_2889]
                                    s = 0
                                    while s < _3017:
                                        mem[s + _2018 + idx + 934] = mem[s + _2889 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_3017) > _3017:
                                        mem[_3017 + _2018 + idx + 934] = 0
                                    revert with 0, 32, mem[_2018 + idx + 902 len ceil32(_3017) + 32]
                                mem[mem[768] + idx + 866] = 0
                                _2890 = mem[64]
                                mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                mem[64] = _2018 + idx + 866
                                mem[_2018 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2018 + idx + 870] = 32
                                _3018 = mem[_2890]
                                mem[_2018 + idx + 902] = mem[_2890]
                                s = 0
                                while s < _3018:
                                    mem[s + _2018 + idx + 934] = mem[s + _2890 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3018) > _3018:
                                    mem[_3018 + _2018 + idx + 934] = 0
                                revert with 0, 32, mem[_2018 + idx + 902 len ceil32(_3018) + 32]
                            mem[832] = 0
                            mem[64] = 864
                            s = 0
                            while s < idx:
                                mem[s + 896] = mem[s + 736]
                                s = s + 32
                                continue 
                            mem[idx + 896] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _2015 = mem[832]
                                s = 0
                                while s < mem[832]:
                                    mem[s + idx + 898] = mem[s + 864]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[832]) <= mem[832]:
                                    _2883 = mem[64]
                                    mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                                    mem[64] = _2015 + idx + 898
                                    mem[_2015 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2015 + idx + 902] = 32
                                    _3011 = mem[_2883]
                                    mem[_2015 + idx + 934] = mem[_2883]
                                    s = 0
                                    while s < _3011:
                                        mem[s + _2015 + idx + 966] = mem[s + _2883 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_3011) > _3011:
                                        mem[_3011 + _2015 + idx + 966] = 0
                                    revert with 0, 32, mem[_2015 + idx + 934 len ceil32(_3011) + 32]
                                mem[mem[832] + idx + 898] = 0
                                _2884 = mem[64]
                                mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                                mem[64] = _2015 + idx + 898
                                mem[_2015 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2015 + idx + 902] = 32
                                _3012 = mem[_2884]
                                mem[_2015 + idx + 934] = mem[_2884]
                                s = 0
                                while s < _3012:
                                    mem[s + _2015 + idx + 966] = mem[s + _2884 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3012) > _3012:
                                    mem[_3012 + _2015 + idx + 966] = 0
                                revert with 0, 32, mem[_2015 + idx + 934 len ceil32(_3012) + 32]
                            _2016 = mem[832]
                            s = 0
                            while s < mem[832]:
                                mem[s + idx + 898] = mem[s + 864]
                                s = s + 32
                                continue 
                            if ceil32(mem[832]) <= mem[832]:
                                _2885 = mem[64]
                                mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                                mem[64] = _2016 + idx + 898
                                mem[_2016 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2016 + idx + 902] = 32
                                _3013 = mem[_2885]
                                mem[_2016 + idx + 934] = mem[_2885]
                                s = 0
                                while s < _3013:
                                    mem[s + _2016 + idx + 966] = mem[s + _2885 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3013) > _3013:
                                    mem[_3013 + _2016 + idx + 966] = 0
                                revert with 0, 32, mem[_2016 + idx + 934 len ceil32(_3013) + 32]
                            mem[mem[832] + idx + 898] = 0
                            _2886 = mem[64]
                            mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                            mem[64] = _2016 + idx + 898
                            mem[_2016 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2016 + idx + 902] = 32
                            _3014 = mem[_2886]
                            mem[_2016 + idx + 934] = mem[_2886]
                            s = 0
                            while s < _3014:
                                mem[s + _2016 + idx + 966] = mem[s + _2886 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3014) > _3014:
                                mem[_3014 + _2016 + idx + 966] = 0
                            revert with 0, 32, mem[_2016 + idx + 934 len ceil32(_3014) + 32]
                        mem[768] = 0
                        mem[832] = 'Must have super majority'
                        mem[800] = 32
                        mem[64] = 864
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 831]):
                                idx = idx - 1
                                continue 
                            mem[800] = idx
                            s = 0
                            while s < 0:
                                mem[s + 896] = mem[s + 800]
                                s = s + 32
                                continue 
                            mem[896] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + 898] = mem[s + 832]
                                s = s + 32
                                continue 
                            mem[864] = idx + 2
                            mem[64] = idx + 898
                            mem[idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + 902] = 32
                            mem[idx + 934] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + 966] = mem[s + 896]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + 968] = 0
                            revert with 0, 32, idx + 2, mem[idx + 966 len floor32(idx + 33)]
                    else:
                        mem[0] = arg1
                        mem[32] = 15
                        if periodFor[address(arg1)].field_512 > periodFor[address(arg1)].field_768:
                            if not ext_code.size(arg1):
                                revert with 0, 'Cannot set a proxy implementation to a non-contract address'
                            uint256(stor3608) = arg1
                            mem[740] = 0, mem[740 len 28]
                            delegate arg1.mem[740 len 4] with:
                                 gas gas_remaining wei
                                args 
                            if not return_data.size:
                                if not delegate.return_code:
                                    revert with 0, ''
                            else:
                                if not delegate.return_code:
                                    revert with 0, 
                                                32,
                                                return_data.size,
                                                ext_call.return_data[0 len return_data.size],
                                                Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256
                            emit Upgraded(arg1);
                            emit Commit(msg.sender, arg1);
                        mem[736] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                        mem[704] = 32
                        mem[64] = 768
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 735]):
                                idx = idx - 1
                                continue 
                            mem[704] = idx
                            mem[800] = 0x4e6f7420617070726f7665640000000000000000000000000000000000000000
                            mem[768] = 32
                            mem[64] = 832
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + 799]):
                                    s = s - 1
                                    continue 
                                mem[768] = s
                                s = 0
                                while s < idx:
                                    mem[s + 864] = mem[s + 736]
                                    s = s + 32
                                    continue 
                                mem[idx + 864] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                if ceil32(idx) <= idx:
                                    _2009 = mem[768]
                                    s = 0
                                    while s < mem[768]:
                                        mem[s + idx + 866] = mem[s + 800]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[768]) <= mem[768]:
                                        _2871 = mem[64]
                                        mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                        mem[64] = _2009 + idx + 866
                                        mem[_2009 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2009 + idx + 870] = 32
                                        _2999 = mem[_2871]
                                        mem[_2009 + idx + 902] = mem[_2871]
                                        s = 0
                                        while s < _2999:
                                            mem[s + _2009 + idx + 934] = mem[s + _2871 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2999) > _2999:
                                            mem[_2999 + _2009 + idx + 934] = 0
                                        revert with 0, 32, mem[_2009 + idx + 902 len ceil32(_2999) + 32]
                                    mem[mem[768] + idx + 866] = 0
                                    _2872 = mem[64]
                                    mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                    mem[64] = _2009 + idx + 866
                                    mem[_2009 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2009 + idx + 870] = 32
                                    _3000 = mem[_2872]
                                    mem[_2009 + idx + 902] = mem[_2872]
                                    s = 0
                                    while s < _3000:
                                        mem[s + _2009 + idx + 934] = mem[s + _2872 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_3000) > _3000:
                                        mem[_3000 + _2009 + idx + 934] = 0
                                    revert with 0, 32, mem[_2009 + idx + 902 len ceil32(_3000) + 32]
                                _2010 = mem[768]
                                s = 0
                                while s < mem[768]:
                                    mem[s + idx + 866] = mem[s + 800]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[768]) <= mem[768]:
                                    _2873 = mem[64]
                                    mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                    mem[64] = _2010 + idx + 866
                                    mem[_2010 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2010 + idx + 870] = 32
                                    _3001 = mem[_2873]
                                    mem[_2010 + idx + 902] = mem[_2873]
                                    s = 0
                                    while s < _3001:
                                        mem[s + _2010 + idx + 934] = mem[s + _2873 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_3001) > _3001:
                                        mem[_3001 + _2010 + idx + 934] = 0
                                    revert with 0, 32, mem[_2010 + idx + 902 len ceil32(_3001) + 32]
                                mem[mem[768] + idx + 866] = 0
                                _2874 = mem[64]
                                mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                mem[64] = _2010 + idx + 866
                                mem[_2010 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2010 + idx + 870] = 32
                                _3002 = mem[_2874]
                                mem[_2010 + idx + 902] = mem[_2874]
                                s = 0
                                while s < _3002:
                                    mem[s + _2010 + idx + 934] = mem[s + _2874 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3002) > _3002:
                                    mem[_3002 + _2010 + idx + 934] = 0
                                revert with 0, 32, mem[_2010 + idx + 902 len ceil32(_3002) + 32]
                            mem[832] = 0
                            mem[64] = 864
                            s = 0
                            while s < idx:
                                mem[s + 896] = mem[s + 736]
                                s = s + 32
                                continue 
                            mem[idx + 896] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _2007 = mem[832]
                                s = 0
                                while s < mem[832]:
                                    mem[s + idx + 898] = mem[s + 864]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[832]) <= mem[832]:
                                    _2867 = mem[64]
                                    mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                                    mem[64] = _2007 + idx + 898
                                    mem[_2007 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2007 + idx + 902] = 32
                                    _2995 = mem[_2867]
                                    mem[_2007 + idx + 934] = mem[_2867]
                                    s = 0
                                    while s < _2995:
                                        mem[s + _2007 + idx + 966] = mem[s + _2867 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2995) > _2995:
                                        mem[_2995 + _2007 + idx + 966] = 0
                                    revert with 0, 32, mem[_2007 + idx + 934 len ceil32(_2995) + 32]
                                mem[mem[832] + idx + 898] = 0
                                _2868 = mem[64]
                                mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                                mem[64] = _2007 + idx + 898
                                mem[_2007 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2007 + idx + 902] = 32
                                _2996 = mem[_2868]
                                mem[_2007 + idx + 934] = mem[_2868]
                                s = 0
                                while s < _2996:
                                    mem[s + _2007 + idx + 966] = mem[s + _2868 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2996) > _2996:
                                    mem[_2996 + _2007 + idx + 966] = 0
                                revert with 0, 32, mem[_2007 + idx + 934 len ceil32(_2996) + 32]
                            _2008 = mem[832]
                            s = 0
                            while s < mem[832]:
                                mem[s + idx + 898] = mem[s + 864]
                                s = s + 32
                                continue 
                            if ceil32(mem[832]) <= mem[832]:
                                _2869 = mem[64]
                                mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                                mem[64] = _2008 + idx + 898
                                mem[_2008 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2008 + idx + 902] = 32
                                _2997 = mem[_2869]
                                mem[_2008 + idx + 934] = mem[_2869]
                                s = 0
                                while s < _2997:
                                    mem[s + _2008 + idx + 966] = mem[s + _2869 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2997) > _2997:
                                    mem[_2997 + _2008 + idx + 966] = 0
                                revert with 0, 32, mem[_2008 + idx + 934 len ceil32(_2997) + 32]
                            mem[mem[832] + idx + 898] = 0
                            _2870 = mem[64]
                            mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                            mem[64] = _2008 + idx + 898
                            mem[_2008 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2008 + idx + 902] = 32
                            _2998 = mem[_2870]
                            mem[_2008 + idx + 934] = mem[_2870]
                            s = 0
                            while s < _2998:
                                mem[s + _2008 + idx + 966] = mem[s + _2870 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2998) > _2998:
                                mem[_2998 + _2008 + idx + 966] = 0
                            revert with 0, 32, mem[_2008 + idx + 934 len ceil32(_2998) + 32]
                        mem[768] = 0
                        mem[832] = 0x4e6f7420617070726f7665640000000000000000000000000000000000000000
                        mem[800] = 32
                        mem[64] = 864
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 831]):
                                idx = idx - 1
                                continue 
                            mem[800] = idx
                            s = 0
                            while s < 0:
                                mem[s + 896] = mem[s + 800]
                                s = s + 32
                                continue 
                            mem[896] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + 898] = mem[s + 832]
                                s = s + 32
                                continue 
                            mem[864] = idx + 2
                            mem[64] = idx + 898
                            mem[idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + 902] = 32
                            mem[idx + 934] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + 966] = mem[s + 896]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + 968] = 0
                            revert with 0, 32, idx + 2, mem[idx + 966 len floor32(idx + 33)]
            else:
                if 10^18 * periodFor[address(arg1)].field_512 / periodFor[address(arg1)].field_512 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[640] = 26
                mem[672] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[608] = 10^18 * periodFor[address(arg1)].field_512 / totalSupply
                if 66 * 10^16 == 10^18 * periodFor[address(arg1)].field_512 / totalSupply:
                    mem[736] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[704] = 32
                    mem[64] = 768
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 735]):
                            idx = idx - 1
                            continue 
                        mem[704] = idx
                        mem[800] = 'Must have super majority'
                        mem[768] = 32
                        mem[64] = 832
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 799]):
                                s = s - 1
                                continue 
                            mem[768] = s
                            s = 0
                            while s < idx:
                                mem[s + 864] = mem[s + 736]
                                s = s + 32
                                continue 
                            mem[idx + 864] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _2001 = mem[768]
                                s = 0
                                while s < mem[768]:
                                    mem[s + idx + 866] = mem[s + 800]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[768]) <= mem[768]:
                                    _2855 = mem[64]
                                    mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                    mem[64] = _2001 + idx + 866
                                    mem[_2001 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2001 + idx + 870] = 32
                                    _2983 = mem[_2855]
                                    mem[_2001 + idx + 902] = mem[_2855]
                                    s = 0
                                    while s < _2983:
                                        mem[s + _2001 + idx + 934] = mem[s + _2855 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2983) > _2983:
                                        mem[_2983 + _2001 + idx + 934] = 0
                                    revert with 0, 32, mem[_2001 + idx + 902 len ceil32(_2983) + 32]
                                mem[mem[768] + idx + 866] = 0
                                _2856 = mem[64]
                                mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                mem[64] = _2001 + idx + 866
                                mem[_2001 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2001 + idx + 870] = 32
                                _2984 = mem[_2856]
                                mem[_2001 + idx + 902] = mem[_2856]
                                s = 0
                                while s < _2984:
                                    mem[s + _2001 + idx + 934] = mem[s + _2856 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2984) > _2984:
                                    mem[_2984 + _2001 + idx + 934] = 0
                                revert with 0, 32, mem[_2001 + idx + 902 len ceil32(_2984) + 32]
                            _2002 = mem[768]
                            s = 0
                            while s < mem[768]:
                                mem[s + idx + 866] = mem[s + 800]
                                s = s + 32
                                continue 
                            if ceil32(mem[768]) <= mem[768]:
                                _2857 = mem[64]
                                mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                mem[64] = _2002 + idx + 866
                                mem[_2002 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2002 + idx + 870] = 32
                                _2985 = mem[_2857]
                                mem[_2002 + idx + 902] = mem[_2857]
                                s = 0
                                while s < _2985:
                                    mem[s + _2002 + idx + 934] = mem[s + _2857 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2985) > _2985:
                                    mem[_2985 + _2002 + idx + 934] = 0
                                revert with 0, 32, mem[_2002 + idx + 902 len ceil32(_2985) + 32]
                            mem[mem[768] + idx + 866] = 0
                            _2858 = mem[64]
                            mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                            mem[64] = _2002 + idx + 866
                            mem[_2002 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2002 + idx + 870] = 32
                            _2986 = mem[_2858]
                            mem[_2002 + idx + 902] = mem[_2858]
                            s = 0
                            while s < _2986:
                                mem[s + _2002 + idx + 934] = mem[s + _2858 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2986) > _2986:
                                mem[_2986 + _2002 + idx + 934] = 0
                            revert with 0, 32, mem[_2002 + idx + 902 len ceil32(_2986) + 32]
                        mem[832] = 0
                        mem[64] = 864
                        s = 0
                        while s < idx:
                            mem[s + 896] = mem[s + 736]
                            s = s + 32
                            continue 
                        mem[idx + 896] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _1999 = mem[832]
                            s = 0
                            while s < mem[832]:
                                mem[s + idx + 898] = mem[s + 864]
                                s = s + 32
                                continue 
                            if ceil32(mem[832]) <= mem[832]:
                                _2851 = mem[64]
                                mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                                mem[64] = _1999 + idx + 898
                                mem[_1999 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1999 + idx + 902] = 32
                                _2979 = mem[_2851]
                                mem[_1999 + idx + 934] = mem[_2851]
                                s = 0
                                while s < _2979:
                                    mem[s + _1999 + idx + 966] = mem[s + _2851 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2979) > _2979:
                                    mem[_2979 + _1999 + idx + 966] = 0
                                revert with 0, 32, mem[_1999 + idx + 934 len ceil32(_2979) + 32]
                            mem[mem[832] + idx + 898] = 0
                            _2852 = mem[64]
                            mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                            mem[64] = _1999 + idx + 898
                            mem[_1999 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1999 + idx + 902] = 32
                            _2980 = mem[_2852]
                            mem[_1999 + idx + 934] = mem[_2852]
                            s = 0
                            while s < _2980:
                                mem[s + _1999 + idx + 966] = mem[s + _2852 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2980) > _2980:
                                mem[_2980 + _1999 + idx + 966] = 0
                            revert with 0, 32, mem[_1999 + idx + 934 len ceil32(_2980) + 32]
                        _2000 = mem[832]
                        s = 0
                        while s < mem[832]:
                            mem[s + idx + 898] = mem[s + 864]
                            s = s + 32
                            continue 
                        if ceil32(mem[832]) <= mem[832]:
                            _2853 = mem[64]
                            mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                            mem[64] = _2000 + idx + 898
                            mem[_2000 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2000 + idx + 902] = 32
                            _2981 = mem[_2853]
                            mem[_2000 + idx + 934] = mem[_2853]
                            s = 0
                            while s < _2981:
                                mem[s + _2000 + idx + 966] = mem[s + _2853 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2981) > _2981:
                                mem[_2981 + _2000 + idx + 966] = 0
                            revert with 0, 32, mem[_2000 + idx + 934 len ceil32(_2981) + 32]
                        mem[mem[832] + idx + 898] = 0
                        _2854 = mem[64]
                        mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                        mem[64] = _2000 + idx + 898
                        mem[_2000 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2000 + idx + 902] = 32
                        _2982 = mem[_2854]
                        mem[_2000 + idx + 934] = mem[_2854]
                        s = 0
                        while s < _2982:
                            mem[s + _2000 + idx + 966] = mem[s + _2854 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2982) > _2982:
                            mem[_2982 + _2000 + idx + 966] = 0
                        revert with 0, 32, mem[_2000 + idx + 934 len ceil32(_2982) + 32]
                    mem[768] = 0
                    mem[832] = 'Must have super majority'
                    mem[800] = 32
                    mem[64] = 864
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 831]):
                            idx = idx - 1
                            continue 
                        mem[800] = idx
                        s = 0
                        while s < 0:
                            mem[s + 896] = mem[s + 800]
                            s = s + 32
                            continue 
                        mem[896] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 898] = mem[s + 832]
                            s = s + 32
                            continue 
                        mem[864] = idx + 2
                        mem[64] = idx + 898
                        mem[idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 902] = 32
                        mem[idx + 934] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 966] = mem[s + 896]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 968] = 0
                        revert with 0, 32, idx + 2, mem[idx + 966 len floor32(idx + 33)]
                else:
                    if 10^18 * periodFor[address(arg1)].field_512 / totalSupply <= 66 * 10^16:
                        mem[736] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                        mem[704] = 32
                        mem[64] = 768
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 735]):
                                idx = idx - 1
                                continue 
                            mem[704] = idx
                            mem[800] = 'Must have super majority'
                            mem[768] = 32
                            mem[64] = 832
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + 799]):
                                    s = s - 1
                                    continue 
                                mem[768] = s
                                s = 0
                                while s < idx:
                                    mem[s + 864] = mem[s + 736]
                                    s = s + 32
                                    continue 
                                mem[idx + 864] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                if ceil32(idx) <= idx:
                                    _1993 = mem[768]
                                    s = 0
                                    while s < mem[768]:
                                        mem[s + idx + 866] = mem[s + 800]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[768]) <= mem[768]:
                                        _2839 = mem[64]
                                        mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                        mem[64] = _1993 + idx + 866
                                        mem[_1993 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1993 + idx + 870] = 32
                                        _2967 = mem[_2839]
                                        mem[_1993 + idx + 902] = mem[_2839]
                                        s = 0
                                        while s < _2967:
                                            mem[s + _1993 + idx + 934] = mem[s + _2839 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2967) > _2967:
                                            mem[_2967 + _1993 + idx + 934] = 0
                                        revert with 0, 32, mem[_1993 + idx + 902 len ceil32(_2967) + 32]
                                    mem[mem[768] + idx + 866] = 0
                                    _2840 = mem[64]
                                    mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                    mem[64] = _1993 + idx + 866
                                    mem[_1993 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1993 + idx + 870] = 32
                                    _2968 = mem[_2840]
                                    mem[_1993 + idx + 902] = mem[_2840]
                                    s = 0
                                    while s < _2968:
                                        mem[s + _1993 + idx + 934] = mem[s + _2840 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2968) > _2968:
                                        mem[_2968 + _1993 + idx + 934] = 0
                                    revert with 0, 32, mem[_1993 + idx + 902 len ceil32(_2968) + 32]
                                _1994 = mem[768]
                                s = 0
                                while s < mem[768]:
                                    mem[s + idx + 866] = mem[s + 800]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[768]) <= mem[768]:
                                    _2841 = mem[64]
                                    mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                    mem[64] = _1994 + idx + 866
                                    mem[_1994 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1994 + idx + 870] = 32
                                    _2969 = mem[_2841]
                                    mem[_1994 + idx + 902] = mem[_2841]
                                    s = 0
                                    while s < _2969:
                                        mem[s + _1994 + idx + 934] = mem[s + _2841 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2969) > _2969:
                                        mem[_2969 + _1994 + idx + 934] = 0
                                    revert with 0, 32, mem[_1994 + idx + 902 len ceil32(_2969) + 32]
                                mem[mem[768] + idx + 866] = 0
                                _2842 = mem[64]
                                mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                mem[64] = _1994 + idx + 866
                                mem[_1994 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1994 + idx + 870] = 32
                                _2970 = mem[_2842]
                                mem[_1994 + idx + 902] = mem[_2842]
                                s = 0
                                while s < _2970:
                                    mem[s + _1994 + idx + 934] = mem[s + _2842 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2970) > _2970:
                                    mem[_2970 + _1994 + idx + 934] = 0
                                revert with 0, 32, mem[_1994 + idx + 902 len ceil32(_2970) + 32]
                            mem[832] = 0
                            mem[64] = 864
                            s = 0
                            while s < idx:
                                mem[s + 896] = mem[s + 736]
                                s = s + 32
                                continue 
                            mem[idx + 896] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _1991 = mem[832]
                                s = 0
                                while s < mem[832]:
                                    mem[s + idx + 898] = mem[s + 864]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[832]) <= mem[832]:
                                    _2835 = mem[64]
                                    mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                                    mem[64] = _1991 + idx + 898
                                    mem[_1991 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1991 + idx + 902] = 32
                                    _2963 = mem[_2835]
                                    mem[_1991 + idx + 934] = mem[_2835]
                                    s = 0
                                    while s < _2963:
                                        mem[s + _1991 + idx + 966] = mem[s + _2835 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2963) > _2963:
                                        mem[_2963 + _1991 + idx + 966] = 0
                                    revert with 0, 32, mem[_1991 + idx + 934 len ceil32(_2963) + 32]
                                mem[mem[832] + idx + 898] = 0
                                _2836 = mem[64]
                                mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                                mem[64] = _1991 + idx + 898
                                mem[_1991 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1991 + idx + 902] = 32
                                _2964 = mem[_2836]
                                mem[_1991 + idx + 934] = mem[_2836]
                                s = 0
                                while s < _2964:
                                    mem[s + _1991 + idx + 966] = mem[s + _2836 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2964) > _2964:
                                    mem[_2964 + _1991 + idx + 966] = 0
                                revert with 0, 32, mem[_1991 + idx + 934 len ceil32(_2964) + 32]
                            _1992 = mem[832]
                            s = 0
                            while s < mem[832]:
                                mem[s + idx + 898] = mem[s + 864]
                                s = s + 32
                                continue 
                            if ceil32(mem[832]) <= mem[832]:
                                _2837 = mem[64]
                                mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                                mem[64] = _1992 + idx + 898
                                mem[_1992 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1992 + idx + 902] = 32
                                _2965 = mem[_2837]
                                mem[_1992 + idx + 934] = mem[_2837]
                                s = 0
                                while s < _2965:
                                    mem[s + _1992 + idx + 966] = mem[s + _2837 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2965) > _2965:
                                    mem[_2965 + _1992 + idx + 966] = 0
                                revert with 0, 32, mem[_1992 + idx + 934 len ceil32(_2965) + 32]
                            mem[mem[832] + idx + 898] = 0
                            _2838 = mem[64]
                            mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                            mem[64] = _1992 + idx + 898
                            mem[_1992 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1992 + idx + 902] = 32
                            _2966 = mem[_2838]
                            mem[_1992 + idx + 934] = mem[_2838]
                            s = 0
                            while s < _2966:
                                mem[s + _1992 + idx + 966] = mem[s + _2838 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2966) > _2966:
                                mem[_2966 + _1992 + idx + 966] = 0
                            revert with 0, 32, mem[_1992 + idx + 934 len ceil32(_2966) + 32]
                        mem[768] = 0
                        mem[832] = 'Must have super majority'
                        mem[800] = 32
                        mem[64] = 864
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 831]):
                                idx = idx - 1
                                continue 
                            mem[800] = idx
                            s = 0
                            while s < 0:
                                mem[s + 896] = mem[s + 800]
                                s = s + 32
                                continue 
                            mem[896] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + 898] = mem[s + 832]
                                s = s + 32
                                continue 
                            mem[864] = idx + 2
                            mem[64] = idx + 898
                            mem[idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + 902] = 32
                            mem[idx + 934] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + 966] = mem[s + 896]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + 968] = 0
                            revert with 0, 32, idx + 2, mem[idx + 966 len floor32(idx + 33)]
                    else:
                        mem[0] = arg1
                        mem[32] = 15
                        if periodFor[address(arg1)].field_512 > periodFor[address(arg1)].field_768:
                            if not ext_code.size(arg1):
                                revert with 0, 'Cannot set a proxy implementation to a non-contract address'
                            uint256(stor3608) = arg1
                            mem[740] = 0, mem[740 len 28]
                            delegate arg1.mem[740 len 4] with:
                                 gas gas_remaining wei
                                args 
                            if not return_data.size:
                                if not delegate.return_code:
                                    revert with 0, ''
                            else:
                                if not delegate.return_code:
                                    revert with 0, 
                                                32,
                                                return_data.size,
                                                ext_call.return_data[0 len return_data.size],
                                                Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256
                            emit Upgraded(arg1);
                            emit Commit(msg.sender, arg1);
                        mem[736] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                        mem[704] = 32
                        mem[64] = 768
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 735]):
                                idx = idx - 1
                                continue 
                            mem[704] = idx
                            mem[800] = 0x4e6f7420617070726f7665640000000000000000000000000000000000000000
                            mem[768] = 32
                            mem[64] = 832
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + 799]):
                                    s = s - 1
                                    continue 
                                mem[768] = s
                                s = 0
                                while s < idx:
                                    mem[s + 864] = mem[s + 736]
                                    s = s + 32
                                    continue 
                                mem[idx + 864] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                if ceil32(idx) <= idx:
                                    _1985 = mem[768]
                                    s = 0
                                    while s < mem[768]:
                                        mem[s + idx + 866] = mem[s + 800]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[768]) <= mem[768]:
                                        _2823 = mem[64]
                                        mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                        mem[64] = _1985 + idx + 866
                                        mem[_1985 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1985 + idx + 870] = 32
                                        _2951 = mem[_2823]
                                        mem[_1985 + idx + 902] = mem[_2823]
                                        s = 0
                                        while s < _2951:
                                            mem[s + _1985 + idx + 934] = mem[s + _2823 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2951) > _2951:
                                            mem[_2951 + _1985 + idx + 934] = 0
                                        revert with 0, 32, mem[_1985 + idx + 902 len ceil32(_2951) + 32]
                                    mem[mem[768] + idx + 866] = 0
                                    _2824 = mem[64]
                                    mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                    mem[64] = _1985 + idx + 866
                                    mem[_1985 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1985 + idx + 870] = 32
                                    _2952 = mem[_2824]
                                    mem[_1985 + idx + 902] = mem[_2824]
                                    s = 0
                                    while s < _2952:
                                        mem[s + _1985 + idx + 934] = mem[s + _2824 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2952) > _2952:
                                        mem[_2952 + _1985 + idx + 934] = 0
                                    revert with 0, 32, mem[_1985 + idx + 902 len ceil32(_2952) + 32]
                                _1986 = mem[768]
                                s = 0
                                while s < mem[768]:
                                    mem[s + idx + 866] = mem[s + 800]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[768]) <= mem[768]:
                                    _2825 = mem[64]
                                    mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                    mem[64] = _1986 + idx + 866
                                    mem[_1986 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1986 + idx + 870] = 32
                                    _2953 = mem[_2825]
                                    mem[_1986 + idx + 902] = mem[_2825]
                                    s = 0
                                    while s < _2953:
                                        mem[s + _1986 + idx + 934] = mem[s + _2825 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2953) > _2953:
                                        mem[_2953 + _1986 + idx + 934] = 0
                                    revert with 0, 32, mem[_1986 + idx + 902 len ceil32(_2953) + 32]
                                mem[mem[768] + idx + 866] = 0
                                _2826 = mem[64]
                                mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                mem[64] = _1986 + idx + 866
                                mem[_1986 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1986 + idx + 870] = 32
                                _2954 = mem[_2826]
                                mem[_1986 + idx + 902] = mem[_2826]
                                s = 0
                                while s < _2954:
                                    mem[s + _1986 + idx + 934] = mem[s + _2826 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2954) > _2954:
                                    mem[_2954 + _1986 + idx + 934] = 0
                                revert with 0, 32, mem[_1986 + idx + 902 len ceil32(_2954) + 32]
                            mem[832] = 0
                            mem[64] = 864
                            s = 0
                            while s < idx:
                                mem[s + 896] = mem[s + 736]
                                s = s + 32
                                continue 
                            mem[idx + 896] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _1983 = mem[832]
                                s = 0
                                while s < mem[832]:
                                    mem[s + idx + 898] = mem[s + 864]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[832]) <= mem[832]:
                                    _2819 = mem[64]
                                    mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                                    mem[64] = _1983 + idx + 898
                                    mem[_1983 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1983 + idx + 902] = 32
                                    _2947 = mem[_2819]
                                    mem[_1983 + idx + 934] = mem[_2819]
                                    s = 0
                                    while s < _2947:
                                        mem[s + _1983 + idx + 966] = mem[s + _2819 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2947) > _2947:
                                        mem[_2947 + _1983 + idx + 966] = 0
                                    revert with 0, 32, mem[_1983 + idx + 934 len ceil32(_2947) + 32]
                                mem[mem[832] + idx + 898] = 0
                                _2820 = mem[64]
                                mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                                mem[64] = _1983 + idx + 898
                                mem[_1983 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1983 + idx + 902] = 32
                                _2948 = mem[_2820]
                                mem[_1983 + idx + 934] = mem[_2820]
                                s = 0
                                while s < _2948:
                                    mem[s + _1983 + idx + 966] = mem[s + _2820 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2948) > _2948:
                                    mem[_2948 + _1983 + idx + 966] = 0
                                revert with 0, 32, mem[_1983 + idx + 934 len ceil32(_2948) + 32]
                            _1984 = mem[832]
                            s = 0
                            while s < mem[832]:
                                mem[s + idx + 898] = mem[s + 864]
                                s = s + 32
                                continue 
                            if ceil32(mem[832]) <= mem[832]:
                                _2821 = mem[64]
                                mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                                mem[64] = _1984 + idx + 898
                                mem[_1984 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1984 + idx + 902] = 32
                                _2949 = mem[_2821]
                                mem[_1984 + idx + 934] = mem[_2821]
                                s = 0
                                while s < _2949:
                                    mem[s + _1984 + idx + 966] = mem[s + _2821 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2949) > _2949:
                                    mem[_2949 + _1984 + idx + 966] = 0
                                revert with 0, 32, mem[_1984 + idx + 934 len ceil32(_2949) + 32]
                            mem[mem[832] + idx + 898] = 0
                            _2822 = mem[64]
                            mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                            mem[64] = _1984 + idx + 898
                            mem[_1984 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1984 + idx + 902] = 32
                            _2950 = mem[_2822]
                            mem[_1984 + idx + 934] = mem[_2822]
                            s = 0
                            while s < _2950:
                                mem[s + _1984 + idx + 966] = mem[s + _2822 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2950) > _2950:
                                mem[_2950 + _1984 + idx + 966] = 0
                            revert with 0, 32, mem[_1984 + idx + 934 len ceil32(_2950) + 32]
                        mem[768] = 0
                        mem[832] = 0x4e6f7420617070726f7665640000000000000000000000000000000000000000
                        mem[800] = 32
                        mem[64] = 864
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 831]):
                                idx = idx - 1
                                continue 
                            mem[800] = idx
                            s = 0
                            while s < 0:
                                mem[s + 896] = mem[s + 800]
                                s = s + 32
                                continue 
                            mem[896] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + 898] = mem[s + 832]
                                s = s + 32
                                continue 
                            mem[864] = idx + 2
                            mem[64] = idx + 898
                            mem[idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + 902] = 32
                            mem[idx + 934] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + 966] = mem[s + 896]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + 968] = 0
                            revert with 0, 32, idx + 2, mem[idx + 966 len floor32(idx + 33)]
    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
}

function vote(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < 3
    mem[0] = msg.sender
    mem[32] = 13
    if fluidUntil[address(msg.sender)].field_768 > epoch:
        if fluidUntil[address(msg.sender)].field_256 <= 0:
            mem[128] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
            mem[96] = 32
            mem[64] = 160
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 127]):
                    idx = idx - 1
                    continue 
                mem[96] = idx
                mem[192] = 'Must have stake' << 136
                mem[160] = 32
                mem[64] = 224
                s = 32
                while s:
                    require s - 1 < 32
                    if not Mask(8, 248, mem[s + 191]):
                        s = s - 1
                        continue 
                    mem[160] = s
                    s = 0
                    while s < idx:
                        mem[s + 256] = mem[s + 128]
                        s = s + 32
                        continue 
                    mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    if ceil32(idx) <= idx:
                        _6063 = mem[160]
                        s = 0
                        while s < mem[160]:
                            mem[s + idx + 258] = mem[s + 192]
                            s = s + 32
                            continue 
                        if ceil32(mem[160]) <= mem[160]:
                            _8189 = mem[64]
                            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                            mem[64] = _6063 + idx + 258
                            mem[_6063 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6063 + idx + 262] = 32
                            _8493 = mem[_8189]
                            mem[_6063 + idx + 294] = mem[_8189]
                            s = 0
                            while s < _8493:
                                mem[s + _6063 + idx + 326] = mem[s + _8189 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8493) > _8493:
                                mem[_8493 + _6063 + idx + 326] = 0
                            revert with 0, 32, mem[_6063 + idx + 294 len ceil32(_8493) + 32]
                        mem[mem[160] + idx + 258] = 0
                        _8190 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _6063 + idx + 258
                        mem[_6063 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6063 + idx + 262] = 32
                        _8494 = mem[_8190]
                        mem[_6063 + idx + 294] = mem[_8190]
                        s = 0
                        while s < _8494:
                            mem[s + _6063 + idx + 326] = mem[s + _8190 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8494) > _8494:
                            mem[_8494 + _6063 + idx + 326] = 0
                        revert with 0, 32, mem[_6063 + idx + 294 len ceil32(_8494) + 32]
                    _6064 = mem[160]
                    s = 0
                    while s < mem[160]:
                        mem[s + idx + 258] = mem[s + 192]
                        s = s + 32
                        continue 
                    if ceil32(mem[160]) <= mem[160]:
                        _8191 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _6064 + idx + 258
                        mem[_6064 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6064 + idx + 262] = 32
                        _8495 = mem[_8191]
                        mem[_6064 + idx + 294] = mem[_8191]
                        s = 0
                        while s < _8495:
                            mem[s + _6064 + idx + 326] = mem[s + _8191 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8495) > _8495:
                            mem[_8495 + _6064 + idx + 326] = 0
                        revert with 0, 32, mem[_6064 + idx + 294 len ceil32(_8495) + 32]
                    mem[mem[160] + idx + 258] = 0
                    _8192 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _6064 + idx + 258
                    mem[_6064 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6064 + idx + 262] = 32
                    _8496 = mem[_8192]
                    mem[_6064 + idx + 294] = mem[_8192]
                    s = 0
                    while s < _8496:
                        mem[s + _6064 + idx + 326] = mem[s + _8192 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_8496) > _8496:
                        mem[_8496 + _6064 + idx + 326] = 0
                    revert with 0, 32, mem[_6064 + idx + 294 len ceil32(_8496) + 32]
                mem[224] = 0
                mem[64] = 256
                s = 0
                while s < idx:
                    mem[s + 288] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                if ceil32(idx) <= idx:
                    _6061 = mem[224]
                    s = 0
                    while s < mem[224]:
                        mem[s + idx + 290] = mem[s + 256]
                        s = s + 32
                        continue 
                    if ceil32(mem[224]) <= mem[224]:
                        _8185 = mem[64]
                        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                        mem[64] = _6061 + idx + 290
                        mem[_6061 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6061 + idx + 294] = 32
                        _8489 = mem[_8185]
                        mem[_6061 + idx + 326] = mem[_8185]
                        s = 0
                        while s < _8489:
                            mem[s + _6061 + idx + 358] = mem[s + _8185 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8489) > _8489:
                            mem[_8489 + _6061 + idx + 358] = 0
                        revert with 0, 32, mem[_6061 + idx + 326 len ceil32(_8489) + 32]
                    mem[mem[224] + idx + 290] = 0
                    _8186 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _6061 + idx + 290
                    mem[_6061 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6061 + idx + 294] = 32
                    _8490 = mem[_8186]
                    mem[_6061 + idx + 326] = mem[_8186]
                    s = 0
                    while s < _8490:
                        mem[s + _6061 + idx + 358] = mem[s + _8186 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_8490) > _8490:
                        mem[_8490 + _6061 + idx + 358] = 0
                    revert with 0, 32, mem[_6061 + idx + 326 len ceil32(_8490) + 32]
                _6062 = mem[224]
                s = 0
                while s < mem[224]:
                    mem[s + idx + 290] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(mem[224]) <= mem[224]:
                    _8187 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _6062 + idx + 290
                    mem[_6062 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6062 + idx + 294] = 32
                    _8491 = mem[_8187]
                    mem[_6062 + idx + 326] = mem[_8187]
                    s = 0
                    while s < _8491:
                        mem[s + _6062 + idx + 358] = mem[s + _8187 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_8491) > _8491:
                        mem[_8491 + _6062 + idx + 358] = 0
                    revert with 0, 32, mem[_6062 + idx + 326 len ceil32(_8491) + 32]
                mem[mem[224] + idx + 290] = 0
                _8188 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _6062 + idx + 290
                mem[_6062 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6062 + idx + 294] = 32
                _8492 = mem[_8188]
                mem[_6062 + idx + 326] = mem[_8188]
                s = 0
                while s < _8492:
                    mem[s + _6062 + idx + 358] = mem[s + _8188 + 32]
                    s = s + 32
                    continue 
                if ceil32(_8492) > _8492:
                    mem[_8492 + _6062 + idx + 358] = 0
                revert with 0, 32, mem[_6062 + idx + 326 len ceil32(_8492) + 32]
            mem[160] = 0
            mem[224] = 'Must have stake' << 136
            mem[192] = 32
            mem[64] = 256
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 223]):
                    idx = idx - 1
                    continue 
                mem[192] = idx
                s = 0
                while s < 0:
                    mem[s + 288] = mem[s + 192]
                    s = s + 32
                    continue 
                mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                s = 0
                while s < idx:
                    mem[s + 290] = mem[s + 224]
                    s = s + 32
                    continue 
                mem[256] = idx + 2
                mem[64] = idx + 290
                mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[idx + 294] = 32
                mem[idx + 326] = idx + 2
                s = 0
                while s < idx + 2:
                    mem[s + idx + 358] = mem[s + 288]
                    s = s + 32
                    continue 
                if floor32(idx + 33) > idx + 2:
                    mem[(2 * idx) + 360] = 0
                revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
            revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
        mem[0] = arg1
        mem[32] = 15
        if periodFor[address(arg1)].field_0:
            mem[0] = arg1
            mem[32] = 15
            if periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0 < periodFor[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if epoch >= periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0:
                mem[128] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                mem[96] = 32
                mem[64] = 160
                idx = 32
                while idx:
                    require idx - 1 < 32
                    if not Mask(8, 248, mem[idx + 127]):
                        idx = idx - 1
                        continue 
                    mem[96] = idx
                    mem[192] = 0x456e646564000000000000000000000000000000000000000000000000000000
                    mem[160] = 32
                    mem[64] = 224
                    s = 32
                    while s:
                        require s - 1 < 32
                        if not Mask(8, 248, mem[s + 191]):
                            s = s - 1
                            continue 
                        mem[160] = s
                        s = 0
                        while s < idx:
                            mem[s + 256] = mem[s + 128]
                            s = s + 32
                            continue 
                        mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _5999 = mem[160]
                            s = 0
                            while s < mem[160]:
                                mem[s + idx + 258] = mem[s + 192]
                                s = s + 32
                                continue 
                            if ceil32(mem[160]) <= mem[160]:
                                _8061 = mem[64]
                                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                                mem[64] = _5999 + idx + 258
                                mem[_5999 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5999 + idx + 262] = 32
                                _8365 = mem[_8061]
                                mem[_5999 + idx + 294] = mem[_8061]
                                s = 0
                                while s < _8365:
                                    mem[s + _5999 + idx + 326] = mem[s + _8061 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8365) > _8365:
                                    mem[_8365 + _5999 + idx + 326] = 0
                                revert with 0, 32, mem[_5999 + idx + 294 len ceil32(_8365) + 32]
                            mem[mem[160] + idx + 258] = 0
                            _8062 = mem[64]
                            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                            mem[64] = _5999 + idx + 258
                            mem[_5999 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5999 + idx + 262] = 32
                            _8366 = mem[_8062]
                            mem[_5999 + idx + 294] = mem[_8062]
                            s = 0
                            while s < _8366:
                                mem[s + _5999 + idx + 326] = mem[s + _8062 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8366) > _8366:
                                mem[_8366 + _5999 + idx + 326] = 0
                            revert with 0, 32, mem[_5999 + idx + 294 len ceil32(_8366) + 32]
                        _6000 = mem[160]
                        s = 0
                        while s < mem[160]:
                            mem[s + idx + 258] = mem[s + 192]
                            s = s + 32
                            continue 
                        if ceil32(mem[160]) <= mem[160]:
                            _8063 = mem[64]
                            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                            mem[64] = _6000 + idx + 258
                            mem[_6000 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6000 + idx + 262] = 32
                            _8367 = mem[_8063]
                            mem[_6000 + idx + 294] = mem[_8063]
                            s = 0
                            while s < _8367:
                                mem[s + _6000 + idx + 326] = mem[s + _8063 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8367) > _8367:
                                mem[_8367 + _6000 + idx + 326] = 0
                            revert with 0, 32, mem[_6000 + idx + 294 len ceil32(_8367) + 32]
                        mem[mem[160] + idx + 258] = 0
                        _8064 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _6000 + idx + 258
                        mem[_6000 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6000 + idx + 262] = 32
                        _8368 = mem[_8064]
                        mem[_6000 + idx + 294] = mem[_8064]
                        s = 0
                        while s < _8368:
                            mem[s + _6000 + idx + 326] = mem[s + _8064 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8368) > _8368:
                            mem[_8368 + _6000 + idx + 326] = 0
                        revert with 0, 32, mem[_6000 + idx + 294 len ceil32(_8368) + 32]
                    mem[224] = 0
                    mem[64] = 256
                    s = 0
                    while s < idx:
                        mem[s + 288] = mem[s + 128]
                        s = s + 32
                        continue 
                    mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    if ceil32(idx) <= idx:
                        _5997 = mem[224]
                        s = 0
                        while s < mem[224]:
                            mem[s + idx + 290] = mem[s + 256]
                            s = s + 32
                            continue 
                        if ceil32(mem[224]) <= mem[224]:
                            _8057 = mem[64]
                            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                            mem[64] = _5997 + idx + 290
                            mem[_5997 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5997 + idx + 294] = 32
                            _8361 = mem[_8057]
                            mem[_5997 + idx + 326] = mem[_8057]
                            s = 0
                            while s < _8361:
                                mem[s + _5997 + idx + 358] = mem[s + _8057 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8361) > _8361:
                                mem[_8361 + _5997 + idx + 358] = 0
                            revert with 0, 32, mem[_5997 + idx + 326 len ceil32(_8361) + 32]
                        mem[mem[224] + idx + 290] = 0
                        _8058 = mem[64]
                        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                        mem[64] = _5997 + idx + 290
                        mem[_5997 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5997 + idx + 294] = 32
                        _8362 = mem[_8058]
                        mem[_5997 + idx + 326] = mem[_8058]
                        s = 0
                        while s < _8362:
                            mem[s + _5997 + idx + 358] = mem[s + _8058 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8362) > _8362:
                            mem[_8362 + _5997 + idx + 358] = 0
                        revert with 0, 32, mem[_5997 + idx + 326 len ceil32(_8362) + 32]
                    _5998 = mem[224]
                    s = 0
                    while s < mem[224]:
                        mem[s + idx + 290] = mem[s + 256]
                        s = s + 32
                        continue 
                    if ceil32(mem[224]) <= mem[224]:
                        _8059 = mem[64]
                        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                        mem[64] = _5998 + idx + 290
                        mem[_5998 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5998 + idx + 294] = 32
                        _8363 = mem[_8059]
                        mem[_5998 + idx + 326] = mem[_8059]
                        s = 0
                        while s < _8363:
                            mem[s + _5998 + idx + 358] = mem[s + _8059 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8363) > _8363:
                            mem[_8363 + _5998 + idx + 358] = 0
                        revert with 0, 32, mem[_5998 + idx + 326 len ceil32(_8363) + 32]
                    mem[mem[224] + idx + 290] = 0
                    _8060 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _5998 + idx + 290
                    mem[_5998 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5998 + idx + 294] = 32
                    _8364 = mem[_8060]
                    mem[_5998 + idx + 326] = mem[_8060]
                    s = 0
                    while s < _8364:
                        mem[s + _5998 + idx + 358] = mem[s + _8060 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_8364) > _8364:
                        mem[_8364 + _5998 + idx + 358] = 0
                    revert with 0, 32, mem[_5998 + idx + 326 len ceil32(_8364) + 32]
                mem[160] = 0
                mem[224] = 0x456e646564000000000000000000000000000000000000000000000000000000
                mem[192] = 32
                mem[64] = 256
                idx = 32
                while idx:
                    require idx - 1 < 32
                    if not Mask(8, 248, mem[idx + 223]):
                        idx = idx - 1
                        continue 
                    mem[192] = idx
                    s = 0
                    while s < 0:
                        mem[s + 288] = mem[s + 192]
                        s = s + 32
                        continue 
                    mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    s = 0
                    while s < idx:
                        mem[s + 290] = mem[s + 224]
                        s = s + 32
                        continue 
                    mem[256] = idx + 2
                    mem[64] = idx + 290
                    mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[idx + 294] = 32
                    mem[idx + 326] = idx + 2
                    s = 0
                    while s < idx + 2:
                        mem[s + idx + 358] = mem[s + 288]
                        s = s + 32
                        continue 
                    if floor32(idx + 33) > idx + 2:
                        mem[(2 * idx) + 360] = 0
                    revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
                revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
        else:
            if not totalBonded:
                mem[128] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                mem[96] = 32
                mem[64] = 160
                idx = 32
                while idx:
                    require idx - 1 < 32
                    if not Mask(8, 248, mem[idx + 127]):
                        idx = idx - 1
                        continue 
                    mem[96] = idx
                    mem[192] = 'Not enough stake to propose'
                    mem[160] = 32
                    mem[64] = 224
                    s = 32
                    while s:
                        require s - 1 < 32
                        if not Mask(8, 248, mem[s + 191]):
                            s = s - 1
                            continue 
                        mem[160] = s
                        s = 0
                        while s < idx:
                            mem[s + 256] = mem[s + 128]
                            s = s + 32
                            continue 
                        mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _6055 = mem[160]
                            s = 0
                            while s < mem[160]:
                                mem[s + idx + 258] = mem[s + 192]
                                s = s + 32
                                continue 
                            if ceil32(mem[160]) <= mem[160]:
                                _8173 = mem[64]
                                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                                mem[64] = _6055 + idx + 258
                                mem[_6055 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6055 + idx + 262] = 32
                                _8477 = mem[_8173]
                                mem[_6055 + idx + 294] = mem[_8173]
                                s = 0
                                while s < _8477:
                                    mem[s + _6055 + idx + 326] = mem[s + _8173 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8477) > _8477:
                                    mem[_8477 + _6055 + idx + 326] = 0
                                revert with 0, 32, mem[_6055 + idx + 294 len ceil32(_8477) + 32]
                            mem[mem[160] + idx + 258] = 0
                            _8174 = mem[64]
                            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                            mem[64] = _6055 + idx + 258
                            mem[_6055 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6055 + idx + 262] = 32
                            _8478 = mem[_8174]
                            mem[_6055 + idx + 294] = mem[_8174]
                            s = 0
                            while s < _8478:
                                mem[s + _6055 + idx + 326] = mem[s + _8174 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8478) > _8478:
                                mem[_8478 + _6055 + idx + 326] = 0
                            revert with 0, 32, mem[_6055 + idx + 294 len ceil32(_8478) + 32]
                        _6056 = mem[160]
                        s = 0
                        while s < mem[160]:
                            mem[s + idx + 258] = mem[s + 192]
                            s = s + 32
                            continue 
                        if ceil32(mem[160]) <= mem[160]:
                            _8175 = mem[64]
                            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                            mem[64] = _6056 + idx + 258
                            mem[_6056 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6056 + idx + 262] = 32
                            _8479 = mem[_8175]
                            mem[_6056 + idx + 294] = mem[_8175]
                            s = 0
                            while s < _8479:
                                mem[s + _6056 + idx + 326] = mem[s + _8175 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8479) > _8479:
                                mem[_8479 + _6056 + idx + 326] = 0
                            revert with 0, 32, mem[_6056 + idx + 294 len ceil32(_8479) + 32]
                        mem[mem[160] + idx + 258] = 0
                        _8176 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _6056 + idx + 258
                        mem[_6056 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6056 + idx + 262] = 32
                        _8480 = mem[_8176]
                        mem[_6056 + idx + 294] = mem[_8176]
                        s = 0
                        while s < _8480:
                            mem[s + _6056 + idx + 326] = mem[s + _8176 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8480) > _8480:
                            mem[_8480 + _6056 + idx + 326] = 0
                        revert with 0, 32, mem[_6056 + idx + 294 len ceil32(_8480) + 32]
                    mem[224] = 0
                    mem[64] = 256
                    s = 0
                    while s < idx:
                        mem[s + 288] = mem[s + 128]
                        s = s + 32
                        continue 
                    mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    if ceil32(idx) <= idx:
                        _6053 = mem[224]
                        s = 0
                        while s < mem[224]:
                            mem[s + idx + 290] = mem[s + 256]
                            s = s + 32
                            continue 
                        if ceil32(mem[224]) <= mem[224]:
                            _8169 = mem[64]
                            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                            mem[64] = _6053 + idx + 290
                            mem[_6053 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6053 + idx + 294] = 32
                            _8473 = mem[_8169]
                            mem[_6053 + idx + 326] = mem[_8169]
                            s = 0
                            while s < _8473:
                                mem[s + _6053 + idx + 358] = mem[s + _8169 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8473) > _8473:
                                mem[_8473 + _6053 + idx + 358] = 0
                            revert with 0, 32, mem[_6053 + idx + 326 len ceil32(_8473) + 32]
                        mem[mem[224] + idx + 290] = 0
                        _8170 = mem[64]
                        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                        mem[64] = _6053 + idx + 290
                        mem[_6053 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6053 + idx + 294] = 32
                        _8474 = mem[_8170]
                        mem[_6053 + idx + 326] = mem[_8170]
                        s = 0
                        while s < _8474:
                            mem[s + _6053 + idx + 358] = mem[s + _8170 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8474) > _8474:
                            mem[_8474 + _6053 + idx + 358] = 0
                        revert with 0, 32, mem[_6053 + idx + 326 len ceil32(_8474) + 32]
                    _6054 = mem[224]
                    s = 0
                    while s < mem[224]:
                        mem[s + idx + 290] = mem[s + 256]
                        s = s + 32
                        continue 
                    if ceil32(mem[224]) <= mem[224]:
                        _8171 = mem[64]
                        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                        mem[64] = _6054 + idx + 290
                        mem[_6054 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6054 + idx + 294] = 32
                        _8475 = mem[_8171]
                        mem[_6054 + idx + 326] = mem[_8171]
                        s = 0
                        while s < _8475:
                            mem[s + _6054 + idx + 358] = mem[s + _8171 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8475) > _8475:
                            mem[_8475 + _6054 + idx + 358] = 0
                        revert with 0, 32, mem[_6054 + idx + 326 len ceil32(_8475) + 32]
                    mem[mem[224] + idx + 290] = 0
                    _8172 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _6054 + idx + 290
                    mem[_6054 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6054 + idx + 294] = 32
                    _8476 = mem[_8172]
                    mem[_6054 + idx + 326] = mem[_8172]
                    s = 0
                    while s < _8476:
                        mem[s + _6054 + idx + 358] = mem[s + _8172 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_8476) > _8476:
                        mem[_8476 + _6054 + idx + 358] = 0
                    revert with 0, 32, mem[_6054 + idx + 326 len ceil32(_8476) + 32]
                mem[160] = 0
                mem[224] = 'Not enough stake to propose'
                mem[192] = 32
                mem[64] = 256
                idx = 32
                while idx:
                    require idx - 1 < 32
                    if not Mask(8, 248, mem[idx + 223]):
                        idx = idx - 1
                        continue 
                    mem[192] = idx
                    s = 0
                    while s < 0:
                        mem[s + 288] = mem[s + 192]
                        s = s + 32
                        continue 
                    mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    s = 0
                    while s < idx:
                        mem[s + 290] = mem[s + 224]
                        s = s + 32
                        continue 
                    mem[256] = idx + 2
                    mem[64] = idx + 290
                    mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[idx + 294] = 32
                    mem[idx + 326] = idx + 2
                    s = 0
                    while s < idx + 2:
                        mem[s + idx + 358] = mem[s + 288]
                        s = s + 32
                        continue 
                    if floor32(idx + 33) > idx + 2:
                        mem[(2 * idx) + 360] = 0
                    revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
                revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
            mem[96] = 0
            mem[0] = msg.sender
            mem[32] = 13
            mem[128] = 0
            if not fluidUntil[address(msg.sender)].field_256:
                mem[192] = 26
                mem[224] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[160] = 0 / totalSupply
                mem[256] = 0
                mem[288] = 5 * 10^15
                if 5 * 10^15 == 0 / totalSupply:
                    mem[352] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[320] = 32
                    mem[64] = 384
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 351]):
                            idx = idx - 1
                            continue 
                        mem[320] = idx
                        mem[416] = 'Not enough stake to propose'
                        mem[384] = 32
                        mem[64] = 448
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 415]):
                                s = s - 1
                                continue 
                            mem[384] = s
                            s = 0
                            while s < idx:
                                mem[s + 480] = mem[s + 352]
                                s = s + 32
                                continue 
                            mem[idx + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _6047 = mem[384]
                                s = 0
                                while s < mem[384]:
                                    mem[s + idx + 482] = mem[s + 416]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[384]) <= mem[384]:
                                    _8157 = mem[64]
                                    mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                    mem[64] = _6047 + idx + 482
                                    mem[_6047 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_6047 + idx + 486] = 32
                                    _8461 = mem[_8157]
                                    mem[_6047 + idx + 518] = mem[_8157]
                                    s = 0
                                    while s < _8461:
                                        mem[s + _6047 + idx + 550] = mem[s + _8157 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_8461) > _8461:
                                        mem[_8461 + _6047 + idx + 550] = 0
                                    revert with 0, 32, mem[_6047 + idx + 518 len ceil32(_8461) + 32]
                                mem[mem[384] + idx + 482] = 0
                                _8158 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _6047 + idx + 482
                                mem[_6047 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6047 + idx + 486] = 32
                                _8462 = mem[_8158]
                                mem[_6047 + idx + 518] = mem[_8158]
                                s = 0
                                while s < _8462:
                                    mem[s + _6047 + idx + 550] = mem[s + _8158 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8462) > _8462:
                                    mem[_8462 + _6047 + idx + 550] = 0
                                revert with 0, 32, mem[_6047 + idx + 518 len ceil32(_8462) + 32]
                            _6048 = mem[384]
                            s = 0
                            while s < mem[384]:
                                mem[s + idx + 482] = mem[s + 416]
                                s = s + 32
                                continue 
                            if ceil32(mem[384]) <= mem[384]:
                                _8159 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _6048 + idx + 482
                                mem[_6048 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6048 + idx + 486] = 32
                                _8463 = mem[_8159]
                                mem[_6048 + idx + 518] = mem[_8159]
                                s = 0
                                while s < _8463:
                                    mem[s + _6048 + idx + 550] = mem[s + _8159 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8463) > _8463:
                                    mem[_8463 + _6048 + idx + 550] = 0
                                revert with 0, 32, mem[_6048 + idx + 518 len ceil32(_8463) + 32]
                            mem[mem[384] + idx + 482] = 0
                            _8160 = mem[64]
                            mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                            mem[64] = _6048 + idx + 482
                            mem[_6048 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6048 + idx + 486] = 32
                            _8464 = mem[_8160]
                            mem[_6048 + idx + 518] = mem[_8160]
                            s = 0
                            while s < _8464:
                                mem[s + _6048 + idx + 550] = mem[s + _8160 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8464) > _8464:
                                mem[_8464 + _6048 + idx + 550] = 0
                            revert with 0, 32, mem[_6048 + idx + 518 len ceil32(_8464) + 32]
                        mem[448] = 0
                        mem[64] = 480
                        s = 0
                        while s < idx:
                            mem[s + 512] = mem[s + 352]
                            s = s + 32
                            continue 
                        mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _6045 = mem[448]
                            s = 0
                            while s < mem[448]:
                                mem[s + idx + 514] = mem[s + 480]
                                s = s + 32
                                continue 
                            if ceil32(mem[448]) <= mem[448]:
                                _8153 = mem[64]
                                mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                                mem[64] = _6045 + idx + 514
                                mem[_6045 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6045 + idx + 518] = 32
                                _8457 = mem[_8153]
                                mem[_6045 + idx + 550] = mem[_8153]
                                s = 0
                                while s < _8457:
                                    mem[s + _6045 + idx + 582] = mem[s + _8153 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8457) > _8457:
                                    mem[_8457 + _6045 + idx + 582] = 0
                                revert with 0, 32, mem[_6045 + idx + 550 len ceil32(_8457) + 32]
                            mem[mem[448] + idx + 514] = 0
                            _8154 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _6045 + idx + 514
                            mem[_6045 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6045 + idx + 518] = 32
                            _8458 = mem[_8154]
                            mem[_6045 + idx + 550] = mem[_8154]
                            s = 0
                            while s < _8458:
                                mem[s + _6045 + idx + 582] = mem[s + _8154 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8458) > _8458:
                                mem[_8458 + _6045 + idx + 582] = 0
                            revert with 0, 32, mem[_6045 + idx + 550 len ceil32(_8458) + 32]
                        _6046 = mem[448]
                        s = 0
                        while s < mem[448]:
                            mem[s + idx + 514] = mem[s + 480]
                            s = s + 32
                            continue 
                        if ceil32(mem[448]) <= mem[448]:
                            _8155 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _6046 + idx + 514
                            mem[_6046 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6046 + idx + 518] = 32
                            _8459 = mem[_8155]
                            mem[_6046 + idx + 550] = mem[_8155]
                            s = 0
                            while s < _8459:
                                mem[s + _6046 + idx + 582] = mem[s + _8155 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8459) > _8459:
                                mem[_8459 + _6046 + idx + 582] = 0
                            revert with 0, 32, mem[_6046 + idx + 550 len ceil32(_8459) + 32]
                        mem[mem[448] + idx + 514] = 0
                        _8156 = mem[64]
                        mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                        mem[64] = _6046 + idx + 514
                        mem[_6046 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6046 + idx + 518] = 32
                        _8460 = mem[_8156]
                        mem[_6046 + idx + 550] = mem[_8156]
                        s = 0
                        while s < _8460:
                            mem[s + _6046 + idx + 582] = mem[s + _8156 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8460) > _8460:
                            mem[_8460 + _6046 + idx + 582] = 0
                        revert with 0, 32, mem[_6046 + idx + 550 len ceil32(_8460) + 32]
                    mem[384] = 0
                    mem[448] = 'Not enough stake to propose'
                    mem[416] = 32
                    mem[64] = 480
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 447]):
                            idx = idx - 1
                            continue 
                        mem[416] = idx
                        s = 0
                        while s < 0:
                            mem[s + 512] = mem[s + 416]
                            s = s + 32
                            continue 
                        mem[512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 514] = mem[s + 448]
                            s = s + 32
                            continue 
                        mem[480] = idx + 2
                        mem[64] = idx + 514
                        mem[idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 518] = 32
                        mem[idx + 550] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 582] = mem[s + 512]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 584] = 0
                        revert with 0, 32, idx + 2, mem[idx + 582 len floor32(idx + 33)]
                    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
                if 0 / totalSupply <= 5 * 10^15:
                    mem[352] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[320] = 32
                    mem[64] = 384
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 351]):
                            idx = idx - 1
                            continue 
                        mem[320] = idx
                        mem[416] = 'Not enough stake to propose'
                        mem[384] = 32
                        mem[64] = 448
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 415]):
                                s = s - 1
                                continue 
                            mem[384] = s
                            s = 0
                            while s < idx:
                                mem[s + 480] = mem[s + 352]
                                s = s + 32
                                continue 
                            mem[idx + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _6039 = mem[384]
                                s = 0
                                while s < mem[384]:
                                    mem[s + idx + 482] = mem[s + 416]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[384]) <= mem[384]:
                                    _8141 = mem[64]
                                    mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                    mem[64] = _6039 + idx + 482
                                    mem[_6039 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_6039 + idx + 486] = 32
                                    _8445 = mem[_8141]
                                    mem[_6039 + idx + 518] = mem[_8141]
                                    s = 0
                                    while s < _8445:
                                        mem[s + _6039 + idx + 550] = mem[s + _8141 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_8445) > _8445:
                                        mem[_8445 + _6039 + idx + 550] = 0
                                    revert with 0, 32, mem[_6039 + idx + 518 len ceil32(_8445) + 32]
                                mem[mem[384] + idx + 482] = 0
                                _8142 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _6039 + idx + 482
                                mem[_6039 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6039 + idx + 486] = 32
                                _8446 = mem[_8142]
                                mem[_6039 + idx + 518] = mem[_8142]
                                s = 0
                                while s < _8446:
                                    mem[s + _6039 + idx + 550] = mem[s + _8142 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8446) > _8446:
                                    mem[_8446 + _6039 + idx + 550] = 0
                                revert with 0, 32, mem[_6039 + idx + 518 len ceil32(_8446) + 32]
                            _6040 = mem[384]
                            s = 0
                            while s < mem[384]:
                                mem[s + idx + 482] = mem[s + 416]
                                s = s + 32
                                continue 
                            if ceil32(mem[384]) <= mem[384]:
                                _8143 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _6040 + idx + 482
                                mem[_6040 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6040 + idx + 486] = 32
                                _8447 = mem[_8143]
                                mem[_6040 + idx + 518] = mem[_8143]
                                s = 0
                                while s < _8447:
                                    mem[s + _6040 + idx + 550] = mem[s + _8143 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8447) > _8447:
                                    mem[_8447 + _6040 + idx + 550] = 0
                                revert with 0, 32, mem[_6040 + idx + 518 len ceil32(_8447) + 32]
                            mem[mem[384] + idx + 482] = 0
                            _8144 = mem[64]
                            mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                            mem[64] = _6040 + idx + 482
                            mem[_6040 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6040 + idx + 486] = 32
                            _8448 = mem[_8144]
                            mem[_6040 + idx + 518] = mem[_8144]
                            s = 0
                            while s < _8448:
                                mem[s + _6040 + idx + 550] = mem[s + _8144 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8448) > _8448:
                                mem[_8448 + _6040 + idx + 550] = 0
                            revert with 0, 32, mem[_6040 + idx + 518 len ceil32(_8448) + 32]
                        mem[448] = 0
                        mem[64] = 480
                        s = 0
                        while s < idx:
                            mem[s + 512] = mem[s + 352]
                            s = s + 32
                            continue 
                        mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _6037 = mem[448]
                            s = 0
                            while s < mem[448]:
                                mem[s + idx + 514] = mem[s + 480]
                                s = s + 32
                                continue 
                            if ceil32(mem[448]) <= mem[448]:
                                _8137 = mem[64]
                                mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                                mem[64] = _6037 + idx + 514
                                mem[_6037 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6037 + idx + 518] = 32
                                _8441 = mem[_8137]
                                mem[_6037 + idx + 550] = mem[_8137]
                                s = 0
                                while s < _8441:
                                    mem[s + _6037 + idx + 582] = mem[s + _8137 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8441) > _8441:
                                    mem[_8441 + _6037 + idx + 582] = 0
                                revert with 0, 32, mem[_6037 + idx + 550 len ceil32(_8441) + 32]
                            mem[mem[448] + idx + 514] = 0
                            _8138 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _6037 + idx + 514
                            mem[_6037 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6037 + idx + 518] = 32
                            _8442 = mem[_8138]
                            mem[_6037 + idx + 550] = mem[_8138]
                            s = 0
                            while s < _8442:
                                mem[s + _6037 + idx + 582] = mem[s + _8138 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8442) > _8442:
                                mem[_8442 + _6037 + idx + 582] = 0
                            revert with 0, 32, mem[_6037 + idx + 550 len ceil32(_8442) + 32]
                        _6038 = mem[448]
                        s = 0
                        while s < mem[448]:
                            mem[s + idx + 514] = mem[s + 480]
                            s = s + 32
                            continue 
                        if ceil32(mem[448]) <= mem[448]:
                            _8139 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _6038 + idx + 514
                            mem[_6038 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6038 + idx + 518] = 32
                            _8443 = mem[_8139]
                            mem[_6038 + idx + 550] = mem[_8139]
                            s = 0
                            while s < _8443:
                                mem[s + _6038 + idx + 582] = mem[s + _8139 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8443) > _8443:
                                mem[_8443 + _6038 + idx + 582] = 0
                            revert with 0, 32, mem[_6038 + idx + 550 len ceil32(_8443) + 32]
                        mem[mem[448] + idx + 514] = 0
                        _8140 = mem[64]
                        mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                        mem[64] = _6038 + idx + 514
                        mem[_6038 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6038 + idx + 518] = 32
                        _8444 = mem[_8140]
                        mem[_6038 + idx + 550] = mem[_8140]
                        s = 0
                        while s < _8444:
                            mem[s + _6038 + idx + 582] = mem[s + _8140 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8444) > _8444:
                            mem[_8444 + _6038 + idx + 582] = 0
                        revert with 0, 32, mem[_6038 + idx + 550 len ceil32(_8444) + 32]
                    mem[384] = 0
                    mem[448] = 'Not enough stake to propose'
                    mem[416] = 32
                    mem[64] = 480
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 447]):
                            idx = idx - 1
                            continue 
                        mem[416] = idx
                        s = 0
                        while s < 0:
                            mem[s + 512] = mem[s + 416]
                            s = s + 32
                            continue 
                        mem[512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 514] = mem[s + 448]
                            s = s + 32
                            continue 
                        mem[480] = idx + 2
                        mem[64] = idx + 514
                        mem[idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 518] = 32
                        mem[idx + 550] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 582] = mem[s + 512]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 584] = 0
                        revert with 0, 32, idx + 2, mem[idx + 582 len floor32(idx + 33)]
                    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
                periodFor[address(arg1)].field_0 = epoch
                periodFor[address(arg1)].field_256 = 48
                emit Proposal(48, arg1, msg.sender, epoch);
                mem[0] = arg1
                mem[32] = 15
                if periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0 < periodFor[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if epoch >= periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0:
                    mem[352] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[320] = 32
                    mem[64] = 384
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 351]):
                            idx = idx - 1
                            continue 
                        mem[320] = idx
                        mem[416] = 0x456e646564000000000000000000000000000000000000000000000000000000
                        mem[384] = 32
                        mem[64] = 448
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 415]):
                                s = s - 1
                                continue 
                            mem[384] = s
                            s = 0
                            while s < idx:
                                mem[s + 480] = mem[s + 352]
                                s = s + 32
                                continue 
                            mem[idx + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _6031 = mem[384]
                                s = 0
                                while s < mem[384]:
                                    mem[s + idx + 482] = mem[s + 416]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[384]) <= mem[384]:
                                    _8125 = mem[64]
                                    mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                    mem[64] = _6031 + idx + 482
                                    mem[_6031 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_6031 + idx + 486] = 32
                                    _8429 = mem[_8125]
                                    mem[_6031 + idx + 518] = mem[_8125]
                                    s = 0
                                    while s < _8429:
                                        mem[s + _6031 + idx + 550] = mem[s + _8125 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_8429) > _8429:
                                        mem[_8429 + _6031 + idx + 550] = 0
                                    revert with 0, 32, mem[_6031 + idx + 518 len ceil32(_8429) + 32]
                                mem[mem[384] + idx + 482] = 0
                                _8126 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _6031 + idx + 482
                                mem[_6031 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6031 + idx + 486] = 32
                                _8430 = mem[_8126]
                                mem[_6031 + idx + 518] = mem[_8126]
                                s = 0
                                while s < _8430:
                                    mem[s + _6031 + idx + 550] = mem[s + _8126 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8430) > _8430:
                                    mem[_8430 + _6031 + idx + 550] = 0
                                revert with 0, 32, mem[_6031 + idx + 518 len ceil32(_8430) + 32]
                            _6032 = mem[384]
                            s = 0
                            while s < mem[384]:
                                mem[s + idx + 482] = mem[s + 416]
                                s = s + 32
                                continue 
                            if ceil32(mem[384]) <= mem[384]:
                                _8127 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _6032 + idx + 482
                                mem[_6032 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6032 + idx + 486] = 32
                                _8431 = mem[_8127]
                                mem[_6032 + idx + 518] = mem[_8127]
                                s = 0
                                while s < _8431:
                                    mem[s + _6032 + idx + 550] = mem[s + _8127 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8431) > _8431:
                                    mem[_8431 + _6032 + idx + 550] = 0
                                revert with 0, 32, mem[_6032 + idx + 518 len ceil32(_8431) + 32]
                            mem[mem[384] + idx + 482] = 0
                            _8128 = mem[64]
                            mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                            mem[64] = _6032 + idx + 482
                            mem[_6032 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6032 + idx + 486] = 32
                            _8432 = mem[_8128]
                            mem[_6032 + idx + 518] = mem[_8128]
                            s = 0
                            while s < _8432:
                                mem[s + _6032 + idx + 550] = mem[s + _8128 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8432) > _8432:
                                mem[_8432 + _6032 + idx + 550] = 0
                            revert with 0, 32, mem[_6032 + idx + 518 len ceil32(_8432) + 32]
                        mem[448] = 0
                        mem[64] = 480
                        s = 0
                        while s < idx:
                            mem[s + 512] = mem[s + 352]
                            s = s + 32
                            continue 
                        mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _6029 = mem[448]
                            s = 0
                            while s < mem[448]:
                                mem[s + idx + 514] = mem[s + 480]
                                s = s + 32
                                continue 
                            if ceil32(mem[448]) <= mem[448]:
                                _8121 = mem[64]
                                mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                                mem[64] = _6029 + idx + 514
                                mem[_6029 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6029 + idx + 518] = 32
                                _8425 = mem[_8121]
                                mem[_6029 + idx + 550] = mem[_8121]
                                s = 0
                                while s < _8425:
                                    mem[s + _6029 + idx + 582] = mem[s + _8121 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8425) > _8425:
                                    mem[_8425 + _6029 + idx + 582] = 0
                                revert with 0, 32, mem[_6029 + idx + 550 len ceil32(_8425) + 32]
                            mem[mem[448] + idx + 514] = 0
                            _8122 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _6029 + idx + 514
                            mem[_6029 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6029 + idx + 518] = 32
                            _8426 = mem[_8122]
                            mem[_6029 + idx + 550] = mem[_8122]
                            s = 0
                            while s < _8426:
                                mem[s + _6029 + idx + 582] = mem[s + _8122 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8426) > _8426:
                                mem[_8426 + _6029 + idx + 582] = 0
                            revert with 0, 32, mem[_6029 + idx + 550 len ceil32(_8426) + 32]
                        _6030 = mem[448]
                        s = 0
                        while s < mem[448]:
                            mem[s + idx + 514] = mem[s + 480]
                            s = s + 32
                            continue 
                        if ceil32(mem[448]) <= mem[448]:
                            _8123 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _6030 + idx + 514
                            mem[_6030 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6030 + idx + 518] = 32
                            _8427 = mem[_8123]
                            mem[_6030 + idx + 550] = mem[_8123]
                            s = 0
                            while s < _8427:
                                mem[s + _6030 + idx + 582] = mem[s + _8123 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8427) > _8427:
                                mem[_8427 + _6030 + idx + 582] = 0
                            revert with 0, 32, mem[_6030 + idx + 550 len ceil32(_8427) + 32]
                        mem[mem[448] + idx + 514] = 0
                        _8124 = mem[64]
                        mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                        mem[64] = _6030 + idx + 514
                        mem[_6030 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6030 + idx + 518] = 32
                        _8428 = mem[_8124]
                        mem[_6030 + idx + 550] = mem[_8124]
                        s = 0
                        while s < _8428:
                            mem[s + _6030 + idx + 582] = mem[s + _8124 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8428) > _8428:
                            mem[_8428 + _6030 + idx + 582] = 0
                        revert with 0, 32, mem[_6030 + idx + 550 len ceil32(_8428) + 32]
                    mem[384] = 0
                    mem[448] = 0x456e646564000000000000000000000000000000000000000000000000000000
                    mem[416] = 32
                    mem[64] = 480
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 447]):
                            idx = idx - 1
                            continue 
                        mem[416] = idx
                        s = 0
                        while s < 0:
                            mem[s + 512] = mem[s + 416]
                            s = s + 32
                            continue 
                        mem[512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 514] = mem[s + 448]
                            s = s + 32
                            continue 
                        mem[480] = idx + 2
                        mem[64] = idx + 514
                        mem[idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 518] = 32
                        mem[idx + 550] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 582] = mem[s + 512]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 584] = 0
                        revert with 0, 32, idx + 2, mem[idx + 582 len floor32(idx + 33)]
                    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
            else:
                if 10^18 * fluidUntil[address(msg.sender)].field_256 / fluidUntil[address(msg.sender)].field_256 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[192] = 26
                mem[224] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[160] = 10^18 * fluidUntil[address(msg.sender)].field_256 / totalSupply
                mem[256] = 0
                mem[288] = 5 * 10^15
                if 5 * 10^15 == 10^18 * fluidUntil[address(msg.sender)].field_256 / totalSupply:
                    mem[352] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[320] = 32
                    mem[64] = 384
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 351]):
                            idx = idx - 1
                            continue 
                        mem[320] = idx
                        mem[416] = 'Not enough stake to propose'
                        mem[384] = 32
                        mem[64] = 448
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 415]):
                                s = s - 1
                                continue 
                            mem[384] = s
                            s = 0
                            while s < idx:
                                mem[s + 480] = mem[s + 352]
                                s = s + 32
                                continue 
                            mem[idx + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _6023 = mem[384]
                                s = 0
                                while s < mem[384]:
                                    mem[s + idx + 482] = mem[s + 416]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[384]) <= mem[384]:
                                    _8109 = mem[64]
                                    mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                    mem[64] = _6023 + idx + 482
                                    mem[_6023 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_6023 + idx + 486] = 32
                                    _8413 = mem[_8109]
                                    mem[_6023 + idx + 518] = mem[_8109]
                                    s = 0
                                    while s < _8413:
                                        mem[s + _6023 + idx + 550] = mem[s + _8109 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_8413) > _8413:
                                        mem[_8413 + _6023 + idx + 550] = 0
                                    revert with 0, 32, mem[_6023 + idx + 518 len ceil32(_8413) + 32]
                                mem[mem[384] + idx + 482] = 0
                                _8110 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _6023 + idx + 482
                                mem[_6023 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6023 + idx + 486] = 32
                                _8414 = mem[_8110]
                                mem[_6023 + idx + 518] = mem[_8110]
                                s = 0
                                while s < _8414:
                                    mem[s + _6023 + idx + 550] = mem[s + _8110 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8414) > _8414:
                                    mem[_8414 + _6023 + idx + 550] = 0
                                revert with 0, 32, mem[_6023 + idx + 518 len ceil32(_8414) + 32]
                            _6024 = mem[384]
                            s = 0
                            while s < mem[384]:
                                mem[s + idx + 482] = mem[s + 416]
                                s = s + 32
                                continue 
                            if ceil32(mem[384]) <= mem[384]:
                                _8111 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _6024 + idx + 482
                                mem[_6024 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6024 + idx + 486] = 32
                                _8415 = mem[_8111]
                                mem[_6024 + idx + 518] = mem[_8111]
                                s = 0
                                while s < _8415:
                                    mem[s + _6024 + idx + 550] = mem[s + _8111 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8415) > _8415:
                                    mem[_8415 + _6024 + idx + 550] = 0
                                revert with 0, 32, mem[_6024 + idx + 518 len ceil32(_8415) + 32]
                            mem[mem[384] + idx + 482] = 0
                            _8112 = mem[64]
                            mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                            mem[64] = _6024 + idx + 482
                            mem[_6024 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6024 + idx + 486] = 32
                            _8416 = mem[_8112]
                            mem[_6024 + idx + 518] = mem[_8112]
                            s = 0
                            while s < _8416:
                                mem[s + _6024 + idx + 550] = mem[s + _8112 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8416) > _8416:
                                mem[_8416 + _6024 + idx + 550] = 0
                            revert with 0, 32, mem[_6024 + idx + 518 len ceil32(_8416) + 32]
                        mem[448] = 0
                        mem[64] = 480
                        s = 0
                        while s < idx:
                            mem[s + 512] = mem[s + 352]
                            s = s + 32
                            continue 
                        mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _6021 = mem[448]
                            s = 0
                            while s < mem[448]:
                                mem[s + idx + 514] = mem[s + 480]
                                s = s + 32
                                continue 
                            if ceil32(mem[448]) <= mem[448]:
                                _8105 = mem[64]
                                mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                                mem[64] = _6021 + idx + 514
                                mem[_6021 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6021 + idx + 518] = 32
                                _8409 = mem[_8105]
                                mem[_6021 + idx + 550] = mem[_8105]
                                s = 0
                                while s < _8409:
                                    mem[s + _6021 + idx + 582] = mem[s + _8105 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8409) > _8409:
                                    mem[_8409 + _6021 + idx + 582] = 0
                                revert with 0, 32, mem[_6021 + idx + 550 len ceil32(_8409) + 32]
                            mem[mem[448] + idx + 514] = 0
                            _8106 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _6021 + idx + 514
                            mem[_6021 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6021 + idx + 518] = 32
                            _8410 = mem[_8106]
                            mem[_6021 + idx + 550] = mem[_8106]
                            s = 0
                            while s < _8410:
                                mem[s + _6021 + idx + 582] = mem[s + _8106 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8410) > _8410:
                                mem[_8410 + _6021 + idx + 582] = 0
                            revert with 0, 32, mem[_6021 + idx + 550 len ceil32(_8410) + 32]
                        _6022 = mem[448]
                        s = 0
                        while s < mem[448]:
                            mem[s + idx + 514] = mem[s + 480]
                            s = s + 32
                            continue 
                        if ceil32(mem[448]) <= mem[448]:
                            _8107 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _6022 + idx + 514
                            mem[_6022 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6022 + idx + 518] = 32
                            _8411 = mem[_8107]
                            mem[_6022 + idx + 550] = mem[_8107]
                            s = 0
                            while s < _8411:
                                mem[s + _6022 + idx + 582] = mem[s + _8107 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8411) > _8411:
                                mem[_8411 + _6022 + idx + 582] = 0
                            revert with 0, 32, mem[_6022 + idx + 550 len ceil32(_8411) + 32]
                        mem[mem[448] + idx + 514] = 0
                        _8108 = mem[64]
                        mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                        mem[64] = _6022 + idx + 514
                        mem[_6022 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6022 + idx + 518] = 32
                        _8412 = mem[_8108]
                        mem[_6022 + idx + 550] = mem[_8108]
                        s = 0
                        while s < _8412:
                            mem[s + _6022 + idx + 582] = mem[s + _8108 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8412) > _8412:
                            mem[_8412 + _6022 + idx + 582] = 0
                        revert with 0, 32, mem[_6022 + idx + 550 len ceil32(_8412) + 32]
                    mem[384] = 0
                    mem[448] = 'Not enough stake to propose'
                    mem[416] = 32
                    mem[64] = 480
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 447]):
                            idx = idx - 1
                            continue 
                        mem[416] = idx
                        s = 0
                        while s < 0:
                            mem[s + 512] = mem[s + 416]
                            s = s + 32
                            continue 
                        mem[512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 514] = mem[s + 448]
                            s = s + 32
                            continue 
                        mem[480] = idx + 2
                        mem[64] = idx + 514
                        mem[idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 518] = 32
                        mem[idx + 550] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 582] = mem[s + 512]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 584] = 0
                        revert with 0, 32, idx + 2, mem[idx + 582 len floor32(idx + 33)]
                    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
                if 10^18 * fluidUntil[address(msg.sender)].field_256 / totalSupply <= 5 * 10^15:
                    mem[352] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[320] = 32
                    mem[64] = 384
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 351]):
                            idx = idx - 1
                            continue 
                        mem[320] = idx
                        mem[416] = 'Not enough stake to propose'
                        mem[384] = 32
                        mem[64] = 448
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 415]):
                                s = s - 1
                                continue 
                            mem[384] = s
                            s = 0
                            while s < idx:
                                mem[s + 480] = mem[s + 352]
                                s = s + 32
                                continue 
                            mem[idx + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _6015 = mem[384]
                                s = 0
                                while s < mem[384]:
                                    mem[s + idx + 482] = mem[s + 416]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[384]) <= mem[384]:
                                    _8093 = mem[64]
                                    mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                    mem[64] = _6015 + idx + 482
                                    mem[_6015 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_6015 + idx + 486] = 32
                                    _8397 = mem[_8093]
                                    mem[_6015 + idx + 518] = mem[_8093]
                                    s = 0
                                    while s < _8397:
                                        mem[s + _6015 + idx + 550] = mem[s + _8093 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_8397) > _8397:
                                        mem[_8397 + _6015 + idx + 550] = 0
                                    revert with 0, 32, mem[_6015 + idx + 518 len ceil32(_8397) + 32]
                                mem[mem[384] + idx + 482] = 0
                                _8094 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _6015 + idx + 482
                                mem[_6015 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6015 + idx + 486] = 32
                                _8398 = mem[_8094]
                                mem[_6015 + idx + 518] = mem[_8094]
                                s = 0
                                while s < _8398:
                                    mem[s + _6015 + idx + 550] = mem[s + _8094 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8398) > _8398:
                                    mem[_8398 + _6015 + idx + 550] = 0
                                revert with 0, 32, mem[_6015 + idx + 518 len ceil32(_8398) + 32]
                            _6016 = mem[384]
                            s = 0
                            while s < mem[384]:
                                mem[s + idx + 482] = mem[s + 416]
                                s = s + 32
                                continue 
                            if ceil32(mem[384]) <= mem[384]:
                                _8095 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _6016 + idx + 482
                                mem[_6016 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6016 + idx + 486] = 32
                                _8399 = mem[_8095]
                                mem[_6016 + idx + 518] = mem[_8095]
                                s = 0
                                while s < _8399:
                                    mem[s + _6016 + idx + 550] = mem[s + _8095 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8399) > _8399:
                                    mem[_8399 + _6016 + idx + 550] = 0
                                revert with 0, 32, mem[_6016 + idx + 518 len ceil32(_8399) + 32]
                            mem[mem[384] + idx + 482] = 0
                            _8096 = mem[64]
                            mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                            mem[64] = _6016 + idx + 482
                            mem[_6016 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6016 + idx + 486] = 32
                            _8400 = mem[_8096]
                            mem[_6016 + idx + 518] = mem[_8096]
                            s = 0
                            while s < _8400:
                                mem[s + _6016 + idx + 550] = mem[s + _8096 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8400) > _8400:
                                mem[_8400 + _6016 + idx + 550] = 0
                            revert with 0, 32, mem[_6016 + idx + 518 len ceil32(_8400) + 32]
                        mem[448] = 0
                        mem[64] = 480
                        s = 0
                        while s < idx:
                            mem[s + 512] = mem[s + 352]
                            s = s + 32
                            continue 
                        mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _6013 = mem[448]
                            s = 0
                            while s < mem[448]:
                                mem[s + idx + 514] = mem[s + 480]
                                s = s + 32
                                continue 
                            if ceil32(mem[448]) <= mem[448]:
                                _8089 = mem[64]
                                mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                                mem[64] = _6013 + idx + 514
                                mem[_6013 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6013 + idx + 518] = 32
                                _8393 = mem[_8089]
                                mem[_6013 + idx + 550] = mem[_8089]
                                s = 0
                                while s < _8393:
                                    mem[s + _6013 + idx + 582] = mem[s + _8089 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8393) > _8393:
                                    mem[_8393 + _6013 + idx + 582] = 0
                                revert with 0, 32, mem[_6013 + idx + 550 len ceil32(_8393) + 32]
                            mem[mem[448] + idx + 514] = 0
                            _8090 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _6013 + idx + 514
                            mem[_6013 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6013 + idx + 518] = 32
                            _8394 = mem[_8090]
                            mem[_6013 + idx + 550] = mem[_8090]
                            s = 0
                            while s < _8394:
                                mem[s + _6013 + idx + 582] = mem[s + _8090 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8394) > _8394:
                                mem[_8394 + _6013 + idx + 582] = 0
                            revert with 0, 32, mem[_6013 + idx + 550 len ceil32(_8394) + 32]
                        _6014 = mem[448]
                        s = 0
                        while s < mem[448]:
                            mem[s + idx + 514] = mem[s + 480]
                            s = s + 32
                            continue 
                        if ceil32(mem[448]) <= mem[448]:
                            _8091 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _6014 + idx + 514
                            mem[_6014 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6014 + idx + 518] = 32
                            _8395 = mem[_8091]
                            mem[_6014 + idx + 550] = mem[_8091]
                            s = 0
                            while s < _8395:
                                mem[s + _6014 + idx + 582] = mem[s + _8091 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8395) > _8395:
                                mem[_8395 + _6014 + idx + 582] = 0
                            revert with 0, 32, mem[_6014 + idx + 550 len ceil32(_8395) + 32]
                        mem[mem[448] + idx + 514] = 0
                        _8092 = mem[64]
                        mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                        mem[64] = _6014 + idx + 514
                        mem[_6014 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6014 + idx + 518] = 32
                        _8396 = mem[_8092]
                        mem[_6014 + idx + 550] = mem[_8092]
                        s = 0
                        while s < _8396:
                            mem[s + _6014 + idx + 582] = mem[s + _8092 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8396) > _8396:
                            mem[_8396 + _6014 + idx + 582] = 0
                        revert with 0, 32, mem[_6014 + idx + 550 len ceil32(_8396) + 32]
                    mem[384] = 0
                    mem[448] = 'Not enough stake to propose'
                    mem[416] = 32
                    mem[64] = 480
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 447]):
                            idx = idx - 1
                            continue 
                        mem[416] = idx
                        s = 0
                        while s < 0:
                            mem[s + 512] = mem[s + 416]
                            s = s + 32
                            continue 
                        mem[512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 514] = mem[s + 448]
                            s = s + 32
                            continue 
                        mem[480] = idx + 2
                        mem[64] = idx + 514
                        mem[idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 518] = 32
                        mem[idx + 550] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 582] = mem[s + 512]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 584] = 0
                        revert with 0, 32, idx + 2, mem[idx + 582 len floor32(idx + 33)]
                    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
                periodFor[address(arg1)].field_0 = epoch
                periodFor[address(arg1)].field_256 = 48
                emit Proposal(48, arg1, msg.sender, epoch);
                mem[0] = arg1
                mem[32] = 15
                if periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0 < periodFor[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if epoch >= periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0:
                    mem[352] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[320] = 32
                    mem[64] = 384
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 351]):
                            idx = idx - 1
                            continue 
                        mem[320] = idx
                        mem[416] = 0x456e646564000000000000000000000000000000000000000000000000000000
                        mem[384] = 32
                        mem[64] = 448
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 415]):
                                s = s - 1
                                continue 
                            mem[384] = s
                            s = 0
                            while s < idx:
                                mem[s + 480] = mem[s + 352]
                                s = s + 32
                                continue 
                            mem[idx + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _6007 = mem[384]
                                s = 0
                                while s < mem[384]:
                                    mem[s + idx + 482] = mem[s + 416]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[384]) <= mem[384]:
                                    _8077 = mem[64]
                                    mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                    mem[64] = _6007 + idx + 482
                                    mem[_6007 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_6007 + idx + 486] = 32
                                    _8381 = mem[_8077]
                                    mem[_6007 + idx + 518] = mem[_8077]
                                    s = 0
                                    while s < _8381:
                                        mem[s + _6007 + idx + 550] = mem[s + _8077 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_8381) > _8381:
                                        mem[_8381 + _6007 + idx + 550] = 0
                                    revert with 0, 32, mem[_6007 + idx + 518 len ceil32(_8381) + 32]
                                mem[mem[384] + idx + 482] = 0
                                _8078 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _6007 + idx + 482
                                mem[_6007 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6007 + idx + 486] = 32
                                _8382 = mem[_8078]
                                mem[_6007 + idx + 518] = mem[_8078]
                                s = 0
                                while s < _8382:
                                    mem[s + _6007 + idx + 550] = mem[s + _8078 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8382) > _8382:
                                    mem[_8382 + _6007 + idx + 550] = 0
                                revert with 0, 32, mem[_6007 + idx + 518 len ceil32(_8382) + 32]
                            _6008 = mem[384]
                            s = 0
                            while s < mem[384]:
                                mem[s + idx + 482] = mem[s + 416]
                                s = s + 32
                                continue 
                            if ceil32(mem[384]) <= mem[384]:
                                _8079 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _6008 + idx + 482
                                mem[_6008 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6008 + idx + 486] = 32
                                _8383 = mem[_8079]
                                mem[_6008 + idx + 518] = mem[_8079]
                                s = 0
                                while s < _8383:
                                    mem[s + _6008 + idx + 550] = mem[s + _8079 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8383) > _8383:
                                    mem[_8383 + _6008 + idx + 550] = 0
                                revert with 0, 32, mem[_6008 + idx + 518 len ceil32(_8383) + 32]
                            mem[mem[384] + idx + 482] = 0
                            _8080 = mem[64]
                            mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                            mem[64] = _6008 + idx + 482
                            mem[_6008 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6008 + idx + 486] = 32
                            _8384 = mem[_8080]
                            mem[_6008 + idx + 518] = mem[_8080]
                            s = 0
                            while s < _8384:
                                mem[s + _6008 + idx + 550] = mem[s + _8080 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8384) > _8384:
                                mem[_8384 + _6008 + idx + 550] = 0
                            revert with 0, 32, mem[_6008 + idx + 518 len ceil32(_8384) + 32]
                        mem[448] = 0
                        mem[64] = 480
                        s = 0
                        while s < idx:
                            mem[s + 512] = mem[s + 352]
                            s = s + 32
                            continue 
                        mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _6005 = mem[448]
                            s = 0
                            while s < mem[448]:
                                mem[s + idx + 514] = mem[s + 480]
                                s = s + 32
                                continue 
                            if ceil32(mem[448]) <= mem[448]:
                                _8073 = mem[64]
                                mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                                mem[64] = _6005 + idx + 514
                                mem[_6005 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6005 + idx + 518] = 32
                                _8377 = mem[_8073]
                                mem[_6005 + idx + 550] = mem[_8073]
                                s = 0
                                while s < _8377:
                                    mem[s + _6005 + idx + 582] = mem[s + _8073 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8377) > _8377:
                                    mem[_8377 + _6005 + idx + 582] = 0
                                revert with 0, 32, mem[_6005 + idx + 550 len ceil32(_8377) + 32]
                            mem[mem[448] + idx + 514] = 0
                            _8074 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _6005 + idx + 514
                            mem[_6005 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6005 + idx + 518] = 32
                            _8378 = mem[_8074]
                            mem[_6005 + idx + 550] = mem[_8074]
                            s = 0
                            while s < _8378:
                                mem[s + _6005 + idx + 582] = mem[s + _8074 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8378) > _8378:
                                mem[_8378 + _6005 + idx + 582] = 0
                            revert with 0, 32, mem[_6005 + idx + 550 len ceil32(_8378) + 32]
                        _6006 = mem[448]
                        s = 0
                        while s < mem[448]:
                            mem[s + idx + 514] = mem[s + 480]
                            s = s + 32
                            continue 
                        if ceil32(mem[448]) <= mem[448]:
                            _8075 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _6006 + idx + 514
                            mem[_6006 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6006 + idx + 518] = 32
                            _8379 = mem[_8075]
                            mem[_6006 + idx + 550] = mem[_8075]
                            s = 0
                            while s < _8379:
                                mem[s + _6006 + idx + 582] = mem[s + _8075 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8379) > _8379:
                                mem[_8379 + _6006 + idx + 582] = 0
                            revert with 0, 32, mem[_6006 + idx + 550 len ceil32(_8379) + 32]
                        mem[mem[448] + idx + 514] = 0
                        _8076 = mem[64]
                        mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                        mem[64] = _6006 + idx + 514
                        mem[_6006 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6006 + idx + 518] = 32
                        _8380 = mem[_8076]
                        mem[_6006 + idx + 550] = mem[_8076]
                        s = 0
                        while s < _8380:
                            mem[s + _6006 + idx + 582] = mem[s + _8076 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8380) > _8380:
                            mem[_8380 + _6006 + idx + 582] = 0
                        revert with 0, 32, mem[_6006 + idx + 550 len ceil32(_8380) + 32]
                    mem[384] = 0
                    mem[448] = 0x456e646564000000000000000000000000000000000000000000000000000000
                    mem[416] = 32
                    mem[64] = 480
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 447]):
                            idx = idx - 1
                            continue 
                        mem[416] = idx
                        s = 0
                        while s < 0:
                            mem[s + 512] = mem[s + 416]
                            s = s + 32
                            continue 
                        mem[512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 514] = mem[s + 448]
                            s = s + 32
                            continue 
                        mem[480] = idx + 2
                        mem[64] = idx + 514
                        mem[idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 518] = 32
                        mem[idx + 550] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 582] = mem[s + 512]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 584] = 0
                        revert with 0, 32, idx + 2, mem[idx + 582 len floor32(idx + 33)]
                    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
    else:
        if epoch < fluidUntil[address(msg.sender)].field_512:
            mem[128] = 0x5065726d697373696f6e00000000000000000000000000000000000000000000
            mem[96] = 32
            mem[64] = 160
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 127]):
                    idx = idx - 1
                    continue 
                mem[96] = idx
                mem[192] = 0x4e6f742066726f7a656e206f72206c6f636b6564000000000000000000000000
                mem[160] = 32
                mem[64] = 224
                s = 32
                while s:
                    require s - 1 < 32
                    if not Mask(8, 248, mem[s + 191]):
                        s = s - 1
                        continue 
                    mem[160] = s
                    s = 0
                    while s < idx:
                        mem[s + 256] = mem[s + 128]
                        s = s + 32
                        continue 
                    mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    if ceil32(idx) <= idx:
                        _5991 = mem[160]
                        s = 0
                        while s < mem[160]:
                            mem[s + idx + 258] = mem[s + 192]
                            s = s + 32
                            continue 
                        if ceil32(mem[160]) <= mem[160]:
                            _8045 = mem[64]
                            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                            mem[64] = _5991 + idx + 258
                            mem[_5991 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5991 + idx + 262] = 32
                            _8349 = mem[_8045]
                            mem[_5991 + idx + 294] = mem[_8045]
                            s = 0
                            while s < _8349:
                                mem[s + _5991 + idx + 326] = mem[s + _8045 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8349) > _8349:
                                mem[_8349 + _5991 + idx + 326] = 0
                            revert with 0, 32, mem[_5991 + idx + 294 len ceil32(_8349) + 32]
                        mem[mem[160] + idx + 258] = 0
                        _8046 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _5991 + idx + 258
                        mem[_5991 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5991 + idx + 262] = 32
                        _8350 = mem[_8046]
                        mem[_5991 + idx + 294] = mem[_8046]
                        s = 0
                        while s < _8350:
                            mem[s + _5991 + idx + 326] = mem[s + _8046 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8350) > _8350:
                            mem[_8350 + _5991 + idx + 326] = 0
                        revert with 0, 32, mem[_5991 + idx + 294 len ceil32(_8350) + 32]
                    _5992 = mem[160]
                    s = 0
                    while s < mem[160]:
                        mem[s + idx + 258] = mem[s + 192]
                        s = s + 32
                        continue 
                    if ceil32(mem[160]) <= mem[160]:
                        _8047 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _5992 + idx + 258
                        mem[_5992 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5992 + idx + 262] = 32
                        _8351 = mem[_8047]
                        mem[_5992 + idx + 294] = mem[_8047]
                        s = 0
                        while s < _8351:
                            mem[s + _5992 + idx + 326] = mem[s + _8047 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8351) > _8351:
                            mem[_8351 + _5992 + idx + 326] = 0
                        revert with 0, 32, mem[_5992 + idx + 294 len ceil32(_8351) + 32]
                    mem[mem[160] + idx + 258] = 0
                    _8048 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _5992 + idx + 258
                    mem[_5992 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5992 + idx + 262] = 32
                    _8352 = mem[_8048]
                    mem[_5992 + idx + 294] = mem[_8048]
                    s = 0
                    while s < _8352:
                        mem[s + _5992 + idx + 326] = mem[s + _8048 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_8352) > _8352:
                        mem[_8352 + _5992 + idx + 326] = 0
                    revert with 0, 32, mem[_5992 + idx + 294 len ceil32(_8352) + 32]
                mem[224] = 0
                mem[64] = 256
                s = 0
                while s < idx:
                    mem[s + 288] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                if ceil32(idx) <= idx:
                    _5989 = mem[224]
                    s = 0
                    while s < mem[224]:
                        mem[s + idx + 290] = mem[s + 256]
                        s = s + 32
                        continue 
                    if ceil32(mem[224]) <= mem[224]:
                        _8041 = mem[64]
                        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                        mem[64] = _5989 + idx + 290
                        mem[_5989 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5989 + idx + 294] = 32
                        _8345 = mem[_8041]
                        mem[_5989 + idx + 326] = mem[_8041]
                        s = 0
                        while s < _8345:
                            mem[s + _5989 + idx + 358] = mem[s + _8041 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8345) > _8345:
                            mem[_8345 + _5989 + idx + 358] = 0
                        revert with 0, 32, mem[_5989 + idx + 326 len ceil32(_8345) + 32]
                    mem[mem[224] + idx + 290] = 0
                    _8042 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _5989 + idx + 290
                    mem[_5989 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5989 + idx + 294] = 32
                    _8346 = mem[_8042]
                    mem[_5989 + idx + 326] = mem[_8042]
                    s = 0
                    while s < _8346:
                        mem[s + _5989 + idx + 358] = mem[s + _8042 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_8346) > _8346:
                        mem[_8346 + _5989 + idx + 358] = 0
                    revert with 0, 32, mem[_5989 + idx + 326 len ceil32(_8346) + 32]
                _5990 = mem[224]
                s = 0
                while s < mem[224]:
                    mem[s + idx + 290] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(mem[224]) <= mem[224]:
                    _8043 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _5990 + idx + 290
                    mem[_5990 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5990 + idx + 294] = 32
                    _8347 = mem[_8043]
                    mem[_5990 + idx + 326] = mem[_8043]
                    s = 0
                    while s < _8347:
                        mem[s + _5990 + idx + 358] = mem[s + _8043 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_8347) > _8347:
                        mem[_8347 + _5990 + idx + 358] = 0
                    revert with 0, 32, mem[_5990 + idx + 326 len ceil32(_8347) + 32]
                mem[mem[224] + idx + 290] = 0
                _8044 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _5990 + idx + 290
                mem[_5990 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_5990 + idx + 294] = 32
                _8348 = mem[_8044]
                mem[_5990 + idx + 326] = mem[_8044]
                s = 0
                while s < _8348:
                    mem[s + _5990 + idx + 358] = mem[s + _8044 + 32]
                    s = s + 32
                    continue 
                if ceil32(_8348) > _8348:
                    mem[_8348 + _5990 + idx + 358] = 0
                revert with 0, 32, mem[_5990 + idx + 326 len ceil32(_8348) + 32]
            mem[160] = 0
            mem[224] = 0x4e6f742066726f7a656e206f72206c6f636b6564000000000000000000000000
            mem[192] = 32
            mem[64] = 256
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 223]):
                    idx = idx - 1
                    continue 
                mem[192] = idx
                s = 0
                while s < 0:
                    mem[s + 288] = mem[s + 192]
                    s = s + 32
                    continue 
                mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                s = 0
                while s < idx:
                    mem[s + 290] = mem[s + 224]
                    s = s + 32
                    continue 
                mem[256] = idx + 2
                mem[64] = idx + 290
                mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[idx + 294] = 32
                mem[idx + 326] = idx + 2
                s = 0
                while s < idx + 2:
                    mem[s + idx + 358] = mem[s + 288]
                    s = s + 32
                    continue 
                if floor32(idx + 33) > idx + 2:
                    mem[(2 * idx) + 360] = 0
                revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
            revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
        mem[0] = msg.sender
        mem[32] = 13
        if fluidUntil[address(msg.sender)].field_256 <= 0:
            mem[128] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
            mem[96] = 32
            mem[64] = 160
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 127]):
                    idx = idx - 1
                    continue 
                mem[96] = idx
                mem[192] = 'Must have stake' << 136
                mem[160] = 32
                mem[64] = 224
                s = 32
                while s:
                    require s - 1 < 32
                    if not Mask(8, 248, mem[s + 191]):
                        s = s - 1
                        continue 
                    mem[160] = s
                    s = 0
                    while s < idx:
                        mem[s + 256] = mem[s + 128]
                        s = s + 32
                        continue 
                    mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    if ceil32(idx) <= idx:
                        _5983 = mem[160]
                        s = 0
                        while s < mem[160]:
                            mem[s + idx + 258] = mem[s + 192]
                            s = s + 32
                            continue 
                        if ceil32(mem[160]) <= mem[160]:
                            _8029 = mem[64]
                            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                            mem[64] = _5983 + idx + 258
                            mem[_5983 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5983 + idx + 262] = 32
                            _8333 = mem[_8029]
                            mem[_5983 + idx + 294] = mem[_8029]
                            s = 0
                            while s < _8333:
                                mem[s + _5983 + idx + 326] = mem[s + _8029 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8333) > _8333:
                                mem[_8333 + _5983 + idx + 326] = 0
                            revert with 0, 32, mem[_5983 + idx + 294 len ceil32(_8333) + 32]
                        mem[mem[160] + idx + 258] = 0
                        _8030 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _5983 + idx + 258
                        mem[_5983 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5983 + idx + 262] = 32
                        _8334 = mem[_8030]
                        mem[_5983 + idx + 294] = mem[_8030]
                        s = 0
                        while s < _8334:
                            mem[s + _5983 + idx + 326] = mem[s + _8030 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8334) > _8334:
                            mem[_8334 + _5983 + idx + 326] = 0
                        revert with 0, 32, mem[_5983 + idx + 294 len ceil32(_8334) + 32]
                    _5984 = mem[160]
                    s = 0
                    while s < mem[160]:
                        mem[s + idx + 258] = mem[s + 192]
                        s = s + 32
                        continue 
                    if ceil32(mem[160]) <= mem[160]:
                        _8031 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _5984 + idx + 258
                        mem[_5984 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5984 + idx + 262] = 32
                        _8335 = mem[_8031]
                        mem[_5984 + idx + 294] = mem[_8031]
                        s = 0
                        while s < _8335:
                            mem[s + _5984 + idx + 326] = mem[s + _8031 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8335) > _8335:
                            mem[_8335 + _5984 + idx + 326] = 0
                        revert with 0, 32, mem[_5984 + idx + 294 len ceil32(_8335) + 32]
                    mem[mem[160] + idx + 258] = 0
                    _8032 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _5984 + idx + 258
                    mem[_5984 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5984 + idx + 262] = 32
                    _8336 = mem[_8032]
                    mem[_5984 + idx + 294] = mem[_8032]
                    s = 0
                    while s < _8336:
                        mem[s + _5984 + idx + 326] = mem[s + _8032 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_8336) > _8336:
                        mem[_8336 + _5984 + idx + 326] = 0
                    revert with 0, 32, mem[_5984 + idx + 294 len ceil32(_8336) + 32]
                mem[224] = 0
                mem[64] = 256
                s = 0
                while s < idx:
                    mem[s + 288] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                if ceil32(idx) <= idx:
                    _5981 = mem[224]
                    s = 0
                    while s < mem[224]:
                        mem[s + idx + 290] = mem[s + 256]
                        s = s + 32
                        continue 
                    if ceil32(mem[224]) <= mem[224]:
                        _8025 = mem[64]
                        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                        mem[64] = _5981 + idx + 290
                        mem[_5981 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5981 + idx + 294] = 32
                        _8329 = mem[_8025]
                        mem[_5981 + idx + 326] = mem[_8025]
                        s = 0
                        while s < _8329:
                            mem[s + _5981 + idx + 358] = mem[s + _8025 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8329) > _8329:
                            mem[_8329 + _5981 + idx + 358] = 0
                        revert with 0, 32, mem[_5981 + idx + 326 len ceil32(_8329) + 32]
                    mem[mem[224] + idx + 290] = 0
                    _8026 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _5981 + idx + 290
                    mem[_5981 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5981 + idx + 294] = 32
                    _8330 = mem[_8026]
                    mem[_5981 + idx + 326] = mem[_8026]
                    s = 0
                    while s < _8330:
                        mem[s + _5981 + idx + 358] = mem[s + _8026 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_8330) > _8330:
                        mem[_8330 + _5981 + idx + 358] = 0
                    revert with 0, 32, mem[_5981 + idx + 326 len ceil32(_8330) + 32]
                _5982 = mem[224]
                s = 0
                while s < mem[224]:
                    mem[s + idx + 290] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(mem[224]) <= mem[224]:
                    _8027 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _5982 + idx + 290
                    mem[_5982 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5982 + idx + 294] = 32
                    _8331 = mem[_8027]
                    mem[_5982 + idx + 326] = mem[_8027]
                    s = 0
                    while s < _8331:
                        mem[s + _5982 + idx + 358] = mem[s + _8027 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_8331) > _8331:
                        mem[_8331 + _5982 + idx + 358] = 0
                    revert with 0, 32, mem[_5982 + idx + 326 len ceil32(_8331) + 32]
                mem[mem[224] + idx + 290] = 0
                _8028 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _5982 + idx + 290
                mem[_5982 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_5982 + idx + 294] = 32
                _8332 = mem[_8028]
                mem[_5982 + idx + 326] = mem[_8028]
                s = 0
                while s < _8332:
                    mem[s + _5982 + idx + 358] = mem[s + _8028 + 32]
                    s = s + 32
                    continue 
                if ceil32(_8332) > _8332:
                    mem[_8332 + _5982 + idx + 358] = 0
                revert with 0, 32, mem[_5982 + idx + 326 len ceil32(_8332) + 32]
            mem[160] = 0
            mem[224] = 'Must have stake' << 136
            mem[192] = 32
            mem[64] = 256
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 223]):
                    idx = idx - 1
                    continue 
                mem[192] = idx
                s = 0
                while s < 0:
                    mem[s + 288] = mem[s + 192]
                    s = s + 32
                    continue 
                mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                s = 0
                while s < idx:
                    mem[s + 290] = mem[s + 224]
                    s = s + 32
                    continue 
                mem[256] = idx + 2
                mem[64] = idx + 290
                mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[idx + 294] = 32
                mem[idx + 326] = idx + 2
                s = 0
                while s < idx + 2:
                    mem[s + idx + 358] = mem[s + 288]
                    s = s + 32
                    continue 
                if floor32(idx + 33) > idx + 2:
                    mem[(2 * idx) + 360] = 0
                revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
            revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
        mem[0] = arg1
        mem[32] = 15
        if periodFor[address(arg1)].field_0:
            mem[0] = arg1
            mem[32] = 15
            if periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0 < periodFor[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if epoch >= periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0:
                mem[128] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                mem[96] = 32
                mem[64] = 160
                idx = 32
                while idx:
                    require idx - 1 < 32
                    if not Mask(8, 248, mem[idx + 127]):
                        idx = idx - 1
                        continue 
                    mem[96] = idx
                    mem[192] = 0x456e646564000000000000000000000000000000000000000000000000000000
                    mem[160] = 32
                    mem[64] = 224
                    s = 32
                    while s:
                        require s - 1 < 32
                        if not Mask(8, 248, mem[s + 191]):
                            s = s - 1
                            continue 
                        mem[160] = s
                        s = 0
                        while s < idx:
                            mem[s + 256] = mem[s + 128]
                            s = s + 32
                            continue 
                        mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _5919 = mem[160]
                            s = 0
                            while s < mem[160]:
                                mem[s + idx + 258] = mem[s + 192]
                                s = s + 32
                                continue 
                            if ceil32(mem[160]) <= mem[160]:
                                _7901 = mem[64]
                                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                                mem[64] = _5919 + idx + 258
                                mem[_5919 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5919 + idx + 262] = 32
                                _8205 = mem[_7901]
                                mem[_5919 + idx + 294] = mem[_7901]
                                s = 0
                                while s < _8205:
                                    mem[s + _5919 + idx + 326] = mem[s + _7901 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8205) > _8205:
                                    mem[_8205 + _5919 + idx + 326] = 0
                                revert with 0, 32, mem[_5919 + idx + 294 len ceil32(_8205) + 32]
                            mem[mem[160] + idx + 258] = 0
                            _7902 = mem[64]
                            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                            mem[64] = _5919 + idx + 258
                            mem[_5919 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5919 + idx + 262] = 32
                            _8206 = mem[_7902]
                            mem[_5919 + idx + 294] = mem[_7902]
                            s = 0
                            while s < _8206:
                                mem[s + _5919 + idx + 326] = mem[s + _7902 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8206) > _8206:
                                mem[_8206 + _5919 + idx + 326] = 0
                            revert with 0, 32, mem[_5919 + idx + 294 len ceil32(_8206) + 32]
                        _5920 = mem[160]
                        s = 0
                        while s < mem[160]:
                            mem[s + idx + 258] = mem[s + 192]
                            s = s + 32
                            continue 
                        if ceil32(mem[160]) <= mem[160]:
                            _7903 = mem[64]
                            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                            mem[64] = _5920 + idx + 258
                            mem[_5920 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5920 + idx + 262] = 32
                            _8207 = mem[_7903]
                            mem[_5920 + idx + 294] = mem[_7903]
                            s = 0
                            while s < _8207:
                                mem[s + _5920 + idx + 326] = mem[s + _7903 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8207) > _8207:
                                mem[_8207 + _5920 + idx + 326] = 0
                            revert with 0, 32, mem[_5920 + idx + 294 len ceil32(_8207) + 32]
                        mem[mem[160] + idx + 258] = 0
                        _7904 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _5920 + idx + 258
                        mem[_5920 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5920 + idx + 262] = 32
                        _8208 = mem[_7904]
                        mem[_5920 + idx + 294] = mem[_7904]
                        s = 0
                        while s < _8208:
                            mem[s + _5920 + idx + 326] = mem[s + _7904 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8208) > _8208:
                            mem[_8208 + _5920 + idx + 326] = 0
                        revert with 0, 32, mem[_5920 + idx + 294 len ceil32(_8208) + 32]
                    mem[224] = 0
                    mem[64] = 256
                    s = 0
                    while s < idx:
                        mem[s + 288] = mem[s + 128]
                        s = s + 32
                        continue 
                    mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    if ceil32(idx) <= idx:
                        _5917 = mem[224]
                        s = 0
                        while s < mem[224]:
                            mem[s + idx + 290] = mem[s + 256]
                            s = s + 32
                            continue 
                        if ceil32(mem[224]) <= mem[224]:
                            _7897 = mem[64]
                            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                            mem[64] = _5917 + idx + 290
                            mem[_5917 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5917 + idx + 294] = 32
                            _8201 = mem[_7897]
                            mem[_5917 + idx + 326] = mem[_7897]
                            s = 0
                            while s < _8201:
                                mem[s + _5917 + idx + 358] = mem[s + _7897 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8201) > _8201:
                                mem[_8201 + _5917 + idx + 358] = 0
                            revert with 0, 32, mem[_5917 + idx + 326 len ceil32(_8201) + 32]
                        mem[mem[224] + idx + 290] = 0
                        _7898 = mem[64]
                        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                        mem[64] = _5917 + idx + 290
                        mem[_5917 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5917 + idx + 294] = 32
                        _8202 = mem[_7898]
                        mem[_5917 + idx + 326] = mem[_7898]
                        s = 0
                        while s < _8202:
                            mem[s + _5917 + idx + 358] = mem[s + _7898 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8202) > _8202:
                            mem[_8202 + _5917 + idx + 358] = 0
                        revert with 0, 32, mem[_5917 + idx + 326 len ceil32(_8202) + 32]
                    _5918 = mem[224]
                    s = 0
                    while s < mem[224]:
                        mem[s + idx + 290] = mem[s + 256]
                        s = s + 32
                        continue 
                    if ceil32(mem[224]) <= mem[224]:
                        _7899 = mem[64]
                        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                        mem[64] = _5918 + idx + 290
                        mem[_5918 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5918 + idx + 294] = 32
                        _8203 = mem[_7899]
                        mem[_5918 + idx + 326] = mem[_7899]
                        s = 0
                        while s < _8203:
                            mem[s + _5918 + idx + 358] = mem[s + _7899 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8203) > _8203:
                            mem[_8203 + _5918 + idx + 358] = 0
                        revert with 0, 32, mem[_5918 + idx + 326 len ceil32(_8203) + 32]
                    mem[mem[224] + idx + 290] = 0
                    _7900 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _5918 + idx + 290
                    mem[_5918 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5918 + idx + 294] = 32
                    _8204 = mem[_7900]
                    mem[_5918 + idx + 326] = mem[_7900]
                    s = 0
                    while s < _8204:
                        mem[s + _5918 + idx + 358] = mem[s + _7900 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_8204) > _8204:
                        mem[_8204 + _5918 + idx + 358] = 0
                    revert with 0, 32, mem[_5918 + idx + 326 len ceil32(_8204) + 32]
                mem[160] = 0
                mem[224] = 0x456e646564000000000000000000000000000000000000000000000000000000
                mem[192] = 32
                mem[64] = 256
                idx = 32
                while idx:
                    require idx - 1 < 32
                    if not Mask(8, 248, mem[idx + 223]):
                        idx = idx - 1
                        continue 
                    mem[192] = idx
                    s = 0
                    while s < 0:
                        mem[s + 288] = mem[s + 192]
                        s = s + 32
                        continue 
                    mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    s = 0
                    while s < idx:
                        mem[s + 290] = mem[s + 224]
                        s = s + 32
                        continue 
                    mem[256] = idx + 2
                    mem[64] = idx + 290
                    mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[idx + 294] = 32
                    mem[idx + 326] = idx + 2
                    s = 0
                    while s < idx + 2:
                        mem[s + idx + 358] = mem[s + 288]
                        s = s + 32
                        continue 
                    if floor32(idx + 33) > idx + 2:
                        mem[(2 * idx) + 360] = 0
                    revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
                revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
        else:
            if not totalBonded:
                mem[128] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                mem[96] = 32
                mem[64] = 160
                idx = 32
                while idx:
                    require idx - 1 < 32
                    if not Mask(8, 248, mem[idx + 127]):
                        idx = idx - 1
                        continue 
                    mem[96] = idx
                    mem[192] = 'Not enough stake to propose'
                    mem[160] = 32
                    mem[64] = 224
                    s = 32
                    while s:
                        require s - 1 < 32
                        if not Mask(8, 248, mem[s + 191]):
                            s = s - 1
                            continue 
                        mem[160] = s
                        s = 0
                        while s < idx:
                            mem[s + 256] = mem[s + 128]
                            s = s + 32
                            continue 
                        mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _5975 = mem[160]
                            s = 0
                            while s < mem[160]:
                                mem[s + idx + 258] = mem[s + 192]
                                s = s + 32
                                continue 
                            if ceil32(mem[160]) <= mem[160]:
                                _8013 = mem[64]
                                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                                mem[64] = _5975 + idx + 258
                                mem[_5975 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5975 + idx + 262] = 32
                                _8317 = mem[_8013]
                                mem[_5975 + idx + 294] = mem[_8013]
                                s = 0
                                while s < _8317:
                                    mem[s + _5975 + idx + 326] = mem[s + _8013 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8317) > _8317:
                                    mem[_8317 + _5975 + idx + 326] = 0
                                revert with 0, 32, mem[_5975 + idx + 294 len ceil32(_8317) + 32]
                            mem[mem[160] + idx + 258] = 0
                            _8014 = mem[64]
                            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                            mem[64] = _5975 + idx + 258
                            mem[_5975 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5975 + idx + 262] = 32
                            _8318 = mem[_8014]
                            mem[_5975 + idx + 294] = mem[_8014]
                            s = 0
                            while s < _8318:
                                mem[s + _5975 + idx + 326] = mem[s + _8014 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8318) > _8318:
                                mem[_8318 + _5975 + idx + 326] = 0
                            revert with 0, 32, mem[_5975 + idx + 294 len ceil32(_8318) + 32]
                        _5976 = mem[160]
                        s = 0
                        while s < mem[160]:
                            mem[s + idx + 258] = mem[s + 192]
                            s = s + 32
                            continue 
                        if ceil32(mem[160]) <= mem[160]:
                            _8015 = mem[64]
                            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                            mem[64] = _5976 + idx + 258
                            mem[_5976 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5976 + idx + 262] = 32
                            _8319 = mem[_8015]
                            mem[_5976 + idx + 294] = mem[_8015]
                            s = 0
                            while s < _8319:
                                mem[s + _5976 + idx + 326] = mem[s + _8015 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8319) > _8319:
                                mem[_8319 + _5976 + idx + 326] = 0
                            revert with 0, 32, mem[_5976 + idx + 294 len ceil32(_8319) + 32]
                        mem[mem[160] + idx + 258] = 0
                        _8016 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _5976 + idx + 258
                        mem[_5976 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5976 + idx + 262] = 32
                        _8320 = mem[_8016]
                        mem[_5976 + idx + 294] = mem[_8016]
                        s = 0
                        while s < _8320:
                            mem[s + _5976 + idx + 326] = mem[s + _8016 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8320) > _8320:
                            mem[_8320 + _5976 + idx + 326] = 0
                        revert with 0, 32, mem[_5976 + idx + 294 len ceil32(_8320) + 32]
                    mem[224] = 0
                    mem[64] = 256
                    s = 0
                    while s < idx:
                        mem[s + 288] = mem[s + 128]
                        s = s + 32
                        continue 
                    mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    if ceil32(idx) <= idx:
                        _5973 = mem[224]
                        s = 0
                        while s < mem[224]:
                            mem[s + idx + 290] = mem[s + 256]
                            s = s + 32
                            continue 
                        if ceil32(mem[224]) <= mem[224]:
                            _8009 = mem[64]
                            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                            mem[64] = _5973 + idx + 290
                            mem[_5973 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5973 + idx + 294] = 32
                            _8313 = mem[_8009]
                            mem[_5973 + idx + 326] = mem[_8009]
                            s = 0
                            while s < _8313:
                                mem[s + _5973 + idx + 358] = mem[s + _8009 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8313) > _8313:
                                mem[_8313 + _5973 + idx + 358] = 0
                            revert with 0, 32, mem[_5973 + idx + 326 len ceil32(_8313) + 32]
                        mem[mem[224] + idx + 290] = 0
                        _8010 = mem[64]
                        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                        mem[64] = _5973 + idx + 290
                        mem[_5973 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5973 + idx + 294] = 32
                        _8314 = mem[_8010]
                        mem[_5973 + idx + 326] = mem[_8010]
                        s = 0
                        while s < _8314:
                            mem[s + _5973 + idx + 358] = mem[s + _8010 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8314) > _8314:
                            mem[_8314 + _5973 + idx + 358] = 0
                        revert with 0, 32, mem[_5973 + idx + 326 len ceil32(_8314) + 32]
                    _5974 = mem[224]
                    s = 0
                    while s < mem[224]:
                        mem[s + idx + 290] = mem[s + 256]
                        s = s + 32
                        continue 
                    if ceil32(mem[224]) <= mem[224]:
                        _8011 = mem[64]
                        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                        mem[64] = _5974 + idx + 290
                        mem[_5974 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5974 + idx + 294] = 32
                        _8315 = mem[_8011]
                        mem[_5974 + idx + 326] = mem[_8011]
                        s = 0
                        while s < _8315:
                            mem[s + _5974 + idx + 358] = mem[s + _8011 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8315) > _8315:
                            mem[_8315 + _5974 + idx + 358] = 0
                        revert with 0, 32, mem[_5974 + idx + 326 len ceil32(_8315) + 32]
                    mem[mem[224] + idx + 290] = 0
                    _8012 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _5974 + idx + 290
                    mem[_5974 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5974 + idx + 294] = 32
                    _8316 = mem[_8012]
                    mem[_5974 + idx + 326] = mem[_8012]
                    s = 0
                    while s < _8316:
                        mem[s + _5974 + idx + 358] = mem[s + _8012 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_8316) > _8316:
                        mem[_8316 + _5974 + idx + 358] = 0
                    revert with 0, 32, mem[_5974 + idx + 326 len ceil32(_8316) + 32]
                mem[160] = 0
                mem[224] = 'Not enough stake to propose'
                mem[192] = 32
                mem[64] = 256
                idx = 32
                while idx:
                    require idx - 1 < 32
                    if not Mask(8, 248, mem[idx + 223]):
                        idx = idx - 1
                        continue 
                    mem[192] = idx
                    s = 0
                    while s < 0:
                        mem[s + 288] = mem[s + 192]
                        s = s + 32
                        continue 
                    mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    s = 0
                    while s < idx:
                        mem[s + 290] = mem[s + 224]
                        s = s + 32
                        continue 
                    mem[256] = idx + 2
                    mem[64] = idx + 290
                    mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[idx + 294] = 32
                    mem[idx + 326] = idx + 2
                    s = 0
                    while s < idx + 2:
                        mem[s + idx + 358] = mem[s + 288]
                        s = s + 32
                        continue 
                    if floor32(idx + 33) > idx + 2:
                        mem[(2 * idx) + 360] = 0
                    revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
                revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
            mem[96] = 0
            mem[0] = msg.sender
            mem[32] = 13
            mem[128] = 0
            if not fluidUntil[address(msg.sender)].field_256:
                mem[192] = 26
                mem[224] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[160] = 0 / totalSupply
                mem[256] = 0
                mem[288] = 5 * 10^15
                if 5 * 10^15 == 0 / totalSupply:
                    mem[352] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[320] = 32
                    mem[64] = 384
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 351]):
                            idx = idx - 1
                            continue 
                        mem[320] = idx
                        mem[416] = 'Not enough stake to propose'
                        mem[384] = 32
                        mem[64] = 448
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 415]):
                                s = s - 1
                                continue 
                            mem[384] = s
                            s = 0
                            while s < idx:
                                mem[s + 480] = mem[s + 352]
                                s = s + 32
                                continue 
                            mem[idx + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _5967 = mem[384]
                                s = 0
                                while s < mem[384]:
                                    mem[s + idx + 482] = mem[s + 416]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[384]) <= mem[384]:
                                    _7997 = mem[64]
                                    mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                    mem[64] = _5967 + idx + 482
                                    mem[_5967 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5967 + idx + 486] = 32
                                    _8301 = mem[_7997]
                                    mem[_5967 + idx + 518] = mem[_7997]
                                    s = 0
                                    while s < _8301:
                                        mem[s + _5967 + idx + 550] = mem[s + _7997 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_8301) > _8301:
                                        mem[_8301 + _5967 + idx + 550] = 0
                                    revert with 0, 32, mem[_5967 + idx + 518 len ceil32(_8301) + 32]
                                mem[mem[384] + idx + 482] = 0
                                _7998 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _5967 + idx + 482
                                mem[_5967 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5967 + idx + 486] = 32
                                _8302 = mem[_7998]
                                mem[_5967 + idx + 518] = mem[_7998]
                                s = 0
                                while s < _8302:
                                    mem[s + _5967 + idx + 550] = mem[s + _7998 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8302) > _8302:
                                    mem[_8302 + _5967 + idx + 550] = 0
                                revert with 0, 32, mem[_5967 + idx + 518 len ceil32(_8302) + 32]
                            _5968 = mem[384]
                            s = 0
                            while s < mem[384]:
                                mem[s + idx + 482] = mem[s + 416]
                                s = s + 32
                                continue 
                            if ceil32(mem[384]) <= mem[384]:
                                _7999 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _5968 + idx + 482
                                mem[_5968 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5968 + idx + 486] = 32
                                _8303 = mem[_7999]
                                mem[_5968 + idx + 518] = mem[_7999]
                                s = 0
                                while s < _8303:
                                    mem[s + _5968 + idx + 550] = mem[s + _7999 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8303) > _8303:
                                    mem[_8303 + _5968 + idx + 550] = 0
                                revert with 0, 32, mem[_5968 + idx + 518 len ceil32(_8303) + 32]
                            mem[mem[384] + idx + 482] = 0
                            _8000 = mem[64]
                            mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                            mem[64] = _5968 + idx + 482
                            mem[_5968 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5968 + idx + 486] = 32
                            _8304 = mem[_8000]
                            mem[_5968 + idx + 518] = mem[_8000]
                            s = 0
                            while s < _8304:
                                mem[s + _5968 + idx + 550] = mem[s + _8000 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8304) > _8304:
                                mem[_8304 + _5968 + idx + 550] = 0
                            revert with 0, 32, mem[_5968 + idx + 518 len ceil32(_8304) + 32]
                        mem[448] = 0
                        mem[64] = 480
                        s = 0
                        while s < idx:
                            mem[s + 512] = mem[s + 352]
                            s = s + 32
                            continue 
                        mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _5965 = mem[448]
                            s = 0
                            while s < mem[448]:
                                mem[s + idx + 514] = mem[s + 480]
                                s = s + 32
                                continue 
                            if ceil32(mem[448]) <= mem[448]:
                                _7993 = mem[64]
                                mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                                mem[64] = _5965 + idx + 514
                                mem[_5965 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5965 + idx + 518] = 32
                                _8297 = mem[_7993]
                                mem[_5965 + idx + 550] = mem[_7993]
                                s = 0
                                while s < _8297:
                                    mem[s + _5965 + idx + 582] = mem[s + _7993 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8297) > _8297:
                                    mem[_8297 + _5965 + idx + 582] = 0
                                revert with 0, 32, mem[_5965 + idx + 550 len ceil32(_8297) + 32]
                            mem[mem[448] + idx + 514] = 0
                            _7994 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _5965 + idx + 514
                            mem[_5965 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5965 + idx + 518] = 32
                            _8298 = mem[_7994]
                            mem[_5965 + idx + 550] = mem[_7994]
                            s = 0
                            while s < _8298:
                                mem[s + _5965 + idx + 582] = mem[s + _7994 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8298) > _8298:
                                mem[_8298 + _5965 + idx + 582] = 0
                            revert with 0, 32, mem[_5965 + idx + 550 len ceil32(_8298) + 32]
                        _5966 = mem[448]
                        s = 0
                        while s < mem[448]:
                            mem[s + idx + 514] = mem[s + 480]
                            s = s + 32
                            continue 
                        if ceil32(mem[448]) <= mem[448]:
                            _7995 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _5966 + idx + 514
                            mem[_5966 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5966 + idx + 518] = 32
                            _8299 = mem[_7995]
                            mem[_5966 + idx + 550] = mem[_7995]
                            s = 0
                            while s < _8299:
                                mem[s + _5966 + idx + 582] = mem[s + _7995 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8299) > _8299:
                                mem[_8299 + _5966 + idx + 582] = 0
                            revert with 0, 32, mem[_5966 + idx + 550 len ceil32(_8299) + 32]
                        mem[mem[448] + idx + 514] = 0
                        _7996 = mem[64]
                        mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                        mem[64] = _5966 + idx + 514
                        mem[_5966 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5966 + idx + 518] = 32
                        _8300 = mem[_7996]
                        mem[_5966 + idx + 550] = mem[_7996]
                        s = 0
                        while s < _8300:
                            mem[s + _5966 + idx + 582] = mem[s + _7996 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8300) > _8300:
                            mem[_8300 + _5966 + idx + 582] = 0
                        revert with 0, 32, mem[_5966 + idx + 550 len ceil32(_8300) + 32]
                    mem[384] = 0
                    mem[448] = 'Not enough stake to propose'
                    mem[416] = 32
                    mem[64] = 480
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 447]):
                            idx = idx - 1
                            continue 
                        mem[416] = idx
                        s = 0
                        while s < 0:
                            mem[s + 512] = mem[s + 416]
                            s = s + 32
                            continue 
                        mem[512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 514] = mem[s + 448]
                            s = s + 32
                            continue 
                        mem[480] = idx + 2
                        mem[64] = idx + 514
                        mem[idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 518] = 32
                        mem[idx + 550] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 582] = mem[s + 512]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 584] = 0
                        revert with 0, 32, idx + 2, mem[idx + 582 len floor32(idx + 33)]
                    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
                if 0 / totalSupply <= 5 * 10^15:
                    mem[352] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[320] = 32
                    mem[64] = 384
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 351]):
                            idx = idx - 1
                            continue 
                        mem[320] = idx
                        mem[416] = 'Not enough stake to propose'
                        mem[384] = 32
                        mem[64] = 448
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 415]):
                                s = s - 1
                                continue 
                            mem[384] = s
                            s = 0
                            while s < idx:
                                mem[s + 480] = mem[s + 352]
                                s = s + 32
                                continue 
                            mem[idx + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _5959 = mem[384]
                                s = 0
                                while s < mem[384]:
                                    mem[s + idx + 482] = mem[s + 416]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[384]) <= mem[384]:
                                    _7981 = mem[64]
                                    mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                    mem[64] = _5959 + idx + 482
                                    mem[_5959 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5959 + idx + 486] = 32
                                    _8285 = mem[_7981]
                                    mem[_5959 + idx + 518] = mem[_7981]
                                    s = 0
                                    while s < _8285:
                                        mem[s + _5959 + idx + 550] = mem[s + _7981 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_8285) > _8285:
                                        mem[_8285 + _5959 + idx + 550] = 0
                                    revert with 0, 32, mem[_5959 + idx + 518 len ceil32(_8285) + 32]
                                mem[mem[384] + idx + 482] = 0
                                _7982 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _5959 + idx + 482
                                mem[_5959 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5959 + idx + 486] = 32
                                _8286 = mem[_7982]
                                mem[_5959 + idx + 518] = mem[_7982]
                                s = 0
                                while s < _8286:
                                    mem[s + _5959 + idx + 550] = mem[s + _7982 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8286) > _8286:
                                    mem[_8286 + _5959 + idx + 550] = 0
                                revert with 0, 32, mem[_5959 + idx + 518 len ceil32(_8286) + 32]
                            _5960 = mem[384]
                            s = 0
                            while s < mem[384]:
                                mem[s + idx + 482] = mem[s + 416]
                                s = s + 32
                                continue 
                            if ceil32(mem[384]) <= mem[384]:
                                _7983 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _5960 + idx + 482
                                mem[_5960 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5960 + idx + 486] = 32
                                _8287 = mem[_7983]
                                mem[_5960 + idx + 518] = mem[_7983]
                                s = 0
                                while s < _8287:
                                    mem[s + _5960 + idx + 550] = mem[s + _7983 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8287) > _8287:
                                    mem[_8287 + _5960 + idx + 550] = 0
                                revert with 0, 32, mem[_5960 + idx + 518 len ceil32(_8287) + 32]
                            mem[mem[384] + idx + 482] = 0
                            _7984 = mem[64]
                            mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                            mem[64] = _5960 + idx + 482
                            mem[_5960 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5960 + idx + 486] = 32
                            _8288 = mem[_7984]
                            mem[_5960 + idx + 518] = mem[_7984]
                            s = 0
                            while s < _8288:
                                mem[s + _5960 + idx + 550] = mem[s + _7984 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8288) > _8288:
                                mem[_8288 + _5960 + idx + 550] = 0
                            revert with 0, 32, mem[_5960 + idx + 518 len ceil32(_8288) + 32]
                        mem[448] = 0
                        mem[64] = 480
                        s = 0
                        while s < idx:
                            mem[s + 512] = mem[s + 352]
                            s = s + 32
                            continue 
                        mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _5957 = mem[448]
                            s = 0
                            while s < mem[448]:
                                mem[s + idx + 514] = mem[s + 480]
                                s = s + 32
                                continue 
                            if ceil32(mem[448]) <= mem[448]:
                                _7977 = mem[64]
                                mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                                mem[64] = _5957 + idx + 514
                                mem[_5957 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5957 + idx + 518] = 32
                                _8281 = mem[_7977]
                                mem[_5957 + idx + 550] = mem[_7977]
                                s = 0
                                while s < _8281:
                                    mem[s + _5957 + idx + 582] = mem[s + _7977 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8281) > _8281:
                                    mem[_8281 + _5957 + idx + 582] = 0
                                revert with 0, 32, mem[_5957 + idx + 550 len ceil32(_8281) + 32]
                            mem[mem[448] + idx + 514] = 0
                            _7978 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _5957 + idx + 514
                            mem[_5957 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5957 + idx + 518] = 32
                            _8282 = mem[_7978]
                            mem[_5957 + idx + 550] = mem[_7978]
                            s = 0
                            while s < _8282:
                                mem[s + _5957 + idx + 582] = mem[s + _7978 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8282) > _8282:
                                mem[_8282 + _5957 + idx + 582] = 0
                            revert with 0, 32, mem[_5957 + idx + 550 len ceil32(_8282) + 32]
                        _5958 = mem[448]
                        s = 0
                        while s < mem[448]:
                            mem[s + idx + 514] = mem[s + 480]
                            s = s + 32
                            continue 
                        if ceil32(mem[448]) <= mem[448]:
                            _7979 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _5958 + idx + 514
                            mem[_5958 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5958 + idx + 518] = 32
                            _8283 = mem[_7979]
                            mem[_5958 + idx + 550] = mem[_7979]
                            s = 0
                            while s < _8283:
                                mem[s + _5958 + idx + 582] = mem[s + _7979 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8283) > _8283:
                                mem[_8283 + _5958 + idx + 582] = 0
                            revert with 0, 32, mem[_5958 + idx + 550 len ceil32(_8283) + 32]
                        mem[mem[448] + idx + 514] = 0
                        _7980 = mem[64]
                        mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                        mem[64] = _5958 + idx + 514
                        mem[_5958 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5958 + idx + 518] = 32
                        _8284 = mem[_7980]
                        mem[_5958 + idx + 550] = mem[_7980]
                        s = 0
                        while s < _8284:
                            mem[s + _5958 + idx + 582] = mem[s + _7980 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8284) > _8284:
                            mem[_8284 + _5958 + idx + 582] = 0
                        revert with 0, 32, mem[_5958 + idx + 550 len ceil32(_8284) + 32]
                    mem[384] = 0
                    mem[448] = 'Not enough stake to propose'
                    mem[416] = 32
                    mem[64] = 480
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 447]):
                            idx = idx - 1
                            continue 
                        mem[416] = idx
                        s = 0
                        while s < 0:
                            mem[s + 512] = mem[s + 416]
                            s = s + 32
                            continue 
                        mem[512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 514] = mem[s + 448]
                            s = s + 32
                            continue 
                        mem[480] = idx + 2
                        mem[64] = idx + 514
                        mem[idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 518] = 32
                        mem[idx + 550] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 582] = mem[s + 512]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 584] = 0
                        revert with 0, 32, idx + 2, mem[idx + 582 len floor32(idx + 33)]
                    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
                periodFor[address(arg1)].field_0 = epoch
                periodFor[address(arg1)].field_256 = 48
                emit Proposal(48, arg1, msg.sender, epoch);
                mem[0] = arg1
                mem[32] = 15
                if periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0 < periodFor[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if epoch >= periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0:
                    mem[352] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[320] = 32
                    mem[64] = 384
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 351]):
                            idx = idx - 1
                            continue 
                        mem[320] = idx
                        mem[416] = 0x456e646564000000000000000000000000000000000000000000000000000000
                        mem[384] = 32
                        mem[64] = 448
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 415]):
                                s = s - 1
                                continue 
                            mem[384] = s
                            s = 0
                            while s < idx:
                                mem[s + 480] = mem[s + 352]
                                s = s + 32
                                continue 
                            mem[idx + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _5951 = mem[384]
                                s = 0
                                while s < mem[384]:
                                    mem[s + idx + 482] = mem[s + 416]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[384]) <= mem[384]:
                                    _7965 = mem[64]
                                    mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                    mem[64] = _5951 + idx + 482
                                    mem[_5951 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5951 + idx + 486] = 32
                                    _8269 = mem[_7965]
                                    mem[_5951 + idx + 518] = mem[_7965]
                                    s = 0
                                    while s < _8269:
                                        mem[s + _5951 + idx + 550] = mem[s + _7965 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_8269) > _8269:
                                        mem[_8269 + _5951 + idx + 550] = 0
                                    revert with 0, 32, mem[_5951 + idx + 518 len ceil32(_8269) + 32]
                                mem[mem[384] + idx + 482] = 0
                                _7966 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _5951 + idx + 482
                                mem[_5951 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5951 + idx + 486] = 32
                                _8270 = mem[_7966]
                                mem[_5951 + idx + 518] = mem[_7966]
                                s = 0
                                while s < _8270:
                                    mem[s + _5951 + idx + 550] = mem[s + _7966 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8270) > _8270:
                                    mem[_8270 + _5951 + idx + 550] = 0
                                revert with 0, 32, mem[_5951 + idx + 518 len ceil32(_8270) + 32]
                            _5952 = mem[384]
                            s = 0
                            while s < mem[384]:
                                mem[s + idx + 482] = mem[s + 416]
                                s = s + 32
                                continue 
                            if ceil32(mem[384]) <= mem[384]:
                                _7967 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _5952 + idx + 482
                                mem[_5952 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5952 + idx + 486] = 32
                                _8271 = mem[_7967]
                                mem[_5952 + idx + 518] = mem[_7967]
                                s = 0
                                while s < _8271:
                                    mem[s + _5952 + idx + 550] = mem[s + _7967 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8271) > _8271:
                                    mem[_8271 + _5952 + idx + 550] = 0
                                revert with 0, 32, mem[_5952 + idx + 518 len ceil32(_8271) + 32]
                            mem[mem[384] + idx + 482] = 0
                            _7968 = mem[64]
                            mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                            mem[64] = _5952 + idx + 482
                            mem[_5952 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5952 + idx + 486] = 32
                            _8272 = mem[_7968]
                            mem[_5952 + idx + 518] = mem[_7968]
                            s = 0
                            while s < _8272:
                                mem[s + _5952 + idx + 550] = mem[s + _7968 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8272) > _8272:
                                mem[_8272 + _5952 + idx + 550] = 0
                            revert with 0, 32, mem[_5952 + idx + 518 len ceil32(_8272) + 32]
                        mem[448] = 0
                        mem[64] = 480
                        s = 0
                        while s < idx:
                            mem[s + 512] = mem[s + 352]
                            s = s + 32
                            continue 
                        mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _5949 = mem[448]
                            s = 0
                            while s < mem[448]:
                                mem[s + idx + 514] = mem[s + 480]
                                s = s + 32
                                continue 
                            if ceil32(mem[448]) <= mem[448]:
                                _7961 = mem[64]
                                mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                                mem[64] = _5949 + idx + 514
                                mem[_5949 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5949 + idx + 518] = 32
                                _8265 = mem[_7961]
                                mem[_5949 + idx + 550] = mem[_7961]
                                s = 0
                                while s < _8265:
                                    mem[s + _5949 + idx + 582] = mem[s + _7961 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8265) > _8265:
                                    mem[_8265 + _5949 + idx + 582] = 0
                                revert with 0, 32, mem[_5949 + idx + 550 len ceil32(_8265) + 32]
                            mem[mem[448] + idx + 514] = 0
                            _7962 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _5949 + idx + 514
                            mem[_5949 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5949 + idx + 518] = 32
                            _8266 = mem[_7962]
                            mem[_5949 + idx + 550] = mem[_7962]
                            s = 0
                            while s < _8266:
                                mem[s + _5949 + idx + 582] = mem[s + _7962 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8266) > _8266:
                                mem[_8266 + _5949 + idx + 582] = 0
                            revert with 0, 32, mem[_5949 + idx + 550 len ceil32(_8266) + 32]
                        _5950 = mem[448]
                        s = 0
                        while s < mem[448]:
                            mem[s + idx + 514] = mem[s + 480]
                            s = s + 32
                            continue 
                        if ceil32(mem[448]) <= mem[448]:
                            _7963 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _5950 + idx + 514
                            mem[_5950 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5950 + idx + 518] = 32
                            _8267 = mem[_7963]
                            mem[_5950 + idx + 550] = mem[_7963]
                            s = 0
                            while s < _8267:
                                mem[s + _5950 + idx + 582] = mem[s + _7963 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8267) > _8267:
                                mem[_8267 + _5950 + idx + 582] = 0
                            revert with 0, 32, mem[_5950 + idx + 550 len ceil32(_8267) + 32]
                        mem[mem[448] + idx + 514] = 0
                        _7964 = mem[64]
                        mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                        mem[64] = _5950 + idx + 514
                        mem[_5950 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5950 + idx + 518] = 32
                        _8268 = mem[_7964]
                        mem[_5950 + idx + 550] = mem[_7964]
                        s = 0
                        while s < _8268:
                            mem[s + _5950 + idx + 582] = mem[s + _7964 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8268) > _8268:
                            mem[_8268 + _5950 + idx + 582] = 0
                        revert with 0, 32, mem[_5950 + idx + 550 len ceil32(_8268) + 32]
                    mem[384] = 0
                    mem[448] = 0x456e646564000000000000000000000000000000000000000000000000000000
                    mem[416] = 32
                    mem[64] = 480
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 447]):
                            idx = idx - 1
                            continue 
                        mem[416] = idx
                        s = 0
                        while s < 0:
                            mem[s + 512] = mem[s + 416]
                            s = s + 32
                            continue 
                        mem[512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 514] = mem[s + 448]
                            s = s + 32
                            continue 
                        mem[480] = idx + 2
                        mem[64] = idx + 514
                        mem[idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 518] = 32
                        mem[idx + 550] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 582] = mem[s + 512]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 584] = 0
                        revert with 0, 32, idx + 2, mem[idx + 582 len floor32(idx + 33)]
                    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
            else:
                if 10^18 * fluidUntil[address(msg.sender)].field_256 / fluidUntil[address(msg.sender)].field_256 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[192] = 26
                mem[224] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[160] = 10^18 * fluidUntil[address(msg.sender)].field_256 / totalSupply
                mem[256] = 0
                mem[288] = 5 * 10^15
                if 5 * 10^15 == 10^18 * fluidUntil[address(msg.sender)].field_256 / totalSupply:
                    mem[352] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[320] = 32
                    mem[64] = 384
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 351]):
                            idx = idx - 1
                            continue 
                        mem[320] = idx
                        mem[416] = 'Not enough stake to propose'
                        mem[384] = 32
                        mem[64] = 448
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 415]):
                                s = s - 1
                                continue 
                            mem[384] = s
                            s = 0
                            while s < idx:
                                mem[s + 480] = mem[s + 352]
                                s = s + 32
                                continue 
                            mem[idx + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _5943 = mem[384]
                                s = 0
                                while s < mem[384]:
                                    mem[s + idx + 482] = mem[s + 416]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[384]) <= mem[384]:
                                    _7949 = mem[64]
                                    mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                    mem[64] = _5943 + idx + 482
                                    mem[_5943 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5943 + idx + 486] = 32
                                    _8253 = mem[_7949]
                                    mem[_5943 + idx + 518] = mem[_7949]
                                    s = 0
                                    while s < _8253:
                                        mem[s + _5943 + idx + 550] = mem[s + _7949 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_8253) > _8253:
                                        mem[_8253 + _5943 + idx + 550] = 0
                                    revert with 0, 32, mem[_5943 + idx + 518 len ceil32(_8253) + 32]
                                mem[mem[384] + idx + 482] = 0
                                _7950 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _5943 + idx + 482
                                mem[_5943 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5943 + idx + 486] = 32
                                _8254 = mem[_7950]
                                mem[_5943 + idx + 518] = mem[_7950]
                                s = 0
                                while s < _8254:
                                    mem[s + _5943 + idx + 550] = mem[s + _7950 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8254) > _8254:
                                    mem[_8254 + _5943 + idx + 550] = 0
                                revert with 0, 32, mem[_5943 + idx + 518 len ceil32(_8254) + 32]
                            _5944 = mem[384]
                            s = 0
                            while s < mem[384]:
                                mem[s + idx + 482] = mem[s + 416]
                                s = s + 32
                                continue 
                            if ceil32(mem[384]) <= mem[384]:
                                _7951 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _5944 + idx + 482
                                mem[_5944 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5944 + idx + 486] = 32
                                _8255 = mem[_7951]
                                mem[_5944 + idx + 518] = mem[_7951]
                                s = 0
                                while s < _8255:
                                    mem[s + _5944 + idx + 550] = mem[s + _7951 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8255) > _8255:
                                    mem[_8255 + _5944 + idx + 550] = 0
                                revert with 0, 32, mem[_5944 + idx + 518 len ceil32(_8255) + 32]
                            mem[mem[384] + idx + 482] = 0
                            _7952 = mem[64]
                            mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                            mem[64] = _5944 + idx + 482
                            mem[_5944 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5944 + idx + 486] = 32
                            _8256 = mem[_7952]
                            mem[_5944 + idx + 518] = mem[_7952]
                            s = 0
                            while s < _8256:
                                mem[s + _5944 + idx + 550] = mem[s + _7952 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8256) > _8256:
                                mem[_8256 + _5944 + idx + 550] = 0
                            revert with 0, 32, mem[_5944 + idx + 518 len ceil32(_8256) + 32]
                        mem[448] = 0
                        mem[64] = 480
                        s = 0
                        while s < idx:
                            mem[s + 512] = mem[s + 352]
                            s = s + 32
                            continue 
                        mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _5941 = mem[448]
                            s = 0
                            while s < mem[448]:
                                mem[s + idx + 514] = mem[s + 480]
                                s = s + 32
                                continue 
                            if ceil32(mem[448]) <= mem[448]:
                                _7945 = mem[64]
                                mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                                mem[64] = _5941 + idx + 514
                                mem[_5941 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5941 + idx + 518] = 32
                                _8249 = mem[_7945]
                                mem[_5941 + idx + 550] = mem[_7945]
                                s = 0
                                while s < _8249:
                                    mem[s + _5941 + idx + 582] = mem[s + _7945 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8249) > _8249:
                                    mem[_8249 + _5941 + idx + 582] = 0
                                revert with 0, 32, mem[_5941 + idx + 550 len ceil32(_8249) + 32]
                            mem[mem[448] + idx + 514] = 0
                            _7946 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _5941 + idx + 514
                            mem[_5941 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5941 + idx + 518] = 32
                            _8250 = mem[_7946]
                            mem[_5941 + idx + 550] = mem[_7946]
                            s = 0
                            while s < _8250:
                                mem[s + _5941 + idx + 582] = mem[s + _7946 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8250) > _8250:
                                mem[_8250 + _5941 + idx + 582] = 0
                            revert with 0, 32, mem[_5941 + idx + 550 len ceil32(_8250) + 32]
                        _5942 = mem[448]
                        s = 0
                        while s < mem[448]:
                            mem[s + idx + 514] = mem[s + 480]
                            s = s + 32
                            continue 
                        if ceil32(mem[448]) <= mem[448]:
                            _7947 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _5942 + idx + 514
                            mem[_5942 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5942 + idx + 518] = 32
                            _8251 = mem[_7947]
                            mem[_5942 + idx + 550] = mem[_7947]
                            s = 0
                            while s < _8251:
                                mem[s + _5942 + idx + 582] = mem[s + _7947 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8251) > _8251:
                                mem[_8251 + _5942 + idx + 582] = 0
                            revert with 0, 32, mem[_5942 + idx + 550 len ceil32(_8251) + 32]
                        mem[mem[448] + idx + 514] = 0
                        _7948 = mem[64]
                        mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                        mem[64] = _5942 + idx + 514
                        mem[_5942 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5942 + idx + 518] = 32
                        _8252 = mem[_7948]
                        mem[_5942 + idx + 550] = mem[_7948]
                        s = 0
                        while s < _8252:
                            mem[s + _5942 + idx + 582] = mem[s + _7948 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8252) > _8252:
                            mem[_8252 + _5942 + idx + 582] = 0
                        revert with 0, 32, mem[_5942 + idx + 550 len ceil32(_8252) + 32]
                    mem[384] = 0
                    mem[448] = 'Not enough stake to propose'
                    mem[416] = 32
                    mem[64] = 480
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 447]):
                            idx = idx - 1
                            continue 
                        mem[416] = idx
                        s = 0
                        while s < 0:
                            mem[s + 512] = mem[s + 416]
                            s = s + 32
                            continue 
                        mem[512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 514] = mem[s + 448]
                            s = s + 32
                            continue 
                        mem[480] = idx + 2
                        mem[64] = idx + 514
                        mem[idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 518] = 32
                        mem[idx + 550] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 582] = mem[s + 512]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 584] = 0
                        revert with 0, 32, idx + 2, mem[idx + 582 len floor32(idx + 33)]
                    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
                if 10^18 * fluidUntil[address(msg.sender)].field_256 / totalSupply <= 5 * 10^15:
                    mem[352] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[320] = 32
                    mem[64] = 384
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 351]):
                            idx = idx - 1
                            continue 
                        mem[320] = idx
                        mem[416] = 'Not enough stake to propose'
                        mem[384] = 32
                        mem[64] = 448
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 415]):
                                s = s - 1
                                continue 
                            mem[384] = s
                            s = 0
                            while s < idx:
                                mem[s + 480] = mem[s + 352]
                                s = s + 32
                                continue 
                            mem[idx + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _5935 = mem[384]
                                s = 0
                                while s < mem[384]:
                                    mem[s + idx + 482] = mem[s + 416]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[384]) <= mem[384]:
                                    _7933 = mem[64]
                                    mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                    mem[64] = _5935 + idx + 482
                                    mem[_5935 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5935 + idx + 486] = 32
                                    _8237 = mem[_7933]
                                    mem[_5935 + idx + 518] = mem[_7933]
                                    s = 0
                                    while s < _8237:
                                        mem[s + _5935 + idx + 550] = mem[s + _7933 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_8237) > _8237:
                                        mem[_8237 + _5935 + idx + 550] = 0
                                    revert with 0, 32, mem[_5935 + idx + 518 len ceil32(_8237) + 32]
                                mem[mem[384] + idx + 482] = 0
                                _7934 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _5935 + idx + 482
                                mem[_5935 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5935 + idx + 486] = 32
                                _8238 = mem[_7934]
                                mem[_5935 + idx + 518] = mem[_7934]
                                s = 0
                                while s < _8238:
                                    mem[s + _5935 + idx + 550] = mem[s + _7934 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8238) > _8238:
                                    mem[_8238 + _5935 + idx + 550] = 0
                                revert with 0, 32, mem[_5935 + idx + 518 len ceil32(_8238) + 32]
                            _5936 = mem[384]
                            s = 0
                            while s < mem[384]:
                                mem[s + idx + 482] = mem[s + 416]
                                s = s + 32
                                continue 
                            if ceil32(mem[384]) <= mem[384]:
                                _7935 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _5936 + idx + 482
                                mem[_5936 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5936 + idx + 486] = 32
                                _8239 = mem[_7935]
                                mem[_5936 + idx + 518] = mem[_7935]
                                s = 0
                                while s < _8239:
                                    mem[s + _5936 + idx + 550] = mem[s + _7935 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8239) > _8239:
                                    mem[_8239 + _5936 + idx + 550] = 0
                                revert with 0, 32, mem[_5936 + idx + 518 len ceil32(_8239) + 32]
                            mem[mem[384] + idx + 482] = 0
                            _7936 = mem[64]
                            mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                            mem[64] = _5936 + idx + 482
                            mem[_5936 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5936 + idx + 486] = 32
                            _8240 = mem[_7936]
                            mem[_5936 + idx + 518] = mem[_7936]
                            s = 0
                            while s < _8240:
                                mem[s + _5936 + idx + 550] = mem[s + _7936 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8240) > _8240:
                                mem[_8240 + _5936 + idx + 550] = 0
                            revert with 0, 32, mem[_5936 + idx + 518 len ceil32(_8240) + 32]
                        mem[448] = 0
                        mem[64] = 480
                        s = 0
                        while s < idx:
                            mem[s + 512] = mem[s + 352]
                            s = s + 32
                            continue 
                        mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _5933 = mem[448]
                            s = 0
                            while s < mem[448]:
                                mem[s + idx + 514] = mem[s + 480]
                                s = s + 32
                                continue 
                            if ceil32(mem[448]) <= mem[448]:
                                _7929 = mem[64]
                                mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                                mem[64] = _5933 + idx + 514
                                mem[_5933 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5933 + idx + 518] = 32
                                _8233 = mem[_7929]
                                mem[_5933 + idx + 550] = mem[_7929]
                                s = 0
                                while s < _8233:
                                    mem[s + _5933 + idx + 582] = mem[s + _7929 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8233) > _8233:
                                    mem[_8233 + _5933 + idx + 582] = 0
                                revert with 0, 32, mem[_5933 + idx + 550 len ceil32(_8233) + 32]
                            mem[mem[448] + idx + 514] = 0
                            _7930 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _5933 + idx + 514
                            mem[_5933 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5933 + idx + 518] = 32
                            _8234 = mem[_7930]
                            mem[_5933 + idx + 550] = mem[_7930]
                            s = 0
                            while s < _8234:
                                mem[s + _5933 + idx + 582] = mem[s + _7930 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8234) > _8234:
                                mem[_8234 + _5933 + idx + 582] = 0
                            revert with 0, 32, mem[_5933 + idx + 550 len ceil32(_8234) + 32]
                        _5934 = mem[448]
                        s = 0
                        while s < mem[448]:
                            mem[s + idx + 514] = mem[s + 480]
                            s = s + 32
                            continue 
                        if ceil32(mem[448]) <= mem[448]:
                            _7931 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _5934 + idx + 514
                            mem[_5934 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5934 + idx + 518] = 32
                            _8235 = mem[_7931]
                            mem[_5934 + idx + 550] = mem[_7931]
                            s = 0
                            while s < _8235:
                                mem[s + _5934 + idx + 582] = mem[s + _7931 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8235) > _8235:
                                mem[_8235 + _5934 + idx + 582] = 0
                            revert with 0, 32, mem[_5934 + idx + 550 len ceil32(_8235) + 32]
                        mem[mem[448] + idx + 514] = 0
                        _7932 = mem[64]
                        mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                        mem[64] = _5934 + idx + 514
                        mem[_5934 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5934 + idx + 518] = 32
                        _8236 = mem[_7932]
                        mem[_5934 + idx + 550] = mem[_7932]
                        s = 0
                        while s < _8236:
                            mem[s + _5934 + idx + 582] = mem[s + _7932 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8236) > _8236:
                            mem[_8236 + _5934 + idx + 582] = 0
                        revert with 0, 32, mem[_5934 + idx + 550 len ceil32(_8236) + 32]
                    mem[384] = 0
                    mem[448] = 'Not enough stake to propose'
                    mem[416] = 32
                    mem[64] = 480
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 447]):
                            idx = idx - 1
                            continue 
                        mem[416] = idx
                        s = 0
                        while s < 0:
                            mem[s + 512] = mem[s + 416]
                            s = s + 32
                            continue 
                        mem[512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 514] = mem[s + 448]
                            s = s + 32
                            continue 
                        mem[480] = idx + 2
                        mem[64] = idx + 514
                        mem[idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 518] = 32
                        mem[idx + 550] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 582] = mem[s + 512]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 584] = 0
                        revert with 0, 32, idx + 2, mem[idx + 582 len floor32(idx + 33)]
                    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
                periodFor[address(arg1)].field_0 = epoch
                periodFor[address(arg1)].field_256 = 48
                emit Proposal(48, arg1, msg.sender, epoch);
                mem[0] = arg1
                mem[32] = 15
                if periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0 < periodFor[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if epoch >= periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0:
                    mem[352] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[320] = 32
                    mem[64] = 384
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 351]):
                            idx = idx - 1
                            continue 
                        mem[320] = idx
                        mem[416] = 0x456e646564000000000000000000000000000000000000000000000000000000
                        mem[384] = 32
                        mem[64] = 448
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 415]):
                                s = s - 1
                                continue 
                            mem[384] = s
                            s = 0
                            while s < idx:
                                mem[s + 480] = mem[s + 352]
                                s = s + 32
                                continue 
                            mem[idx + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _5927 = mem[384]
                                s = 0
                                while s < mem[384]:
                                    mem[s + idx + 482] = mem[s + 416]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[384]) <= mem[384]:
                                    _7917 = mem[64]
                                    mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                    mem[64] = _5927 + idx + 482
                                    mem[_5927 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5927 + idx + 486] = 32
                                    _8221 = mem[_7917]
                                    mem[_5927 + idx + 518] = mem[_7917]
                                    s = 0
                                    while s < _8221:
                                        mem[s + _5927 + idx + 550] = mem[s + _7917 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_8221) > _8221:
                                        mem[_8221 + _5927 + idx + 550] = 0
                                    revert with 0, 32, mem[_5927 + idx + 518 len ceil32(_8221) + 32]
                                mem[mem[384] + idx + 482] = 0
                                _7918 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _5927 + idx + 482
                                mem[_5927 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5927 + idx + 486] = 32
                                _8222 = mem[_7918]
                                mem[_5927 + idx + 518] = mem[_7918]
                                s = 0
                                while s < _8222:
                                    mem[s + _5927 + idx + 550] = mem[s + _7918 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8222) > _8222:
                                    mem[_8222 + _5927 + idx + 550] = 0
                                revert with 0, 32, mem[_5927 + idx + 518 len ceil32(_8222) + 32]
                            _5928 = mem[384]
                            s = 0
                            while s < mem[384]:
                                mem[s + idx + 482] = mem[s + 416]
                                s = s + 32
                                continue 
                            if ceil32(mem[384]) <= mem[384]:
                                _7919 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _5928 + idx + 482
                                mem[_5928 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5928 + idx + 486] = 32
                                _8223 = mem[_7919]
                                mem[_5928 + idx + 518] = mem[_7919]
                                s = 0
                                while s < _8223:
                                    mem[s + _5928 + idx + 550] = mem[s + _7919 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8223) > _8223:
                                    mem[_8223 + _5928 + idx + 550] = 0
                                revert with 0, 32, mem[_5928 + idx + 518 len ceil32(_8223) + 32]
                            mem[mem[384] + idx + 482] = 0
                            _7920 = mem[64]
                            mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                            mem[64] = _5928 + idx + 482
                            mem[_5928 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5928 + idx + 486] = 32
                            _8224 = mem[_7920]
                            mem[_5928 + idx + 518] = mem[_7920]
                            s = 0
                            while s < _8224:
                                mem[s + _5928 + idx + 550] = mem[s + _7920 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8224) > _8224:
                                mem[_8224 + _5928 + idx + 550] = 0
                            revert with 0, 32, mem[_5928 + idx + 518 len ceil32(_8224) + 32]
                        mem[448] = 0
                        mem[64] = 480
                        s = 0
                        while s < idx:
                            mem[s + 512] = mem[s + 352]
                            s = s + 32
                            continue 
                        mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _5925 = mem[448]
                            s = 0
                            while s < mem[448]:
                                mem[s + idx + 514] = mem[s + 480]
                                s = s + 32
                                continue 
                            if ceil32(mem[448]) <= mem[448]:
                                _7913 = mem[64]
                                mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                                mem[64] = _5925 + idx + 514
                                mem[_5925 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5925 + idx + 518] = 32
                                _8217 = mem[_7913]
                                mem[_5925 + idx + 550] = mem[_7913]
                                s = 0
                                while s < _8217:
                                    mem[s + _5925 + idx + 582] = mem[s + _7913 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8217) > _8217:
                                    mem[_8217 + _5925 + idx + 582] = 0
                                revert with 0, 32, mem[_5925 + idx + 550 len ceil32(_8217) + 32]
                            mem[mem[448] + idx + 514] = 0
                            _7914 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _5925 + idx + 514
                            mem[_5925 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5925 + idx + 518] = 32
                            _8218 = mem[_7914]
                            mem[_5925 + idx + 550] = mem[_7914]
                            s = 0
                            while s < _8218:
                                mem[s + _5925 + idx + 582] = mem[s + _7914 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8218) > _8218:
                                mem[_8218 + _5925 + idx + 582] = 0
                            revert with 0, 32, mem[_5925 + idx + 550 len ceil32(_8218) + 32]
                        _5926 = mem[448]
                        s = 0
                        while s < mem[448]:
                            mem[s + idx + 514] = mem[s + 480]
                            s = s + 32
                            continue 
                        if ceil32(mem[448]) <= mem[448]:
                            _7915 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _5926 + idx + 514
                            mem[_5926 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5926 + idx + 518] = 32
                            _8219 = mem[_7915]
                            mem[_5926 + idx + 550] = mem[_7915]
                            s = 0
                            while s < _8219:
                                mem[s + _5926 + idx + 582] = mem[s + _7915 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8219) > _8219:
                                mem[_8219 + _5926 + idx + 582] = 0
                            revert with 0, 32, mem[_5926 + idx + 550 len ceil32(_8219) + 32]
                        mem[mem[448] + idx + 514] = 0
                        _7916 = mem[64]
                        mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                        mem[64] = _5926 + idx + 514
                        mem[_5926 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5926 + idx + 518] = 32
                        _8220 = mem[_7916]
                        mem[_5926 + idx + 550] = mem[_7916]
                        s = 0
                        while s < _8220:
                            mem[s + _5926 + idx + 582] = mem[s + _7916 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8220) > _8220:
                            mem[_8220 + _5926 + idx + 582] = 0
                        revert with 0, 32, mem[_5926 + idx + 550 len ceil32(_8220) + 32]
                    mem[384] = 0
                    mem[448] = 0x456e646564000000000000000000000000000000000000000000000000000000
                    mem[416] = 32
                    mem[64] = 480
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 447]):
                            idx = idx - 1
                            continue 
                        mem[416] = idx
                        s = 0
                        while s < 0:
                            mem[s + 512] = mem[s + 416]
                            s = s + 32
                            continue 
                        mem[512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 514] = mem[s + 448]
                            s = s + 32
                            continue 
                        mem[480] = idx + 2
                        mem[64] = idx + 514
                        mem[idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 518] = 32
                        mem[idx + 550] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 582] = mem[s + 512]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 584] = 0
                        revert with 0, 32, idx + 2, mem[idx + 582 len floor32(idx + 33)]
                    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
    ('lt', ('stor', ('name', 'epoch', 2)), ('add', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'periodFor', 15)))), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'periodFor', 15))))))
    require periodFor[address(arg1)][4][address(msg.sender)].field_0 <= 2
    require arg2 <= 2
    if arg2 != periodFor[address(arg1)][4][address(msg.sender)].field_0:
        require periodFor[address(arg1)][4][address(msg.sender)].field_0 <= 2
        if periodFor[address(arg1)][4][address(msg.sender)].field_0 == 2:
            if fluidUntil[address(msg.sender)].field_256 > periodFor[address(arg1)].field_768:
                revert with 0, 'Govern: Insufficient reject', 0
            periodFor[address(arg1)].field_768 -= fluidUntil[address(msg.sender)].field_256
        require periodFor[address(arg1)][4][address(msg.sender)].field_0 <= 2
        if periodFor[address(arg1)][4][address(msg.sender)].field_0 == 1:
            if fluidUntil[address(msg.sender)].field_256 > periodFor[address(arg1)].field_512:
                revert with 0, 'Govern: Insufficient approve', 0
            periodFor[address(arg1)].field_512 -= fluidUntil[address(msg.sender)].field_256
        require arg2 <= 2
        if arg2 == 2:
            if fluidUntil[address(msg.sender)].field_256 + periodFor[address(arg1)].field_768 < periodFor[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            periodFor[address(arg1)].field_768 += fluidUntil[address(msg.sender)].field_256
        require arg2 <= 2
        if arg2 == 1:
            if fluidUntil[address(msg.sender)].field_256 + periodFor[address(arg1)].field_512 < periodFor[address(arg1)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            periodFor[address(arg1)].field_512 += fluidUntil[address(msg.sender)].field_256
        require arg2 <= 2
        periodFor[address(arg1)][4][address(msg.sender)].field_0 = arg2 or Mask(248, 8, periodFor[address(arg1)][4][address(msg.sender)].field_0)
        if periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0 < periodFor[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        if periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0 > fluidUntil[address(msg.sender)].field_768:
            fluidUntil[address(msg.sender)].field_768 = periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0
        require arg2 < 3
        emit Vote(arg2, fluidUntil[address(msg.sender)].field_256, msg.sender, arg1);
}



}
