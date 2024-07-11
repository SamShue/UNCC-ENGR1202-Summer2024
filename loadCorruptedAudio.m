function [y,Fs] = loadCorruptedAudio(filename)

    [y, Fs] = audioread(filename);
    y = y(:,1); % use only 1 channel
    
    % Get Frequency domain
    Y = fft(y);
    pY = Y(1:length(Y)/2);  % Get only positive frequencies
    freq_step_size = Fs/length(y);
    frequencies = (0:1:((length(Y)/2) - 1))' .* freq_step_size;
    
    % Decrease volume
    Y = Y*0.5;
    
    % Add noise in frequency domain
    lower = uint32(ceil(10000/freq_step_size));
    upper = uint32(floor(24000/freq_step_size));
    noise = 5000*randn(size(lower:upper))';
    Y(lower:upper) = Y(lower:upper) + noise;
    Y((end - upper):(end - lower)) = Y(end - upper:end - lower) + noise;
    
    % Convert back to time domain
    y = real(ifft(Y));
end

