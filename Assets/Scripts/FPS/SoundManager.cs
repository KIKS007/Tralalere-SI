using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DarkTonic.MasterAudio;

public class SoundManager : MonoBehaviour {

	[SoundGroupAttribute] public string HackingSound;
	public float HackingSoundVolume = 1f;
	[SoundGroupAttribute] public string EnterSound;
	public float EnterSoundVolume = 1f;
	[SoundGroupAttribute] public string JumpSound;
	public float JumpSoundVolume = 1f;
	[SoundGroupAttribute] public string LandingSound;
	public float LandingSoundVolume = 1f;
	[SoundGroupAttribute] public string WalkSound;
	public float WalkSoundVolume = 1f;
	[SoundGroupAttribute] public string RunSound;
	public float RunSoundVolume = 1f;

	public HackingCanvas _hackingCanvas;

	void Start () {
		_hackingCanvas.OnHackBegin += PlayHackSound;
		_hackingCanvas.OnHackEnd += StopHackSound;
		_hackingCanvas.OnCloseEditMode += PlayEnterSound;
	}

	public void PlayHackSound () {
		MasterAudio.PlaySound3DFollowTransformAndForget (HackingSound, transform, HackingSoundVolume);
	}

	public void StopHackSound () {
		MasterAudio.StopAllOfSound(HackingSound);
	}

	public void PlayEnterSound () {
		MasterAudio.PlaySound3DFollowTransformAndForget (EnterSound, transform, EnterSoundVolume);
	}

	public void PlayJumpSound () {
		MasterAudio.PlaySound3DFollowTransformAndForget (JumpSound, transform, JumpSoundVolume);
	}

	public void PlayLandingSound () {
		MasterAudio.PlaySound3DFollowTransformAndForget (LandingSound, transform, LandingSoundVolume);
	}

	public void PlayWalkSound () {
		MasterAudio.PlaySound3DFollowTransformAndForget (WalkSound, transform, WalkSoundVolume);
	}

	public void StopWalkSound () {
		MasterAudio.StopAllOfSound(WalkSound);
	}

	public void PlayRunSound () {
		MasterAudio.PlaySound3DFollowTransformAndForget (RunSound, transform, RunSoundVolume);
	}

	public void StopRunSound () {
		MasterAudio.StopAllOfSound(RunSound);
	}
}
